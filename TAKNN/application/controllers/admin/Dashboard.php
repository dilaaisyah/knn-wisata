<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	var $username;

	public function __construct(){
		parent::__construct();
		$this->load->model('get_model');

		if($this->session->userdata('loggedin')){
     		$session_data = $this->session->userdata('loggedin');
		    if($session_data['role']=='administrator'){
			    $this->username = $session_data['username'];
			}else {redirect('/', 'refresh');}
   		}else{
     		//If no session, redirect to login page
     		redirect('/', 'refresh');
   		}

		$this->load->library('grocery_CRUD');
	}

	private function render_view($view = NULL, $output = array()){		
    	$data = array('username' => $this->username);
    	$output = (object) array_merge((array)$output, $data);

    	$this->load->view('admin/templates/header', $output);
    	$this->load->view('admin/'.$view, $output);
        $this->load->view('admin/templates/footer');
    }

	public function index(){
		$output['user'] = $this->get_model->count_users(); 
		$output['survei'] = $this->get_model->count_survei(); 
		$output['wisata'] = $this->get_model->count_wisata(); 
		$output['cart_survei'] = $this->get_model->cart_survei(); 
		$this->render_view('dashboard', (object)array('output' => $output , 'js_files' => array() , 'css_files' => array(), 'index' => '1'));		
	}

	public function slide(){
		$crud = new grocery_CRUD();

		$crud->set_table('slides');
		$crud->set_subject('Slides');
		$crud->required_fields('Title');
		$crud->columns('title', 'active');

		$crud->set_field_upload('image_url','uploads/slides');
		$crud->change_field_type('active', 'true_false');

		$output = $crud->render();
		$data = array('title' => 'Slides', 'subtitle' => '<i class="fa fa-picture-o"></i> Slides', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function blog(){
		$crud = new grocery_CRUD();

		$crud->set_table('blogs');
		$crud->set_subject('Blogs');		
		$crud->set_relation('category','categories','title');
		$crud->display_as('id','Category');
		$crud->required_fields('title', 'content');
		$crud->columns('title', 'content', 'category', 'featured');

		$crud->set_field_upload('image','uploads/blogs');
		$crud->change_field_type('featured', 'true_false');

		$output = $crud->render();
		$data = array('title' => 'Blogs', 'subtitle' => '<i class="fa fa-list-alt"></i> Blogs', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function category(){
		$crud = new grocery_CRUD();

		$crud->set_table('categories');
		$crud->set_subject('Blog Category');
		$crud->required_fields('title');
		$crud->columns('title', 'description');

		$output = $crud->render();
		$data = array('title' => 'Blogs Category', 'subtitle' => '<i class="fa fa-list-alt"></i> Blogs Category', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function map(){
		$crud = new grocery_CRUD();

		$crud->set_table('maps');
		$crud->set_subject('Maps');
		$crud->required_fields('title', 'lat', 'long');
		$crud->columns('title', 'lat', 'long');

		$output = $crud->render();
		$data = array('title' => 'Maps', 'subtitle' => '<i class="fa fa-map-marker"></i> Maps', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function question(){
		$crud = new grocery_CRUD();

		$crud->set_table('questions');
		$crud->set_subject('Questions');
		$crud->required_fields('choice1', 'choice2');
		$crud->columns('title', 'choice1', 'choice2');

		$crud->unset_texteditor('choice1', 'full_text');
		$crud->unset_texteditor('choice2', 'full_text');

		$output = $crud->render();
		$data = array('title' => 'Questions', 'subtitle' => '<i class="fa fa-question"></i> Questions', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function wisata(){
		$crud = new grocery_CRUD();

		$crud->set_table('wisata');
		$crud->set_subject('Wisata');
		$crud->required_fields('wisata', 'price');
		$crud->columns('wisata', 'type', 'price');

		$crud->field_type('type','multiselect',
            			   array( '1' => 'Wisata Alam', '2' => 'Wisata Bahari', '3' => 'Wisata Sejarah', '4' => 'Wisata Reliji', 
            			   		  '5' => 'Wisata Budaya', '6' => 'Wisata Pendidikan', '7' => 'Wisata Belanja', '8' => 'Wisata Kuliner', 
            			   		  '9' => 'Wisata Keluarga', '10' => 'Wisata Malam', '11' => 'Agrowisata' ));
		$crud->field_type('price','dropdown',
            			   array( '1' => '0 - 10.000', '2' => '10.000 - 50.000', '3' => '50.000 - 100.000', '4' => '> 100.000' ));

		$output = $crud->render();
		$data = array('title' => 'Wisata', 'subtitle' => '<i class="fa fa-plane"></i> Wisata', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function survei(){
		$crud = new grocery_CRUD();

		$crud->set_table('survei');
		$crud->set_subject('Survei');
		$crud->set_relation('user','users','{firstname} {lastname}');
		$crud->columns('date', 'user', 'I', 'S', 'T', 'J', 'E', 'N', 'F', 'P', 'result');

		$crud->callback_column('result',array($this,'_callback_survei_result'));

		$crud->unset_add();
        $crud->unset_edit();
        $crud->unset_delete();

		$output = $crud->render();
		$data = array('title' => 'Survei', 'subtitle' => '<i class="fa fa-file-text"></i> Survei', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function _callback_survei_result($value, $row){
		$i = $row->I; $e = $row->E; 
        $s = $row->S; $n = $row->N; 
        $t = $row->T; $f = $row->F; 
        $j = $row->J; $p = $row->P; 

        $sifat = '';
        if($i >= $e) $sifat .='I'; else $sifat .= 'E';
        if($s >= $n) $sifat .='S'; else $sifat .= 'N';
        if($t >= $f) $sifat .='T'; else $sifat .= 'F';
        if($j >= $p) $sifat .='J'; else $sifat .= 'P';

	   	return $sifat;
	}

	public function options(){
		$crud = new grocery_CRUD();

		$crud->set_table('options');
		$crud->set_subject('Options');
		$crud->columns('logo', 'contact_detail', 'about');

		$crud->set_field_upload('logo','uploads/others');

		$crud->unset_add();
        $crud->unset_delete();

		$output = $crud->render();
		$data = array('title' => 'Options', 'subtitle' => '<i class="fa fa-cog"></i> Options', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	public function user(){
		$crud = new grocery_CRUD();

		$crud->set_table('users');
		$crud->set_subject('Users');
		$crud->required_fields('username', 'email', 'role', 'password');
		$crud->columns('username', 'firstname', 'lastname', 'email', 'role');

		$crud->field_type('password', 'password');
		$crud->field_type('role', 'dropdown', array('administrator'=>'administrator', 'subscriber'=>'subscriber'));
 
	    $crud->callback_before_insert(array($this,'encrypt_password_callback'));
	    $crud->callback_before_update(array($this,'encrypt_password_callback'));

		$output = $crud->render();
		$data = array('title' => 'User', 'subtitle' => '<i class="fa fa-users"></i> User', 'index' => '0');
		$output = (object) array_merge((array)$output, $data);

		$this->render_view('dashboard_view', $output);
	}

	function encrypt_password_callback($post_array){
		$post_array['password'] = md5($post_array['password']);
	    return $post_array;
	}

}