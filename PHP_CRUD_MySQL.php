<?php
// CRUD for DB: MySQL trading_0

// CRUD for table: Contract
class Contract_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function Contract_SelectAllCRUD(){
		try{
			$sql="CALL Contract_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Contract_SelectOneCRUD($arg_ContrId){
		try{
			$sql="CALL Contract_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ContrId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Contract_DeleteOneCRUD($arg_ContrId){
		try{
			$sql="CALL Contract_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ContrId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Contract_InsertCRUD($arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId,$arg_LongShort){
		try{
			$sql="CALL Contract_Insert(?,?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId,$arg_LongShort]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Contract_InsertUsingDefaultsCRUD($arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId){
		try{
			$sql="CALL Contract_InsertUsingDefaults(?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Contract_UpdateCRUD($arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId,$arg_LongShort){
		try{
			$sql="CALL Contract_Update(?,?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId,$arg_LongShort]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Contract_UpdateUsingDefaultsCRUD($arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId){
		try{
			$sql="CALL Contract_UpdateUsingDefaults(?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ContrId,$arg_PrimPartId,$arg_CountPartId,$arg_Amount,$arg_PriceId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: Instrument
class Instrument_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function Instrument_SelectAllCRUD(){
		try{
			$sql="CALL Instrument_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Instrument_SelectOneCRUD($arg_InstrId){
		try{
			$sql="CALL Instrument_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_InstrId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Instrument_DeleteOneCRUD($arg_InstrId){
		try{
			$sql="CALL Instrument_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_InstrId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Instrument_InsertCRUD($arg_InstrId,$arg_Ticker,$arg_InstrDescr){
		try{
			$sql="CALL Instrument_Insert(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_InstrId,$arg_Ticker,$arg_InstrDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Instrument_InsertUsingDefaultsCRUD($arg_InstrId,$arg_Ticker,$arg_InstrDescr){
		try{
			$sql="CALL Instrument_InsertUsingDefaults(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_InstrId,$arg_Ticker,$arg_InstrDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Instrument_UpdateCRUD($arg_InstrId,$arg_Ticker,$arg_InstrDescr){
		try{
			$sql="CALL Instrument_Update(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_InstrId,$arg_Ticker,$arg_InstrDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Instrument_UpdateUsingDefaultsCRUD($arg_InstrId,$arg_Ticker,$arg_InstrDescr){
		try{
			$sql="CALL Instrument_UpdateUsingDefaults(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_InstrId,$arg_Ticker,$arg_InstrDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: Party
class Party_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function Party_SelectAllCRUD(){
		try{
			$sql="CALL Party_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Party_SelectOneCRUD($arg_ParId){
		try{
			$sql="CALL Party_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ParId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Party_DeleteOneCRUD($arg_ParId){
		try{
			$sql="CALL Party_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ParId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Party_InsertCRUD($arg_ParId,$arg_ParDescr,$arg_Abbrev){
		try{
			$sql="CALL Party_Insert(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ParId,$arg_ParDescr,$arg_Abbrev]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Party_InsertUsingDefaultsCRUD($arg_ParId,$arg_ParDescr,$arg_Abbrev){
		try{
			$sql="CALL Party_InsertUsingDefaults(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ParId,$arg_ParDescr,$arg_Abbrev]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Party_UpdateCRUD($arg_ParId,$arg_ParDescr,$arg_Abbrev){
		try{
			$sql="CALL Party_Update(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ParId,$arg_ParDescr,$arg_Abbrev]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Party_UpdateUsingDefaultsCRUD($arg_ParId,$arg_ParDescr,$arg_Abbrev){
		try{
			$sql="CALL Party_UpdateUsingDefaults(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_ParId,$arg_ParDescr,$arg_Abbrev]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: PortContr
class PortContr_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function PortContr_SelectAllCRUD(){
		try{
			$sql="CALL PortContr_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function PortContr_SelectOneCRUD($arg_PortId,$arg_ContrId){
		try{
			$sql="CALL PortContr_SelectOne(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_ContrId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function PortContr_DeleteOneCRUD($arg_PortId,$arg_ContrId){
		try{
			$sql="CALL PortContr_DeleteOne(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_ContrId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function PortContr_InsertCRUD($arg_PortId,$arg_ContrId,$arg_TransId){
		try{
			$sql="CALL PortContr_Insert(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_ContrId,$arg_TransId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function PortContr_InsertUsingDefaultsCRUD($arg_PortId,$arg_ContrId){
		try{
			$sql="CALL PortContr_InsertUsingDefaults(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_ContrId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function PortContr_UpdateCRUD($arg_PortId,$arg_ContrId,$arg_TransId){
		try{
			$sql="CALL PortContr_Update(?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_ContrId,$arg_TransId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: Portfolio
class Portfolio_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function Portfolio_SelectAllCRUD(){
		try{
			$sql="CALL Portfolio_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Portfolio_SelectOneCRUD($arg_PortId){
		try{
			$sql="CALL Portfolio_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Portfolio_DeleteOneCRUD($arg_PortId){
		try{
			$sql="CALL Portfolio_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Portfolio_InsertCRUD($arg_PortId,$arg_PortDescr){
		try{
			$sql="CALL Portfolio_Insert(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_PortDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Portfolio_InsertUsingDefaultsCRUD($arg_PortId,$arg_PortDescr){
		try{
			$sql="CALL Portfolio_InsertUsingDefaults(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_PortDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Portfolio_UpdateCRUD($arg_PortId,$arg_PortDescr){
		try{
			$sql="CALL Portfolio_Update(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_PortDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Portfolio_UpdateUsingDefaultsCRUD($arg_PortId,$arg_PortDescr){
		try{
			$sql="CALL Portfolio_UpdateUsingDefaults(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PortId,$arg_PortDescr]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: Price
class Price_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function Price_SelectAllCRUD(){
		try{
			$sql="CALL Price_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Price_SelectOneCRUD($arg_PriceId){
		try{
			$sql="CALL Price_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PriceId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Price_DeleteOneCRUD($arg_PriceId){
		try{
			$sql="CALL Price_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PriceId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Price_InsertCRUD($arg_PriceId,$arg_AsOf,$arg_InstrId,$arg_ParId,$arg_Rate){
		try{
			$sql="CALL Price_Insert(?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PriceId,$arg_AsOf,$arg_InstrId,$arg_ParId,$arg_Rate]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Price_InsertUsingDefaultsCRUD($arg_PriceId,$arg_AsOf){
		try{
			$sql="CALL Price_InsertUsingDefaults(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PriceId,$arg_AsOf]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Price_UpdateCRUD($arg_PriceId,$arg_AsOf,$arg_InstrId,$arg_ParId,$arg_Rate){
		try{
			$sql="CALL Price_Update(?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PriceId,$arg_AsOf,$arg_InstrId,$arg_ParId,$arg_Rate]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Price_UpdateUsingDefaultsCRUD($arg_PriceId,$arg_AsOf){
		try{
			$sql="CALL Price_UpdateUsingDefaults(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_PriceId,$arg_AsOf]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: Quote
class Quote_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function Quote_SelectAllCRUD(){
		try{
			$sql="CALL Quote_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Quote_SelectOneCRUD($arg_QuotId){
		try{
			$sql="CALL Quote_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_QuotId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Quote_DeleteOneCRUD($arg_QuotId){
		try{
			$sql="CALL Quote_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_QuotId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Quote_InsertCRUD($arg_QuotId,$arg_InstrId,$arg_AsOf,$arg_ParId,$arg_Bid,$arg_Ask,$arg_Midd,$arg_Spread){
		try{
			$sql="CALL Quote_Insert(?,?,?,?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_QuotId,$arg_InstrId,$arg_AsOf,$arg_ParId,$arg_Bid,$arg_Ask,$arg_Midd,$arg_Spread]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Quote_InsertUsingDefaultsCRUD($arg_QuotId,$arg_InstrId,$arg_Bid,$arg_Ask){
		try{
			$sql="CALL Quote_InsertUsingDefaults(?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_QuotId,$arg_InstrId,$arg_Bid,$arg_Ask]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Quote_UpdateCRUD($arg_QuotId,$arg_InstrId,$arg_AsOf,$arg_ParId,$arg_Bid,$arg_Ask,$arg_Midd,$arg_Spread){
		try{
			$sql="CALL Quote_Update(?,?,?,?,?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_QuotId,$arg_InstrId,$arg_AsOf,$arg_ParId,$arg_Bid,$arg_Ask,$arg_Midd,$arg_Spread]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Quote_UpdateUsingDefaultsCRUD($arg_QuotId,$arg_InstrId,$arg_Bid,$arg_Ask){
		try{
			$sql="CALL Quote_UpdateUsingDefaults(?,?,?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_QuotId,$arg_InstrId,$arg_Bid,$arg_Ask]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: TimePoint
class TimePoint_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function TimePoint_SelectAllCRUD(){
		try{
			$sql="CALL TimePoint_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function TimePoint_SelectOneCRUD($arg_AsOf){
		try{
			$sql="CALL TimePoint_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_AsOf]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function TimePoint_DeleteOneCRUD($arg_AsOf){
		try{
			$sql="CALL TimePoint_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_AsOf]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function TimePoint_InsertCRUD($arg_AsOf){
		try{
			$sql="CALL TimePoint_Insert(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_AsOf]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function TimePoint_InsertUsingDefaultsCRUD($arg_AsOf){
		try{
			$sql="CALL TimePoint_InsertUsingDefaults(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_AsOf]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}

// CRUD for table: Trans
class Trans_CRUD{
	public $pdo;

	function dbConnect($host, $user, $pass, $dbname) {
		try {
			$dsn = sprintf("mysql:host=%s;dbname=%s;charset=utf8", $host, $dbname);
			$option = array(
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
			);
			$this->pdo=new PDO($dsn, $user, $pass, $option);
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
		}
	}
	public function Trans_SelectAllCRUD(){
		try{
			$sql="CALL Trans_SelectAll()";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute();
			$rc=array();
			while($row=$stmt->fetch()){
				$rc[]=$row;
			}
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Trans_SelectOneCRUD($arg_TransId){
		try{
			$sql="CALL Trans_SelectOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_TransId]);
			$rc=$stmt->fetch();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Trans_DeleteOneCRUD($arg_TransId){
		try{
			$sql="CALL Trans_DeleteOne(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_TransId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Trans_InsertCRUD($arg_TransId,$arg_AsOf){
		try{
			$sql="CALL Trans_Insert(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_TransId,$arg_AsOf]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Trans_InsertUsingDefaultsCRUD($arg_TransId){
		try{
			$sql="CALL Trans_InsertUsingDefaults(?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_TransId]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
	public function Trans_UpdateCRUD($arg_TransId,$arg_AsOf){
		try{
			$sql="CALL Trans_Update(?,?)";
			$stmt=$this->pdo->prepare($sql);
			$stmt->execute([$arg_TransId,$arg_AsOf]);
			$rc=$stmt->rowCount();
			$stmt=null;
			return $rc;
		} catch (PDOException $e) {
			exit('Error: ' . $e->getMessage());
			return FALSE;
		}
		return FALSE;
	}
}
?>
