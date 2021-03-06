<?php

/**
 * Mapper for the Report related information
 * @author Jorge Andres Castro (jorge.castro@linkstaria.com)
 *
 */
class Application_Model_ReportMapper extends Application_Model_AbstractMapper
{
    
    /**
     * DB table class name for Node
     * @var string
     */
    private $_dbTableNodeClassName = 'Application_Model_DbTable_Node';

    /**
     * DB table class name for Edge
     * @var string
     */
    private $_dbTableEdgeClassName = 'Application_Model_DbTable_Edge';
    
    /**
     * Feeds the Report information
     * @return void|Application_Model_Report
     */
    public function fetchReport($userId) 
    {
        $nodes = $this->getAssociatedNodes($userId);
        print_r($nodes);die();
        
        //Fetches the Nodes
        $resultNodes = $this->getDbTable($this->_dbTableNodeClassName)->fetchAll();

        if(0 == count($resultNodes))
        {
            return;
        }
        $nodes = array();
        foreach($resultNodes as $row) {
            $node = new Application_Model_Node();
            $node->setId($row['id'])
                 ->setUser($row['user'])
                 ->setName(utf8_encode($row['name']))
                 ->setType($row['type']);
            
            if($node->getUser() == $userId) {
                $node->setType(Application_Model_Node::NODE_MAIN);
            }
            
            $nodes[$row['id']] = $node;
        }

        //Fetches the Edges
        $this->_dbTable = null;
        $resultEdges = $this->getDbTable($this->_dbTableEdgeClassName)->fetchAll();

        if(0 == count($resultEdges))
        {
            return;
        }
        $edges = array();
        foreach($resultEdges as $row) {
            $edge = new Application_Model_Edge($row['source'], $row['target']);
            $edge->setId($row['id']);
            
            $edges[$row['id']] = $edge;
        }

        $report = new Application_Model_Report();
        $report->setUserid($userId);
        $report->setNodes($nodes);
        $report->setEdges($edges);

        return $report;
    }
    
    private function getAssociatedNodes($userid) 
    {
        $associatedNodes = array();
        $toAddNodes = array($userid);
        while(count($toAddNodes) > 0) {
            $associatedNodes = array_merge($associatedNodes, $toAddNodes);            
            
            $select = $this->getDbTable($this->_dbTableEdgeClassName)
                            ->select()->where('source IN (?)', $toAddNodes)
                            ->orWhere('target IN (?)', $toAddNodes);
            
            $resultSet = $this->getDbTable($this->_dbTableEdgeClassName)->getAdapter()->fetchAll($select);
            
            print_r($resultSet);die();
            
            $toAddNodes = array();
            
        }
        
        return $associatedNodes;
    }
    
}