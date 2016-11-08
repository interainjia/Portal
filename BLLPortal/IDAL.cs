using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLLPortal
{
    class IDAL
    {
        static IDAL _instance = null;

        public static IDAL Instance{
            get {
                if (_instance == null) _instance = new IDAL();
                return _instance;
            }
        }

        public void ExecSql(string sql)
        {
            WUZH.DATA.DBFactory.mydb = WorkDB();
            WUZH.DATA.DBFactory.Instance.sqlExecNoQuery(sql);
        }

        public Boolean Exists(string sql)
        {
            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.DBTrue(sql);

        }

        public string ExecColText(string sql)
        {
            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.getColText(sql);
        }

        public string ExecColText(string sql, string defaultvalue)
        {

            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.getColText(sql, defaultvalue);

        }

        public System.Collections.ArrayList ExecRows(string sql)
        {
            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.ExecRows(sql);

        }

        public System.Collections.ArrayList ExecRowsWithBlank(string sql)
        {
            WUZH.DATA.DBFactory.mydb = WorkDB();

            System.Collections.ArrayList al = WUZH.DATA.DBFactory.Instance.ExecRows(sql);

            al.Insert(0, "");

            return al;

        }

        public System.Collections.ArrayList ExecColumns(string sql)
        {
            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.ExecColumns(sql);

        }

        public System.Data.DataTable ExecDataTable(string sql)
        {
            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.ExecDataTable(sql);

        }

        public void ExecTranSqls(string[] sqls)
        {

            WUZH.DATA.DBFactory.mydb = WorkDB();

            WUZH.DATA.DBFactory.Instance.sqlExecTran(sqls);

        }

        public void ExecTranSqls(System.Collections.ArrayList sqls)
        {

            WUZH.DATA.DBFactory.mydb = WorkDB();

            WUZH.DATA.DBFactory.Instance.sqlExecTran(sqls);

        }

        public System.Data.DataSet ExecSPDataSet(string sql, System.Data.IDataParameter[] paramers)
        {

            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.ExecSPDataSet(sql, paramers);
        }

        public int ExecSPCommand(string sql, System.Data.IDataParameter[] parameters)
        {

            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.ExecSPCommand(sql, parameters);
        }

        public int ExecSqlCommand(string sql, System.Data.IDataParameter[] parameters)
        {

            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.ExecSqlCommand(sql, parameters);
        }

        public string getConnectionStr()
        {

            WUZH.DATA.DBFactory.mydb = WorkDB();

            return WUZH.DATA.DBFactory.Instance.getConnectionStr();
        }

        protected WUZH.DATA.DBEntity WorkDB()
        {
            WUZH.DATA.DBEntity db = new WUZH.DATA.DBEntity();

            db.DBType = "Sql";
            db.DBServer = "10.8.214.223\\sqlexpress";
            db.UserID = "centraldb";
            db.Password = "cd123";
            db.DBName = "CentralDatabase";

            return db;
        }
    }
}
