using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WUZH.DATA
{
    public class DBEntity
    {

        private string _dbtype;
        private string _dbserver;
        private string _userid;
        private string _password;
        private string _dbname;


        public string DBType
        {

            get
            {
                return _dbtype;

            }

            set
            {
                _dbtype = value;

            }

        }

        public string DBServer
        {

            get
            {
                return _dbserver;
            }

            set
            {
                _dbserver = value;
            }



        }

        public string UserID
        {

            get
            {
                return _userid;
            }

            set
            {
                _userid = value;
            }

        }

        public string Password
        {

            get
            {
                return _password;
            }

            set
            {
                _password = value;
            }
        }

        public string DBName
        {

            get
            {
                return _dbname;
            }

            set
            {
                _dbname = value;
            }

        }

    
    }


    
}
