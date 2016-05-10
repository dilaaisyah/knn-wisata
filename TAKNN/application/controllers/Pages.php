<?php
	class Pages extends CI_Controller {
        var $data, $userId;

		public function __construct() {
            parent::__construct();
            $this->load->model('get_model');
            $this->load->helper(array('form'));

            if($this->session->userdata('loggedin')){
                $session_data = $this->session->userdata('loggedin');
                $this->userId = $session_data['id'];
                $survei = $this->get_model->get_survei_date($this->userId);
                $this->data = array('user_id' => $this->userId, 'survei' => $survei );
            }

            $this->data['options'] = $this->get_model->get_options();
        }

        private function render_view($view = NULL, $data){
            if($view == 'map'){
                $this->data['add_js'] = $data['map']['js'];
            }else{
                $this->data['add_js'] = '';
            }
            
        	$this->load->view('templates/header', $this->data);
        	$this->load->view('pages/'.$view, $this->data);
	        $this->load->view('templates/footer');
        }

        public function index(){
        	$this->data['title'] = 'Homepage';
        	$this->data['slides'] = $this->get_model->get_slides();
            $this->data['blogs'] = $this->get_model->get_featured_blog();
        	$this->render_view('home', $this->data);
        }

        public function map(){
            $this->load->library('googlemaps');

            $config = array();
            $config['center'] = '-7.6577245, 112.8927697';
            $config['zoom'] = '8';
            $this->googlemaps->initialize($config);

            $maps = $this->get_model->get_maps();
            foreach ($maps as $map) {
                $marker = array();
                $marker['infowindow_content'] = $map['title'];
                $marker['position'] = "$map[lat], $map[long]";
                $this->googlemaps->add_marker($marker);
            }

            $this->data['title'] = 'Maps';
        	$this->data['map'] = $this->googlemaps->create_map();
            $this->render_view('map', $this->data);
        }

        public function gallery(){
            $this->data['gallery'] = $this->get_model->get_gallery();
            $this->data['title'] = 'Gallery';
            $this->render_view('gallery', $this->data);
        }

        public function blogs() {
            $page = $this->uri->segment(3, 1);
            $limit = 10;
            $this->data['blogs'] = $this->get_model->get_blog($page, $limit);
            $this->data['pagination'] = array(
                                    'count' => $this->get_model->count_blog(),
                                    'page' => $page,
                                    'limit' => $limit
                                  );
            $this->data['sidebar'] = $this->get_model->get_sidebar_blog();
            $this->data['title'] = 'Blog';
            $this->render_view('blog', $this->data);
        }

        public function blog($id='') {
            $id = $this->uri->segment(3, '');
            if($id != ''){
                $this->data['blog'] = $this->get_model->get_detail_blog($id);
                $this->data['sidebar'] = $this->get_model->get_sidebar_blog();
                $this->data['title'] = 'Blog Detail'.' - '.$this->data['blog']['title'];
                $this->render_view('blog-detail', $this->data);
            }else{
                redirect('pages/blogs/', 'refresh');
            }
        }

        public function question() {
        	$this->load->helper('form');
		    $this->load->library('form_validation');

            $this->data['questions'] = $this->get_model->get_questions();
            $this->data['title'] = 'Question';
            $this->render_view('question', $this->data);
        	// $this->render_view('question_batch', $this->data);
        }

        public function submit(){
            // get choice
            $get_select = $this->input->post('selectradio');

            // batch selection
            // $get_select = $this->input->post('all_selection');
            // $explode = explode(' ', $get_select); 
            // $i=1; $get_select = array();
            // foreach ($explode as $value) {
            //     $get_select[$i] = $value;
            //     $i++;
            // }

            //calculate mbti
            $mbti_result = $this->calculate_mbti($get_select);

            // insert survei data
            $date = date('Y-m-d H:i:s');
            $survei = array(
                                'date' => $date,
                                'user' => $this->userId
                            );

            $survei = array_merge($survei, $mbti_result);

            $knn = $this->calculate_knn($mbti_result);
            
            // insert survei result
            $result = $this->get_model->insert_survei($survei);

            // get first key on knn result
            reset($knn);
            $first_key = key($knn);
            $recomen = $this->get_recommendation($first_key, $result);

            //insert recomendation result
            $result_recomen = $this->get_model->insert_recomendation($recomen);

            if($result && $result_recomen) redirect('pages/recommendation', 'refresh');
            else echo 'error';
        }

        private function calculate_mbti($selection){
            // mbti rules
            $mbti = array();
            $mbti['I'] = array( '2'=>1, '5'=>2, '7'=>2, '10'=>1, '11'=>1, 
                                '15'=>1, '20'=>1, '28'=>2, '29'=>1, '31'=>1, 
                                '35'=>2, '38'=>1, '45'=>1, '52'=>2, '60'=>2 );
            $mbti['S'] = array( '6'=>2, '8'=>1, '13'=>1, '16'=>1, '18'=>2, 
                                '22'=>2, '25'=>1, '27'=>1, '34'=>1, '36'=>1, 
                                '41'=>1, '43'=>1, '46'=>1, '51'=>1, '53'=>1 );
            $mbti['T'] = array( '4'=>1, '8'=>2, '14'=>1, '17'=>1, '23'=>1, 
                                '30'=>1, '32'=>2, '37'=>1, '39'=>2, '42'=>1, 
                                '48'=>1, '49'=>2, '55'=>1, '57'=>1, '58'=>1 );
            $mbti['J'] = array( '1'=>2, '3'=>1, '12'=>2, '19'=>1, '21'=>2, 
                                '24'=>1, '26'=>2, '33'=>2, '40'=>2, '44'=>2, 
                                '47'=>1, '50'=>2, '54'=>1, '56'=>1, '59'=>2 );
            $mbti['E'] = array( '2'=>2,'5'=>1,'7'=>1,'10'=>2,'11'=>2,
                                '15'=>2,'20'=>2,'28'=>1,'29'=>2,'31'=>2,
                                '35'=>1,'38'=>2,'45'=>2,'52'=>1,'60'=>1 );
            $mbti['N'] = array( '6'=>1,'8'=>2,'13'=>2,'16'=>2,'18'=>1,
                                '22'=>1,'25'=>2,'27'=>2,'34'=>2,'36'=>2,
                                '41'=>2,'43'=>2,'46'=>2,'51'=>2,'53'=>2 );
            $mbti['F'] = array( '4'=>2,'9'=>1,'14'=>2,'17'=>2,'23'=>2,
                                '30'=>2,'32'=>1,'37'=>2,'39'=>1,'42'=>2,
                                '48'=>2,'49'=>1,'55'=>2,'57'=>2,'58'=>2 );
            $mbti['P'] = array( '1'=>1,'3'=>2,'12'=>1,'19'=>2,'21'=>1,
                                '24'=>2,'26'=>1,'33'=>1,'40'=>1,'44'=>1,
                                '47'=>2,'50'=>1,'54'=>2,'56'=>2,'59'=>1);

            // mbti calculation
            $prosentase_result = array();
            foreach ($mbti as $dimensi => $mbti_result) {
                $result = 0; $prosentase = 0;

                foreach ($mbti_result as $key => $value) {
                    $choice = str_replace('choice', '', $selection[$key]);
                    if($value == $choice ) $result++;
                }
                $prosentase = round(($result/15)*100);
                $prosentase_result[$dimensi] = $prosentase;
            }

            return $prosentase_result;
        }

        private function calculate_knn($mbti){
            // get all survei
            $survei = $this->get_model->get_all_survei();
            $dimensi = array('I', 'S', 'T', 'J', 'E', 'N', 'S', 'P');
            
            $euclidean_result = array();
            if(count($survei)) {
                foreach ($survei as $survei) {
                    $total = 0; 
                    for ($i=0; $i < 8; $i++) { 
                        $key = $dimensi[$i];
                        $total += pow(($survei[$key] - $mbti[$key]), 2); 
                    }
                    $euclidean = round(sqrt($total), 2);
                    $id = $survei['id'];
                    $euclidean_result[$id] = $euclidean;
                }

                // sort value from small to large
                asort($euclidean_result);
            }

            return $euclidean_result;
        }

        private function get_recommendation($knn_id, $survei_id){
            // get recomendation by knn result
            $recommendation = $this->get_model->get_recomendation($knn_id);
            foreach ($recommendation as $key => $value) {
                $recomen_result[$key] = array(
                                            'survei' => $survei_id,
                                            'recommendation' => $value['id']
                                        );
            }

            return $recomen_result;
        }

        public function recommendation(){
            $this->data['title'] = 'Recommendation';
            $get_survei = $this->get_model->get_last_survei($this->userId);
            $recomen = $this->get_model->get_recomendation($get_survei->id);

            $this->data['result'] = $get_survei;
            $this->data['recomen'] = $recomen;

            $this->render_view('recommendation', $this->data);
        }

        public function plan($value=''){
            $this->data['title'] = 'My Plan';

            $value = $this->uri->segment(3, '');
            if($value=='submit'){
                $type = $this->input->post('type');
                $budget = $this->input->post('budget');
                $this->data['param_type'] = $type;
                $this->data['param_budget'] = $budget;
                
                if($budget == '') $budget = 0;
                if($budget >= 0 AND $budget <= 10000) $budget_option = '=1';
                if ($budget > 10000 AND $budget <= 50000) $budget_option = '<=2';
                if ($budget > 50000 AND $budget <= 100000) $budget_option = '<=3';
                if ($budget > 100000) $budget_option = '<=4';
                
                $this->data['search_result'] = $this->get_model->get_wisata($type, $budget_option);
            }

            $this->render_view('plan', $this->data);
        }

        public function login(){
            $this->load->helper('form');

            $this->data['title'] = 'Login';
            $this->render_view('login', $this->data);
        }

        public function verifylogin(){
            $this->load->library('form_validation');

            $this->form_validation->set_rules('username', 'Username', 'trim|required');
            $this->form_validation->set_rules('password', 'Password', 'trim|required|callback_check_database');

            if($this->form_validation->run() == false){
                $this->data['title'] = 'Login';
                $this->render_view('login', $this->data);
            }else{
                redirect('/', 'refresh');
           }
        }

        public function check_database($password){
            //Field validation succeeded.  Validate against database
            $username = $this->input->post('username');

            //query the database
            $result = $this->get_model->login($username, $password);

            if($result){
                $sess_array = array();
                foreach($result as $row){
                    $sess_array = array(
                        'id' => $row->id,
                        'username' => $row->username,
                        'role' => $row->role
                    );
                    $this->session->set_userdata('loggedin', $sess_array);
                }
                return TRUE;
            }else{
                $this->form_validation->set_message('check_database', 'Invalid username or password');
                return false;
            }
        }

        public function logout(){
           $this->session->unset_userdata('logged_in');
           session_destroy();
           redirect('pages/login', 'refresh');
        }



        public function register(){
            $this->load->helper('form');

            $this->data['title'] = 'Register';
            $this->render_view('register', $this->data);
        }

        public function verifyregister(){
            $this->load->library('form_validation');

            $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[3]|max_length[12]|is_unique[users.username]');
            $this->form_validation->set_rules('firstname', 'First Name', 'trim');
            $this->form_validation->set_rules('lastname', 'Last Name', 'trim');
            $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
            $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]');
            $this->form_validation->set_rules('confirm_pass', 'Confirmation Password', 'trim|required|matches[password]');

            if($this->form_validation->run() == false){
                $this->data['title'] = 'Register';
                $this->data['user'] = array(
                                    'username' => $this->input->post('username'),
                                    'firstname' => $this->input->post('firstname'),
                                    'lastname' => $this->input->post('lastname'),
                                    'email' => $this->input->post('email')
                                );
                $this->render_view('register', $this->data);
            }else{
                $username = $this->input->post('username');
                $password = md5($this->input->post('password'));
                $data = array(
                        'username' => $username,
                        'firstname' => $this->input->post('firstname'),
                        'lastname' => $this->input->post('lastname'),
                        'email' => $this->input->post('email'),
                        'create_date' => date('Y-m-d H:i:s'),
                        'password' => $password,
                        'role' => 'subscriber',
                );
                $result = $this->get_model->register($data);
                if($result){
                    $sess_array = array(
                        'id' => $result,
                        'username' => $username,
                        'role' => 'subscriber'
                    );
                    $this->session->set_userdata('loggedin', $sess_array);
                }
                redirect('/', 'refresh');
           }
        }
	}
?>