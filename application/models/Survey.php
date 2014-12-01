<?php

/**
 * Class to model Surveys
 * @author Jorge Andres Castro (jorge.castro@linkstaria.com)
 *
 */
class Application_Model_Survey  
{
    /**
     * Id of the Survey
     * @var int
     */
    protected $_id;
    
    /**
     * Name of the survey
     * @var string
     */
    protected $_name;
    
    /**
     * Blocks from the survey
     * @var array
     */
    protected $_blocks;
    
    public function __construct(array $options = null) 
    {}
    
    /**
     * Setter for the ID
     * @param int $id
     * @return Application_Model_Survey
     */
    public function setId($id) 
    {
        $this->_id = $id;
        return $this;
    }
    
    /**
     * Getter for the ID
     * @return int
     */
    public function getId()
    {
        return $this->_id;
    }
    
    /**
     * Setter for the name
     * @param string $name
     * @return Application_Model_Survey
     */
    public function setName($name) 
    {
        $this->_name = $name;
        return $this;
    }
    
    /**
     * Getter for the name 
     * @return string
     */
    public function getName()
    {
        return $this->_name;
    }
    
    /**
     * Setter for the blocks
     * @param array $blocks
     * @return Application_Model_Survey
     */
    public function setBlocks($blocks)
    {
        $this->_blocks = $blocks;
        return $this;
    }
    
    /**
     * Getter for the blocks
     * @return array
     */
    public function getBlocks()
    {
        return $this->_blocks;
    }
}