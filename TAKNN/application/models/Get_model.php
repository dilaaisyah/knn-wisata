<?php
	class Get_model extends CI_Model {

        public function __construct() {
            $this->load->database();
        }

        public function get_questions() {	        
            $query = $this->db->get('questions');
            return $query->result_array();	        
		}

        public function get_slides() {          
            $query = $this->db->get_where('slides', array('active' => 1));
            return $query->result_array();          
        }

        public function get_featured_blog() {  
            $this->db->select('blogs.*, categories.title as category');
            $this->db->from('blogs');
            $this->db->join('categories', 'categories.id = blogs.category');
            $this->db->where('featured', 1); 
            $this->db->where('publish', 1); 
            $query = $this->db->get();
            return $query->result_array();          
        }

        public function get_gallery() {          
            $query = $this->db->get_where('slides', array('active' => '1'));
            return $query->result_array();        
        }

		public function get_blog($page, $limit) {
            $index = ($page-1)*$limit;  
                     
            $this->db->select('blogs.*, categories.title as category');
            $this->db->from('blogs');
            $this->db->join('categories', 'categories.id = blogs.category');
            $this->db->where('publish', 1); 
            $this->db->limit($limit, $index);
            $query = $this->db->get();
            return $query->result_array();        
        }

        public function count_blog() {          
            $this->db->where('publish', 1); 
            $this->db->from('blogs');
            return $this->db->count_all_results();     
        }

        public function get_detail_blog($id) {          
            $query = $this->db->get_where('blogs', array('id' => $id));
            return $query->row_array();        
        }

        public function get_sidebar_blog() {
            $this->db->order_by('publish_date', 'DESC');
            $this->db->limit(4);  	        
            $query = $this->db->get('blogs');
            return $query->result_array();        
		}

        public function get_maps() {          
            $query = $this->db->get('maps');
            return $query->result_array();        
        }

        public function login($username, $password){
            $password = md5($password);
            $this->db->where('password', $password);
            $this->db->where('username', $username);
            $this->db->or_where('email', $username);
            $this->db->limit(1);
            $query = $this->db->get('users');
            if($query -> num_rows() == 1) return $query->result();
            else return false;
        }

        public function register($data){
            $result = $this->db->insert('users', $data);
            if ($result) return $this->db->insert_id();
            else return false;
        }
	}
?>