<?php
class PostModel extends CI_Model {

        public function __construct()
        {
                $this->load->database();
        }

        public function get_posts($id = FALSE)
{
        if ($id === FALSE)
        {
                $query = $this->db->get('tbl_post');
                return $query->result_array();
        }

        $query = $this->db->get_where('tbl_post', array('id' => $id));
        return $query->row_array();
}
}