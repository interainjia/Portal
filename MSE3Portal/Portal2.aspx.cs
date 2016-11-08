using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSE3Portal
{
    public partial class Portal2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) {
                bindQueryStrings();
            }
        }

        private void bindQueryStrings(){
            if(!string.IsNullOrEmpty(Request.QueryString["item"])){
                this.lblHeader.Text = "Project Introduction for " + Request.QueryString["item"] + " System";
            }
        }
    }
}