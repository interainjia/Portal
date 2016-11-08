using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace WUZH.DATA
{
    public abstract class DBFactory
    {

        static private DBFactory _instance = null;
        static public string _dbtype = null;
        static public string _connstr = null;
        static public DBEntity mydb = null;

        
        static public DBFactory Instance
        {

            get
            {
                _instance = null;
                                
                _dbtype = mydb.DBType;

                if (_instance == null)
                {

                    switch (_dbtype)
                    {
                        case "Sql":
                            _instance = new SqlHelper();
                            _connstr = "user id=" + mydb.UserID + ";" +
                                       "password=" + mydb.Password + ";" +
                                       "Data Source=" + mydb.DBServer + ";" +
                                       "database=" + mydb.DBName + ";" +
                                       "Connection Timeout=300;";
                                       
                            break;
                        case "Oracle":
                            _instance = new OracleHelper();
                            _connstr = "Data Source=" + mydb.DBServer + ";" +
                                       "User Id=" + mydb.UserID + ";" +
                                       "Password=" + mydb.Password + ";" +
                                       "Min Pool Size=10;Max Pool Size=20;Connection Timeout=300;";

                            break;

                        default:
                            _instance = new SqlHelper();
                            _connstr = "user id=" + mydb.UserID + ";" +
                                       "password=" + mydb.Password + ";" +
                                       "Data Source=" + mydb.DBServer + ";" +
                                       "database=" + mydb.DBName;
                            break;

                    }

                }


                return _instance;


            }


        }

        public abstract string getConnectionStr();

        public abstract string getColText(string sql);

        public abstract string getColText(string sql, string returnvalue);

        public abstract void sqlExecNoQuery(string sql);

        public abstract Boolean sqlExecTran(string[] sql);

        public abstract Boolean sqlExecTran(System.Collections.ArrayList sqls);

        public abstract Boolean DBTrue(string sql);

        public abstract DataTable ExecDataTable(string sql);

        public abstract System.Collections.ArrayList ExecRows(string sql);

        public abstract System.Collections.ArrayList ExecColumns(string sql);

        public abstract void WriteDB(string tablename, DataTable dt);

        public abstract int ExecSqlCommand(string sql, IDataParameter[] parameters);

        public abstract int ExecSPCommand(string sql, IDataParameter[] parameters);

        public abstract DataSet ExecSPDataSet(string sql, IDataParameter[] parameters);

        public abstract DataSet ExecSqlDataSet(string sql, IDataParameter[] parameters);

        //public abstract List<T> ToList<T>(DataTable dt);



    }
}
