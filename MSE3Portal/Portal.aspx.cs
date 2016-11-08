using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSE3Portal
{
    public partial class Portal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) {
                //string clientIP = Request.UserHostAddress;//获取客户端的IP主机地址
                //System.Net.IPHostEntry hostEntry = System.Net.Dns.GetHostEntry(clientIP);//获取IPHostEntry实体
                //Label1.Text = hostEntry.HostName;
            }
        }
    }
}