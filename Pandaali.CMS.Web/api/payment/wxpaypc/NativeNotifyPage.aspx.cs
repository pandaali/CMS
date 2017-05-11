using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WxPayAPI;

namespace Pandaali.CMS.Web.api.payment.wxpaypc
{
    public partial class NativeNotifyPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NativeNotify nativeNatify = new NativeNotify(this);
            nativeNatify.ProcessNotify();
        }
    }
}