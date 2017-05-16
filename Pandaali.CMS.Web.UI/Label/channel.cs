using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace Pandaali.CMS.Web.UI
{
    public partial class BasePage : System.Web.UI.Page
    {

        protected DataTable get_channel_list()
        {
            return new BLL.channel().GetList(2, " name <> 'rekuutop'", "sort_id asc,id desc").Tables[0];
        }
    }
}
