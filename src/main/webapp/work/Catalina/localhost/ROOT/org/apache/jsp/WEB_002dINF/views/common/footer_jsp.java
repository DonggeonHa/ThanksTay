/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.50
 * Generated at: 2021-08-19 08:57:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.common;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(8);
    _jspx_dependants.put("jar:file:/C:/workspace/ThanksTay/ThanksTay/src/main/webapp/wtpwebapps/ThanksTay/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/C:/workspace/ThanksTay/ThanksTay/src/main/webapp/wtpwebapps/ThanksTay/WEB-INF/lib/spring-webmvc-5.2.16.RELEASE.jar!/META-INF/spring.tld", Long.valueOf(1626216726000L));
    _jspx_dependants.put("jar:file:/C:/workspace/ThanksTay/ThanksTay/src/main/webapp/wtpwebapps/ThanksTay/WEB-INF/lib/spring-webmvc-5.2.16.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1626216726000L));
    _jspx_dependants.put("jar:file:/C:/workspace/ThanksTay/ThanksTay/src/main/webapp/wtpwebapps/ThanksTay/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/views/common/tags.jsp", Long.valueOf(1627433983050L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1629344132335L));
    _jspx_dependants.put("jar:file:/C:/workspace/ThanksTay/ThanksTay/src/main/webapp/wtpwebapps/ThanksTay/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/spring-webmvc-5.2.16.RELEASE.jar", Long.valueOf(1629348439233L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("#footer{\r\n");
      out.write("	background-color: #F7F7F7 !important;\r\n");
      out.write("    border-top: 1px solid #DDDDDD !important;\r\n");
      out.write("    padding-top: 40px;\r\n");
      out.write("    padding-bottom: 40px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#footer li{\r\n");
      out.write("	list-style : none;\r\n");
      out.write("	margin-bottom : 15px;\r\n");
      out.write("	font-size: 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#footer .box-upper{\r\n");
      out.write("    padding-bottom: 20px !important;\r\n");
      out.write("}\r\n");
      out.write("#footer .box-lower{\r\n");
      out.write("    padding-top: 40px !important;\r\n");
      out.write("    border-top: 1px solid #DDDDDD !important;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("		<div class=\"box-upper\">\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<ul class=\"list-group\">\r\n");
      out.write("						<li><strong>소개</strong></li>\r\n");
      out.write("						<li><a>에어비앤비 이용 방법</a></li>\r\n");
      out.write("						<li>뉴스룸</li>\r\n");
      out.write("						<li>에어비앤비 2021</li>\r\n");
      out.write("						<li>투자자 정보</li>\r\n");
      out.write("						<li>에어비앤비 플러스</li>\r\n");
      out.write("						<li>에어비앤비 Luxe</li>\r\n");
      out.write("						<li>호텔투나잇</li>\r\n");
      out.write("						<li>에어비앤비 비즈니스 프로그램</li>\r\n");
      out.write("						<li>호스트 분들이 있기에 가능합니다</li>\r\n");
      out.write("						<li>채용정보</li>\r\n");
      out.write("						<li>창립자 편지</li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<ul class=\"list-group\">\r\n");
      out.write("						<li><strong>커뮤니티</strong></li>\r\n");
      out.write("						<li>다양성 및 소속감</li>\r\n");
      out.write("						<li>접근성</li>\r\n");
      out.write("						<li>에어비앤비 어소시에이트</li>\r\n");
      out.write("						<li>구호 인력을 위한 숙소</li>\r\n");
      out.write("						<li>게스트 추천</li>\r\n");
      out.write("						<li>Airbnb.org</li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<ul class=\"list-group\">\r\n");
      out.write("						<li><strong>호스팅하기</strong></li>\r\n");
      out.write("						<li>숙소 호스팅</li>\r\n");
      out.write("						<li>온라인 체험 호스팅하기</li>\r\n");
      out.write("						<li>체험 호스팅하기</li>\r\n");
      out.write("						<li>책임감 있는 호스팅</li>\r\n");
      out.write("						<li>호스트 추천</li>\r\n");
      out.write("						<li>자료 센터</li>\r\n");
      out.write("						<li>커뮤니티 센터</li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<ul class=\"list-group\">\r\n");
      out.write("						<li><strong>에어비앤비 지원</strong></li>\r\n");
      out.write("						<li>에어비앤비의 코로나19 대응 방안</li>\r\n");
      out.write("						<li>도움말 센터</li>\r\n");
      out.write("						<li>예약 취소 옵션</li>\r\n");
      out.write("						<li>신뢰와 안전</li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>	\r\n");
      out.write("		<div class=\"box-lower\">\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<div class=\"col-6\">\r\n");
      out.write("					© 2021 Airbnb, Inc.<br/>\r\n");
      out.write("					개인정보 처리방침·이용약관·사이트맵·한국의 변경된 환불 정책·회사 세부정보\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<p>한국어 (KR) $ SGD</p>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					A\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</div>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}