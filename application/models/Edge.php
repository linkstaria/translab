<?php

/**
 * Class to model the GEXF Edges
 * @author Jorge Andres Castro (jorge.castro@linkstaria.com)
 *
 */
class Application_Model_Edge
{
     /**
      * Constants for the Edge types
      */
     const EDGE_NORMAL = 1;
     const EDGE_FIRST_DEGREE_CONTACT = 2;
     const EDGE_SECOND_DEGREE_CONTACT = 3;

     protected $_colors = array('r' => 112, 'g' => 128, 'b' => 144);

     /**
      * Id of the Edge
      * @var int
      */
     protected $_id;
     
     /**
      * Source of the Edge
      * @var int
      */
     protected $_source;

     /**
      * Target of the Edge
      * @var int
      */
     protected $_target;
     
    
     /**
      * Constructor of the Edge Class
      * @param [int] $source [ID of the Source Node]
      * @param [int] $target [ID of the Target Node]
      */
     public function __construct($source, $target) 
     {
        $this->_source = $source;
        $this->_target = $target;
     }
     
     /**
      * Setter of the id 
      * @param int $id
      * @return Application_Model_Edge
      */
     public function setId($id)
     {
         $this->_id = $id;
         return $this;
     }
     
     /**
      * Getter of the id
      * @return int
      */
     public function getId() 
     {
         return $this->_id;
     }

     /**
      * Setter of the source 
      * @param int $source
      * @return Application_Model_Edge
      */
     public function setSource($source)
     {
         $this->_source = $source;
         return $this;
     }
     
     /**
      * Getter of the source
      * @return int
      */
     public function getSource() 
     {
         return $this->_source;
     }

     /**
      * Setter of the target 
      * @param int $target
      * @return Application_Model_Edge
      */
     public function setTarget($target)
     {
         $this->_target = $target;
         return $this;
     }
     
     /**
      * Getter of the target
      * @return int
      */
     public function getTarget() 
     {
         return $this->_target;
     }
     
     /**
      * Getter of the color of the edge
      * @param  int $scaleColor
      * @return int
      */
     public function getColorScale($scaleColor) 
     {
         return $this->_colors[$scaleColor];
     }
     
}