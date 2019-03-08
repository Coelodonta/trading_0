# CRUD for DB: MySQL trading_0
import pymysql

# CRUD for table: Contract
class Contract_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def Contract_SelectAllCRUD(self):
		sql="CALL Contract_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def Contract_SelectOneCRUD(self, arg_ContrId):
		sql="CALL Contract_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ContrId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def Contract_DeleteOneCRUD(self, arg_ContrId):
		sql="CALL Contract_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ContrId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Contract_InsertCRUD(self, arg_ContrId, arg_PrimPartId, arg_CountPartId, arg_Amount, arg_PriceId, arg_LongShort):
		sql="CALL Contract_Insert(%s, %s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ContrId,arg_PrimPartId,arg_CountPartId,arg_Amount,arg_PriceId,arg_LongShort))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Contract_InsertUsingDefaultsCRUD(self, arg_ContrId, arg_PrimPartId, arg_CountPartId, arg_Amount, arg_PriceId):
		sql="CALL Contract_InsertUsingDefaults(%s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ContrId,arg_PrimPartId,arg_CountPartId,arg_Amount,arg_PriceId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Contract_UpdateCRUD(self, arg_ContrId, arg_PrimPartId, arg_CountPartId, arg_Amount, arg_PriceId, arg_LongShort):
		sql="CALL Contract_Update(%s, %s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ContrId,arg_PrimPartId,arg_CountPartId,arg_Amount,arg_PriceId,arg_LongShort))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Contract_UpdateUsingDefaultsCRUD(self, arg_ContrId, arg_PrimPartId, arg_CountPartId, arg_Amount, arg_PriceId):
		sql="CALL Contract_UpdateUsingDefaults(%s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ContrId,arg_PrimPartId,arg_CountPartId,arg_Amount,arg_PriceId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: Instrument
class Instrument_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def Instrument_SelectAllCRUD(self):
		sql="CALL Instrument_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def Instrument_SelectOneCRUD(self, arg_InstrId):
		sql="CALL Instrument_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_InstrId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def Instrument_DeleteOneCRUD(self, arg_InstrId):
		sql="CALL Instrument_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_InstrId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Instrument_InsertCRUD(self, arg_InstrId, arg_Ticker, arg_InstrDescr):
		sql="CALL Instrument_Insert(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_InstrId,arg_Ticker,arg_InstrDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Instrument_InsertUsingDefaultsCRUD(self, arg_InstrId, arg_Ticker, arg_InstrDescr):
		sql="CALL Instrument_InsertUsingDefaults(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_InstrId,arg_Ticker,arg_InstrDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Instrument_UpdateCRUD(self, arg_InstrId, arg_Ticker, arg_InstrDescr):
		sql="CALL Instrument_Update(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_InstrId,arg_Ticker,arg_InstrDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Instrument_UpdateUsingDefaultsCRUD(self, arg_InstrId, arg_Ticker, arg_InstrDescr):
		sql="CALL Instrument_UpdateUsingDefaults(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_InstrId,arg_Ticker,arg_InstrDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: Party
class Party_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def Party_SelectAllCRUD(self):
		sql="CALL Party_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def Party_SelectOneCRUD(self, arg_ParId):
		sql="CALL Party_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ParId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def Party_DeleteOneCRUD(self, arg_ParId):
		sql="CALL Party_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ParId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Party_InsertCRUD(self, arg_ParId, arg_ParDescr, arg_Abbrev):
		sql="CALL Party_Insert(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ParId,arg_ParDescr,arg_Abbrev))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Party_InsertUsingDefaultsCRUD(self, arg_ParId, arg_ParDescr, arg_Abbrev):
		sql="CALL Party_InsertUsingDefaults(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ParId,arg_ParDescr,arg_Abbrev))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Party_UpdateCRUD(self, arg_ParId, arg_ParDescr, arg_Abbrev):
		sql="CALL Party_Update(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ParId,arg_ParDescr,arg_Abbrev))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Party_UpdateUsingDefaultsCRUD(self, arg_ParId, arg_ParDescr, arg_Abbrev):
		sql="CALL Party_UpdateUsingDefaults(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_ParId,arg_ParDescr,arg_Abbrev))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: PortContr
class PortContr_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def PortContr_SelectAllCRUD(self):
		sql="CALL PortContr_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def PortContr_SelectOneCRUD(self, arg_PortId, arg_ContrId):
		sql="CALL PortContr_SelectOne(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_ContrId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def PortContr_DeleteOneCRUD(self, arg_PortId, arg_ContrId):
		sql="CALL PortContr_DeleteOne(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_ContrId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def PortContr_InsertCRUD(self, arg_PortId, arg_ContrId, arg_TransId):
		sql="CALL PortContr_Insert(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_ContrId,arg_TransId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def PortContr_InsertUsingDefaultsCRUD(self, arg_PortId, arg_ContrId):
		sql="CALL PortContr_InsertUsingDefaults(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_ContrId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def PortContr_UpdateCRUD(self, arg_PortId, arg_ContrId, arg_TransId):
		sql="CALL PortContr_Update(%s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_ContrId,arg_TransId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: Portfolio
class Portfolio_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def Portfolio_SelectAllCRUD(self):
		sql="CALL Portfolio_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def Portfolio_SelectOneCRUD(self, arg_PortId):
		sql="CALL Portfolio_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def Portfolio_DeleteOneCRUD(self, arg_PortId):
		sql="CALL Portfolio_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Portfolio_InsertCRUD(self, arg_PortId, arg_PortDescr):
		sql="CALL Portfolio_Insert(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_PortDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Portfolio_InsertUsingDefaultsCRUD(self, arg_PortId, arg_PortDescr):
		sql="CALL Portfolio_InsertUsingDefaults(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_PortDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Portfolio_UpdateCRUD(self, arg_PortId, arg_PortDescr):
		sql="CALL Portfolio_Update(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_PortDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Portfolio_UpdateUsingDefaultsCRUD(self, arg_PortId, arg_PortDescr):
		sql="CALL Portfolio_UpdateUsingDefaults(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PortId,arg_PortDescr))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: Price
class Price_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def Price_SelectAllCRUD(self):
		sql="CALL Price_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def Price_SelectOneCRUD(self, arg_PriceId):
		sql="CALL Price_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PriceId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def Price_DeleteOneCRUD(self, arg_PriceId):
		sql="CALL Price_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PriceId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Price_InsertCRUD(self, arg_PriceId, arg_AsOf, arg_InstrId, arg_ParId, arg_Rate):
		sql="CALL Price_Insert(%s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PriceId,arg_AsOf,arg_InstrId,arg_ParId,arg_Rate))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Price_InsertUsingDefaultsCRUD(self, arg_PriceId, arg_AsOf):
		sql="CALL Price_InsertUsingDefaults(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PriceId,arg_AsOf))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Price_UpdateCRUD(self, arg_PriceId, arg_AsOf, arg_InstrId, arg_ParId, arg_Rate):
		sql="CALL Price_Update(%s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PriceId,arg_AsOf,arg_InstrId,arg_ParId,arg_Rate))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Price_UpdateUsingDefaultsCRUD(self, arg_PriceId, arg_AsOf):
		sql="CALL Price_UpdateUsingDefaults(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_PriceId,arg_AsOf))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: Quote
class Quote_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def Quote_SelectAllCRUD(self):
		sql="CALL Quote_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def Quote_SelectOneCRUD(self, arg_QuotId):
		sql="CALL Quote_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_QuotId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def Quote_DeleteOneCRUD(self, arg_QuotId):
		sql="CALL Quote_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_QuotId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Quote_InsertCRUD(self, arg_QuotId, arg_InstrId, arg_AsOf, arg_ParId, arg_Bid, arg_Ask, arg_Midd, arg_Spread):
		sql="CALL Quote_Insert(%s, %s, %s, %s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_QuotId,arg_InstrId,arg_AsOf,arg_ParId,arg_Bid,arg_Ask,arg_Midd,arg_Spread))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Quote_InsertUsingDefaultsCRUD(self, arg_QuotId, arg_InstrId, arg_Bid, arg_Ask):
		sql="CALL Quote_InsertUsingDefaults(%s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_QuotId,arg_InstrId,arg_Bid,arg_Ask))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Quote_UpdateCRUD(self, arg_QuotId, arg_InstrId, arg_AsOf, arg_ParId, arg_Bid, arg_Ask, arg_Midd, arg_Spread):
		sql="CALL Quote_Update(%s, %s, %s, %s, %s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_QuotId,arg_InstrId,arg_AsOf,arg_ParId,arg_Bid,arg_Ask,arg_Midd,arg_Spread))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Quote_UpdateUsingDefaultsCRUD(self, arg_QuotId, arg_InstrId, arg_Bid, arg_Ask):
		sql="CALL Quote_UpdateUsingDefaults(%s, %s, %s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_QuotId,arg_InstrId,arg_Bid,arg_Ask))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: TimePoint
class TimePoint_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def TimePoint_SelectAllCRUD(self):
		sql="CALL TimePoint_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def TimePoint_SelectOneCRUD(self, arg_AsOf):
		sql="CALL TimePoint_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_AsOf))
		result=cursor.fetchall()
		cursor.close()
		return result

	def TimePoint_DeleteOneCRUD(self, arg_AsOf):
		sql="CALL TimePoint_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_AsOf))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def TimePoint_InsertCRUD(self, arg_AsOf):
		sql="CALL TimePoint_Insert(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_AsOf))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def TimePoint_InsertUsingDefaultsCRUD(self, arg_AsOf):
		sql="CALL TimePoint_InsertUsingDefaults(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_AsOf))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result



# CRUD for table: Trans
class Trans_CRUD:
	cnx=None

	def dbconnect(self, myhost, myuser, mypass, mydbname):
		self.cnx = pymysql.connect(user=myuser, password=mypass,host=myhost,database=mydbname)

	def close(self):
		self.cnx.close()

	def Trans_SelectAllCRUD(self):
		sql="CALL Trans_SelectAll()";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql)
		result=cursor.fetchall()
		cursor.close()
		return result

	def Trans_SelectOneCRUD(self, arg_TransId):
		sql="CALL Trans_SelectOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_TransId))
		result=cursor.fetchall()
		cursor.close()
		return result

	def Trans_DeleteOneCRUD(self, arg_TransId):
		sql="CALL Trans_DeleteOne(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_TransId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Trans_InsertCRUD(self, arg_TransId, arg_AsOf):
		sql="CALL Trans_Insert(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_TransId,arg_AsOf))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Trans_InsertUsingDefaultsCRUD(self, arg_TransId):
		sql="CALL Trans_InsertUsingDefaults(%s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_TransId))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result

	def Trans_UpdateCRUD(self, arg_TransId, arg_AsOf):
		sql="CALL Trans_Update(%s, %s)";
		cursor = self.cnx.cursor(pymysql.cursors.DictCursor)
		cursor.execute(sql,(arg_TransId,arg_AsOf))
		result=cursor.rowcount
		self.cnx.commit()
		cursor.close()
		return result


