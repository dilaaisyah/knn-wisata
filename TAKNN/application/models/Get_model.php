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
            $query = $this->db->get_where('blogs', array('featured' => 1));
            return $query->result_array();          
        }

		public function get_blog() {          
            $query = $this->db->get('blogs');
            return $query->result_array();        
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