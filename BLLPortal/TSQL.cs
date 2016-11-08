using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLLPortal
{
    class TSQL
    {
        static TSQL _instance = null;

        public static TSQL Instance {
            get
            {
                if (_instance == null) _instance = new TSQL();
                return _instance;
            }
        }

        #region "Portal"

        #endregion
    }
}
