using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WUZH.DATA
{

    public class DBCommandConvert
    {
        //get nowdate function
        public static String GetSQLDate(DBCommandFactory type)
        {
            switch (type)
            {
                case DBCommandFactory.SQLServer:
                    return "getdate()";
                case DBCommandFactory.Oracle:
                    return "sysdate ";
                case DBCommandFactory.MySQL:
                    return "curdate() ";
                case DBCommandFactory.Access:
                    return "now()";
                default:
                    return "";
            }
        }

        public static String GetTopRecords(String Command, String TopRecord, DBCommandFactory type)
        {
            switch (type)
            {
                case DBCommandFactory.SQLServer:
                    Command = Command.Replace("select", "select Top " + TopRecord);
                    return Command;
                case DBCommandFactory.Oracle:
                    if (Command.Contains("where"))
                        Command += "and rownum <=" + TopRecord;
                    else
                        Command += "rownum <=" + TopRecord;
                    return Command;
                case DBCommandFactory.MySQL:
                    Command += "limit " + TopRecord;
                    return Command;
                case DBCommandFactory.Access:
                    Command = Command.Replace("select", "Select Top " + TopRecord);
                    return Command;
                default:
                    return "";
            }
        }

    }

}
