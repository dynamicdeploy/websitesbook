using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IdentityModel;
using System.Diagnostics.Tracing;

namespace StorageSearch
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

              //  Response.Redirect("http://www.dynamicdeploy.com");

                System.Diagnostics.Trace.TraceInformation(string.Format("User logged in {0}", User.Identity.Name));
            }


        }

       
    }
}