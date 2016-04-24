<?php
	class Pages extends CI_Controller {
        var $data;

		public function __construct() {
            parent::__construct();
            $this->load->model('get_model');
            $this->load->helper(array('form'));

            if($this->session->userdata('loggedin')){
                $session_data = $this->session->userdata('loggedin');
                $user_id = $session_data['id'];
                $survei = $this->get_model->get_survei_date($user_id);
                $this->data = array('user_id' => $user_id, 'survei' => $survei );
            }
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
            // $config['center'] = '-7.6196136, 111.3382043';
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
        }

        public function submit(){
            // insert survei data
            $date = getdate();
            $date = $date['year'].'-'.$date['mon'].'-'.$date['mday'].' '.$date['hours'].':'.$date['minutes'].':'.$date['seconds'];
            $session_data = $this->session->userdata('loggedin');
            $user_id = $session_data['id'];
            $survei_data = array(
                                'date' => $date,
                                'user' => $user_id
                            ); 
            $survei_result = $this->get_model->insert_survei($survei_data);

            // insert survei detail data
            $get_select = $this->input->post('selectradio');
            foreach ($get_select as $key => $value) {
                $data[] = array(
                                'survei' => $survei_result,
                                'question' => $key,
                                'choice' => str_replace('choice', '', $value)
                            );
            }
            $result = $this->get_model->insert_survei_detail($data);

            if($result) redirect('pages/recommendation', 'refresh');
            else echo 'error';
        }

        public function recommendation(){
            $this->data['title'] = 'Recommendation';
            $this->render_view('recommendation', $this->data);
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
                $data['title'] = 'Login';
                $this->render_view('login', $data);
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

            $data['title'] = 'Register';
            $this->render_view('register', $data);
        }

        public function verifyregister(){
            $this->load->library('form_validation');

            $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[5]|max_length[12]|is_unique[users.username]');
            $this->form_validation->set_rules('firstname', 'First Name', 'trim');
            $this->form_validation->set_rules('lastname', 'Last Name', 'trim');
            $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|is_unique[users.email]');
            $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]');
            $this->form_validation->set_rules('confirm_pass', 'Confirmation Password', 'trim|required|matches[password]');

            if($this->form_validation->run() == false){
                $data['title'] = 'Register';
                $data['user'] = array(
                                    'username' => $this->input->post('username'),
                                    'firstname' => $this->input->post('firstname'),
                                    'lastname' => $this->input->post('lastname'),
                                    'email' => $this->input->post('email')
                                );
                $this->render_view('register', $data);
            }else{
                $username = $this->input->post('username');
                $password = md5($this->input->post('password'));
                $data = array(
                        'username' => $username,
                        'firstname' => $this->input->post('firstname'),
                        'lastname' => $this->input->post('lastname'),
                        'email' => $this->input->post('email'),
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