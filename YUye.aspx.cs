using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gokhantemel_1912901054
{
    public partial class YUye : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Yetki"] != null)
            {
                if (Session["Yetki"].ToString() == "1")
                {
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btngoster_Click1(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = GridView1.SelectedValue;
            Response.Redirect("UyeDetay.aspx");
        }
    }
}