﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Pandaali.CMS.Web.UI.Page.home" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Pandaali.CMS.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Pandaali Template Engine at 2017/5/17 9:31:18.
		本页面代码由Pandaali模板引擎生成于 2017/5/17 9:31:18. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_title));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_keyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(site.seo_description));
	templateBuilder.Append("\" />\r\n    <!--<link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />-->\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/app.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/wx_wz.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.11.2.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/jquery.flexslider-min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/common.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        $(function () {\r\n            $(\".focusbox\").flexslider({\r\n                directionNav: false,\r\n                pauseOnAction: false\r\n            });\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n    <!--Header-->\r\n    ");

	templateBuilder.Append("<div class=\"header\">\r\n  <div class=\"header-wrap\">\r\n    <div class=\"section\">\r\n      <div class=\"left-box\">\r\n        <a class=\"logo\" href=\"");
	templateBuilder.Append(linkurl("home"));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(site.name));
	templateBuilder.Append("</a>\r\n        <p class=\"nav\">\r\n          <a href=\"");
	templateBuilder.Append(linkurl("home"));

	templateBuilder.Append("\">知识分享</a>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("resources"));

	templateBuilder.Append("\">资源共享</a>\r\n        </p>\r\n      </div>\r\n      <div class=\"search\">\r\n        <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" placeholder=\"输入回车搜索\" x-webkit-speech=\"\" />\r\n        <input class=\"submit\" type=\"submit\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" value=\"搜索\" />\r\n      </div>\r\n      <div class=\"right-box\">\r\n      <script type=\"text/javascript\">\r\n			$.ajax({\r\n				type: \"POST\",\r\n				url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n				dataType: \"json\",\r\n				timeout: 20000,\r\n				success: function (data, textStatus) {\r\n				    if (data.status == 1) {\r\n					    $(\"#menu\").prepend('<li class=\"line\"><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></li>');\r\n					    $(\"#menu\").prepend('<li class=\"login\"><em></em><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a></li>');\r\n					} else {\r\n				        $(\"#menu\").prepend('<li class=\"line\"><a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a></li>');\r\n				        $(\"#menu\").prepend('<li class=\"login\"><em></em><a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a></li>');\r\n					}\r\n				}\r\n			});\r\n		</");
	templateBuilder.Append("script>\r\n        <ul id=\"menu\">\r\n          <li class=\"contact\"><a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a></li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n    <!--/Header-->\r\n\r\n    <dl class=\"wx_wz\" style=\"padding-top:20px;\">\r\n\r\n        <div class=\"wx_left\">\r\n            <ul style=\"height:880px;overflow:hidden;\">\r\n                <!--类别-->\r\n                <li class=\"active\">\r\n                    <a href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("home.html\">最新</a>\r\n                </li>\r\n                ");
	DataTable rekuushareList = get_category_child_list("rekuushare",0);

	foreach(DataRow dr in rekuushareList.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("home",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"> " + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n                <!--/类别-->\r\n            </ul>\r\n        </div>\r\n        <!-- #left end -->\r\n        <div class=\"wx_center\">\r\n            <ul id=\"showajaxnews\">\r\n\r\n            </ul>\r\n            <div id=\"go-more\"><a id=\"loadmore\">点击加载更多</a></div>\r\n        </div>\r\n        <script>\r\n            var i = 1; //设置当前页数\r\n\r\n            $(function () {\r\n                $(window).scroll(function () {\r\n                    if ($(window).scrollTop() == $(document).height() - $(window).height()) {\r\n                        loadPageListByCategory();\r\n                    }\r\n                });\r\n\r\n                $('#loadmore').click(function () {\r\n                    loadPageListByCategory();\r\n                });\r\n\r\n                loadPageListByCategory();\r\n            });\r\n\r\n            function loadPageListByCategory() {\r\n                var categoryid = 0;\r\n                var temp = window.location.pathname.replace(/[^0-9]/g, '');;\r\n                if (temp != '')\r\n                {\r\n                    categoryid = temp;\r\n                }\r\n\r\n                $.ajax({\r\n                    url: '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=categorylist',\r\n                    type: 'POST',\r\n                    data: { \"channel_name\": 'rekuushare', 'category_id': categoryid, 'page_size': 20, 'page_index': i, 'strwhere': 'status=0', 'orderby': 'sort_id asc,add_time desc' },\r\n                    dataType: 'html',\r\n                    beforeSend: function () {\r\n                        $(\"#loadmore\").show().html('正在努力加载中...');\r\n                        $('#loadmore').attr('disabled', 'disabled');\r\n                    },\r\n                    success: function (data, textStatus) {\r\n\r\n                        if (data) {\r\n                            $(\"#showajaxnews\").append(data);\r\n                            $(\"#loadmore\").removeAttr('disabled');\r\n                            $(\"#loadmore\").html('点击加载更多');\r\n                            i++;\r\n                        } else {\r\n                            $(\"#loadmore\").show().html(\"已全部加载完毕！\");\r\n                            $('#loadmore').attr('disabled', 'disabled');\r\n                            return false;\r\n                        }\r\n                    }\r\n                });\r\n            }\r\n        </");
	templateBuilder.Append("script>\r\n        <!-- #center end -->\r\n        <div class=\"wx_right\">\r\n            <div id=\"doshare\">\r\n                <script type=\"text/javascript\">\r\n                    $.ajax({\r\n                        type: \"POST\",\r\n                        url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n                        dataType: \"json\",\r\n                        timeout: 20000,\r\n                        success: function (data, textStatus) {\r\n                            if (data.status == 1) {\r\n                                $(\"#doshare\").prepend('<a class=\"doshare blue\" href=\"");
	templateBuilder.Append(linkurl("article_share"));

	templateBuilder.Append("\">我要分享</a>');\r\n                            } else {\r\n                                $(\"#doshare\").prepend('<a class=\"doshare blue\" href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">我要分享</a>');\r\n                            }\r\n                        }\r\n                    });\r\n                </");
	templateBuilder.Append("script>\r\n            </div>\r\n            <div class=\"wx_right_title\">\r\n                <label></label>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("rekuutop"));

	templateBuilder.Append("\">热酷专栏</a>\r\n            </div>\r\n            <div class=\"wx_right_list2\">\r\n                ");
	DataTable newsList3 = get_article_list("down", 0, 5, "status=0");

	foreach(DataRow dr in newsList3.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\"><span><img src=\"http://www.we123.com/d/file/xcx/2017-05-11/a9860b28ac5a2fef9a5eeac786f99c80.png\" border=\"0\" /></span>" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                    <p class=\"lite-xcx-ewm\"><img src=\"\" /></p>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <div class=\"wx_right_title\">\r\n                <label></label>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("new"));

	templateBuilder.Append("\">最热分享</a>\r\n            </div>\r\n            <div class=\"wx_right_list2\">\r\n                ");
	DataTable newsList4 = get_article_list("down", 0, 8, "status=0");

	foreach(DataRow dr in newsList4.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\"><span><img src=\"http://www.we123.com/d/file/xcx/2017-05-11/a9860b28ac5a2fef9a5eeac786f99c80.png\" border=\"0\" /></span>" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                    <p class=\"lite-xcx-ewm\"><img src=\"\" /></p>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n            <div class=\"wx_right_title\">\r\n                <label></label>\r\n                <a href=\"");
	templateBuilder.Append(linkurl("new"));

	templateBuilder.Append("\">最热资源</a>\r\n            </div>\r\n            <div class=\"wx_right_list2\">\r\n                ");
	DataTable newsList5 = get_article_list("down", 0, 8, "status=0");

	foreach(DataRow dr in newsList5.Rows)
	{

	templateBuilder.Append("\r\n                <li>\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\"><span><img src=\"http://www.we123.com/d/file/xcx/2017-05-11/a9860b28ac5a2fef9a5eeac786f99c80.png\" border=\"0\" /></span>" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n                    <p class=\"lite-xcx-ewm\"><img src=\"\" /></p>\r\n                </li>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </div>\r\n        </div>\r\n        <!-- #right end -->\r\n        <div class=\"clear\"></div>\r\n    </dl>\r\n    <!--Footer-->\r\n    ");

	templateBuilder.Append("<div class=\"footer clearfix\">\r\n  <div class=\"foot-nav\">\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首 页</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("rekuutop"));

	templateBuilder.Append("\">热酷专栏</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("share"));

	templateBuilder.Append("\">知识分享</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("resources"));

	templateBuilder.Append("\">资源共享</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n    <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\">关于我们</a>|\r\n  </div>\r\n  <div class=\"copyright\">\r\n    <p>版权所有 ");
	templateBuilder.Append(site.company.ToString());

	templateBuilder.Append("  版本号：");
	templateBuilder.Append(Utils.GetVersion().ToString());

	templateBuilder.Append(" \r\n      <script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cspan id='cnzz_stat_icon_1261954413'%3E%3C/span%3E%3Cscript src='\" + cnzz_protocol + \"s4.cnzz.com/stat.php%3Fid%3D1261954413%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E\"));</");
	templateBuilder.Append("script></p>\r\n    <p>Copyright &copy; 2017 rekuu.com Corporation,All Rights Reserved.</p>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n    <!--/Footer-->\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
