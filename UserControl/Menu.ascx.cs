﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gokhantemel_1912901054.UserControl
{
    public partial class Menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Yetki"] != null)
            {
                if (Session["Yetki"].ToString() == "1")
                {
                    HyperLink6.Visible = true;
                }
            }
        }
    }
}