using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Data;
using System.Data.OracleClient;
//using Oracle.DataAccess.Client;

namespace WUZH.DATA
{
    class OracleHelper:DBFactory
    {
        protected OracleConnection oracleCn = null;
        protected int intTimeout = 300;

        public OracleConnection OpenDB()
        {
            //string strCn = "Data Source=SUMDB1.WORLD;User Id=DEV;Password=DEVDEV;";

            string strCn = DBFactory._connstr;

            try
            {
                oracleCn = new OracleConnection(strCn);
                oracleCn.Open();
            }
            catch (Exception e)
            {
                throw e;
            }
            return oracleCn;
        }


        public override Boolean DBTrue(string sql)
        {
            bool tmp = false;

            OpenDB();

            try
            {
                OracleCommand cmd = new OracleCommand(sql, oracleCn);
                cmd.CommandTimeout = intTimeout;
                OracleDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    tmp = true;
                }

            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                oracleCn.Close();
            }

            return tmp;
        }

        public override void sqlExecNoQuery(string sql)
        {
            OpenDB();
            try
            {
                OracleCommand cmd = new OracleCommand(sql, oracleCn);
                cmd.CommandTimeout = intTimeout;
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                oracleCn.Close();
            }
        }

        public override string getColText(string sql)
        {

            string tmp = "";

            OpenDB();

            try
            {
                OracleCommand cmd = new OracleCommand(sql, oracleCn);
                cmd.CommandTimeout = intTimeout;
                OracleDataReader rs = cmd.ExecuteReader();

                while (rs.Read())
                {
                    tmp = rs[0].ToString();
                }

            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                oracleCn.Close();
            }

            return tmp;
        }


        public override string getColText(string sql, string returnvalue)
        {

            string tmp = returnvalue;

            OpenDB();

            try
            {
                OracleCommand cmd = new OracleCommand(sql, oracleCn);
                cmd.CommandTimeout = intTimeout;
                OracleDataReader rs = cmd.ExecuteReader();

                while (rs.Read())
                {
                    tmp = rs[0].ToString();
                }

            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                oracleCn.Close();
            }

            return tmp;
        }

        public override DataTable ExecDataTable(string sql)
        {
            DataTable dt = new DataTable();

            OpenDB();

            try
            {
                OracleCommand cmd = new OracleCommand(sql, oracleCn);
                cmd.CommandTimeout = intTimeout;
                OracleDataReader rs = cmd.ExecuteReader();

                dt.Load(rs);

            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                oracleCn.Close();
            }

            return dt;

        }

        public override System.Collections.ArrayList ExecRows(string sql)
        {
            OpenDB();

            System.Collections.ArrayList al = new System.Collections.ArrayList();

            try
            {
                OracleCommand cmd = new OracleCommand(sql, oracleCn);
                cmd.CommandTimeout = intTimeout;
                OracleDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    al.Add(rs[0].ToString());
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                oracleCn.Close();
            }
            return al;
        }

        public override System.Collections.ArrayList ExecColumns(string sql)
        {
            OpenDB();

            System.Collections.ArrayList al = new System.Collections.ArrayList();

            try
            {
                OracleCommand cmd = new OracleCommand(sql, oracleCn);
                cmd.CommandTimeout = intTimeout;
                OracleDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    for (int i = 0; i < rs.FieldCount; i++)
                    {
                        al.Add(rs[i].ToString());
                    }
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                oracleCn.Close();
            }
            return al;
        }


        public override void WriteDB(string tablename, DataTable dt)
        {

            string sql = null;
            System.Collections.ArrayList alsql = new System.Collections.ArrayList();

            foreach (DataRow dr in dt.Rows)
            {

                sql = "insert into " + tablename + " values (";
                for (int i = 0; i < dt.Columns.Count; i++)
                {

                    sql += "'" + dr[i].ToString() + "',";

                }

                sql = sql.Substring(0, sql.Length - 1) + ")";

                alsql.Add(sql);

            }


            sqlExecTran(alsql);

        }

        public override Boolean sqlExecTran(string[] sql)
        {

            OpenDB();

            using (OracleCommand cmd = oracleCn.CreateCommand())
            {

                OracleTransaction tran = oracleCn.BeginTransaction();
                cmd.Transaction = tran;

                try
                {

                    cmd.Connection = oracleCn;

                    foreach (string tmpsql in sql)
                    {
                        cmd.CommandText = tmpsql;
                        cmd.ExecuteNonQuery();
                    }
                    tran.Commit();

                }
                catch (Exception e)
                {

                    tran.Rollback();
                    return false;
                    throw e;
                }
                finally
                {
                    oracleCn.Close();
                }

                return true;

            }


        }


        public override Boolean sqlExecTran(System.Collections.ArrayList sqls)
        {

            OpenDB();

            using (OracleCommand cmd = oracleCn.CreateCommand())
            {

                OracleTransaction tran = oracleCn.BeginTransaction();
                cmd.Transaction = tran;

                try
                {

                    cmd.Connection = oracleCn;

                    foreach (string tmpsql in sqls)
                    {
                        cmd.CommandText = tmpsql;
                        cmd.ExecuteNonQuery();
                    }
                    tran.Commit();

                }
                catch (Exception e)
                {

                    tran.Rollback();
                    return false;
                    throw e;
                }
                finally
                {
                    oracleCn.Close();
                }

                return true;

            }


        }

        public override string getConnectionStr()
        {
            return DBFactory._connstr; ;
        }

        public override int ExecSqlCommand(string sql, IDataParameter[] paramers)
        {
            OpenDB();
            int intRet = 0;
            OracleCommand sqlCommand = new OracleCommand(sql, oracleCn);
            sqlCommand.CommandType = CommandType.Text;
            for (int i = 0; i < paramers.Length; i++)
            {
                IDataParameter value = paramers[i];
                sqlCommand.Parameters.Add(value);
            }
            try
            {
                intRet = sqlCommand.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
            finally
            {
                oracleCn.Close();
            }
            return intRet;
        }

        public override int ExecSPCommand(string sql, IDataParameter[] paramers)
        {
            OpenDB();
            int intRet = 0;
            OracleCommand sqlCommand = new OracleCommand(sql, oracleCn);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < paramers.Length; i++)
            {
                IDataParameter value = paramers[i];
                sqlCommand.Parameters.Add(value);
            }
            try
            {
                intRet = sqlCommand.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
            finally
            {
                oracleCn.Close();
            }
            return intRet;
        }

        public override DataSet ExecSPDataSet(string sql, IDataParameter[] paramers)
        {
            OpenDB();
            OracleCommand sqlCommand = new OracleCommand(sql, oracleCn);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            for (int i = 0; i < paramers.Length; i++)
            {
                IDataParameter value = paramers[i];
                sqlCommand.Parameters.Add(value);
            }
            try
            {
                OracleDataAdapter sqlDataAdapter = new OracleDataAdapter();
                sqlDataAdapter.SelectCommand = sqlCommand;
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet);

                return dataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally {
                oracleCn.Close();
            }
        }

        public override DataSet ExecSqlDataSet(string sql, IDataParameter[] paramers)
        {
            OpenDB();
            OracleCommand sqlCommand = new OracleCommand(sql, oracleCn);
            sqlCommand.CommandType = CommandType.Text;
            for (int i = 0; i < paramers.Length; i++)
            {
                IDataParameter value = paramers[i];
                sqlCommand.Parameters.Add(value);
            }
            try
            {
                OracleDataAdapter sqlDataAdapter = new OracleDataAdapter();
                sqlDataAdapter.SelectCommand = sqlCommand;
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet);

                return dataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally {
                oracleCn.Close();
            }
        }
        /*
        public override List<T> ToList<T>(DataTable dt)
        {
            var list = new List<T>();
            Type t = typeof(T);
            var plist = new List<PropertyInfo>(typeof(T).GetProperties());

            foreach (DataRow item in dt.Rows)
            {
                T s = System.Activator.CreateInstance<T>();
                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    PropertyInfo info = plist.Find(p => p.Name == dt.Columns[i].ColumnName);
                    if (info != null)
                    {
                        if (!Convert.IsDBNull(item[i]))
                        {
                            info.SetValue(s, item[i], null);
                        }
                    }
                }
                list.Add(s);
            }
            return list;
        }
        */

    }
}
