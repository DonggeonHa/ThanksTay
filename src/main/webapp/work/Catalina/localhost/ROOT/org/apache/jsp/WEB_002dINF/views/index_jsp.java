/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.50
 * Generated at: 2021-08-19 08:57:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<style type=\"text/css\">\r\n");
      out.write(".imgbox {\r\n");
      out.write("	border-radius: 3%;\r\n");
      out.write("	object-fit: cover;\r\n");
      out.write("	width: 300px;\r\n");
      out.write("	height: 300px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".container-fluid {\r\n");
      out.write("	background-image: url('/resources/images/mains/front.webp');\r\n");
      out.write("	background-size: cover;\r\n");
      out.write("	height: 800px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".semi-title {\r\n");
      out.write("	margin-top: 20px;\r\n");
      out.write("	margin-bottom: 20px;\r\n");
      out.write("	font-size: 28px;\r\n");
      out.write("	font-weight: 600;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".region-image {\r\n");
      out.write("	float: left;\r\n");
      out.write("	width: 80px;\r\n");
      out.write("	height: 80px;\r\n");
      out.write("	margin-right: 10px;\r\n");
      out.write("	object: cover;\r\n");
      out.write("	border-radius: 15%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".region1 {\r\n");
      out.write("	position: relative;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".region2 {\r\n");
      out.write("	padding-top: 15px;\r\n");
      out.write("	display: block;\r\n");
      out.write("	top: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".suggestion {\r\n");
      out.write("	margin: 5px;\r\n");
      out.write("	font-size: 17px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".imgbox-big {\r\n");
      out.write("	width: 400px;\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	border-radius: 3%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".banner-img {\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	object-fit: cover;\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".banner-text {\r\n");
      out.write("	position: absolute;\r\n");
      out.write("	top: 40%;\r\n");
      out.write("	left: 3%;\r\n");
      out.write("	color: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".banner-title {\r\n");
      out.write("	margin-bottom: 3px;\r\n");
      out.write("	font-size: 30px;\r\n");
      out.write("	font-weight: 600;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".banner-content {\r\n");
      out.write("	margin-bottom: 15px;\r\n");
      out.write("	font-size: 18px;\r\n");
      out.write("}\r\n");
      out.write("/*\r\n");
      out.write(".banner-wrapper{\r\n");
      out.write("	border: 1px outset black;\r\n");
      out.write("	text-align: center;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	height: 300px !important;\r\n");
      out.write("	overflow: hidden;\r\n");
      out.write("	margin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write(".banner{\r\n");
      out.write("	position: relative !important;\r\n");
      out.write("	padding-top: 100%; /* 1:1 ration\r\n");
      out.write("	overflow: hidden;\r\n");
      out.write("	width: 100% !important;\r\n");
      out.write("}\r\n");
      out.write(".banner-img{\r\n");
      out.write("	position: absolute !important;\r\n");
      out.write("	top:25%; left:25%;\r\n");
      out.write("	transform: translate(-25%, -75%);\r\n");
      out.write("}\r\n");
      out.write("*/\r\n");
      out.write("</style>\r\n");
      out.write("<!-- 이미지 전체화면+nav바 cover하게 조정해야 -->\r\n");
      out.write("<div class=\"container-fluid\">\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("	<form action=\"explore/list\">\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<div class=\"input-box-1\">\r\n");
      out.write("					<label class=\"form-label\">위치</label> <input type=\"text\"\r\n");
      out.write("						class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${location }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" name=\"location\"\r\n");
      out.write("						placeholder=\"어디로 여행가세요\" />\r\n");
      out.write("					<!-- 현재 이 부분 작동 안함ㄸㄹㄹ -->\r\n");
      out.write("					<!--<div class=\"dropdown-menu\">\r\n");
      out.write("									<li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n");
      out.write("								</div>-->\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-4\">\r\n");
      out.write("				<div class=\"row\">\r\n");
      out.write("					<div class=\"col-6\">\r\n");
      out.write("						<div class=\"input-box-2\">\r\n");
      out.write("							<label class=\"form-label\">체크인</label> <input type=\"text\"\r\n");
      out.write("								class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${checkin}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" name=\"checkin\"\r\n");
      out.write("								placeholder=\"날짜입력\" />\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"col-6\">\r\n");
      out.write("						<div class=\"input-box-3\">\r\n");
      out.write("							<label class=\"form-label\">체크아웃</label> <input type=\"text\"\r\n");
      out.write("								class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${checkout}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" name=\"checkout\"\r\n");
      out.write("								placeholder=\"날짜입력\" />\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<div class=\"input-box-4\">\r\n");
      out.write("					<label class=\"form-label\">인원</label> <input type=\"text\"\r\n");
      out.write("						class=\"form-control\" name=\"guests\" placeholder=\"게스트 추가\" />\r\n");
      out.write("					<ul class=\"dropdown-menu\">\r\n");
      out.write("						<li class=\"dropdown-item\"></li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-1\">\r\n");
      out.write("				<button type=\"submit\" class=\"btn btn-primary mb-3\">검색</button>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</form>\r\n");
      out.write("<br />\r\n");
      out.write("	\r\n");
      out.write("		<div class=\"content text-left\" style=\"margin-top: 310px; text-shadow: 1px 1px 5px black;\">\r\n");
      out.write("			<h1 class=\"text-white mb-3\" style=\"\">올림픽/패럴림픽 출전 선수와 함께하는 온라인 체험</h1>\r\n");
      out.write("			<button class=\"btn btn-light\">지금 둘러보기</button>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- 		<img id=\"cover\" src=\"/resources/images/mains/front.webp\"/>\r\n");
      out.write("		<span class=semi-title>올림픽/패럴림픽 출전 선수와 함께하는 온라인 체험</span>\r\n");
      out.write("		<button class=\"btn btn-light\">지금 둘러보기</button> -->\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("	<div class=\"sec sec-2\">\r\n");
      out.write("		<div class=\"semi-title\">가까운 여행지 둘러보기</div>\r\n");
      out.write("		<div class=\"component mb-3 justify-content-center align-items-center\">\r\n");
      out.write("			<!-- 대체 왜 여기부터 또 가로폭이 달라지는 것인가 -->\r\n");
      out.write("			<div class=\"row mb-3\">\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\" src=\"/resources/images/mains/seoul.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>서울</b><br />차로 15분 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\" src=\"/resources/images/mains/busan.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>부산</b><br />차로 5시간 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\" src=\"/resources/images/mains/yangy.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>양양군</b><br />차로 2.5시간 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\"\r\n");
      out.write("							src=\"/resources/images/mains/sockcho.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>속초시</b><br />차로 2.5시간 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\" src=\"/resources/images/mains/daegu.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>대구</b><br />차로 4시간 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\" src=\"/resources/images/mains/wanju.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>완주군</b><br />차로 3시간 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\"\r\n");
      out.write("							src=\"/resources/images/mains/jeonju.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>전주시</b><br />차로 3시간 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-3\">\r\n");
      out.write("					<div class=\"region align-items-center\">\r\n");
      out.write("						<img class=\"region-image\"\r\n");
      out.write("							src=\"/resources/images/mains/gosung.webp\">\r\n");
      out.write("						<div class=\"region-1\">\r\n");
      out.write("							<span class=\"region2\"><b>고성군</b><br />차로 3시간 거리</span>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<!-- <div class=\"sec sec-3\">\r\n");
      out.write("		<span class=semi-title>어디든 상관없이 떠나고 싶을 때 에어비앤비가 도와드립니다!</span>\r\n");
      out.write("		<button class=\"btn btn-dark\">유연한 검색</button>\r\n");
      out.write("	</div> -->\r\n");
      out.write("	<!-- 정렬방법 생각하기... 이미지 사이즈 맞추는 방법도 -->\r\n");
      out.write("	<div class=\"sec sec-4\">\r\n");
      out.write("		<div class=semi-title>어디에서나, 여행은 살아보는거야!</div>\r\n");
      out.write("		<div class=\"row\">\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<img class=\"imgbox box-sec4\"\r\n");
      out.write("					src=\"resources/images/mains/main_sec4_1.webp\" />\r\n");
      out.write("				<div class=\"suggestion\">\r\n");
      out.write("					<b>자연생활을 만끽할 수 있는 숙소</b>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<img class=\"imgbox box-sec4\"\r\n");
      out.write("					src=\"resources/images/mains/main_sec4_2.webp\" />\r\n");
      out.write("				<div class=\"suggestion\">\r\n");
      out.write("					<b>독특한 공간</b>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<img class=\"imgbox box-sec4\"\r\n");
      out.write("					src=\"resources/images/mains/main_sec4_3.webp\" />\r\n");
      out.write("				<div class=\"suggestion\">\r\n");
      out.write("					<b>집 전체</b>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-3\">\r\n");
      out.write("				<img class=\"imgbox box-sec4\"\r\n");
      out.write("					src=\"resources/images/mains/main_sec4_4.webp\" />\r\n");
      out.write("				<div class=\"suggestion\">\r\n");
      out.write("					<b>반려동물 가능</b>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<div class=\"sec sec-5\">\r\n");
      out.write("		<div class=semi-title>특별한 즐길거리 찾아보기</div>\r\n");
      out.write("		<div class=\"row mb-3\">\r\n");
      out.write("			<div class=\"col-4\">\r\n");
      out.write("				<img class=\"imgbox-big\" src=\"/resources/images/mains/activity3.jpg\" />\r\n");
      out.write("				<div class=\"middle-case mt-2\">\r\n");
      out.write("					<b>추천 컬렉션: 여행 본능을 깨우는 체험</b>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"small-case\">온라인 체험으로 집에서 랜선 여행을 즐기세요.</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-4\">\r\n");
      out.write("				<img class=\"imgbox-big\" src=\"/resources/images/mains/activity1.webp\" />\r\n");
      out.write("				<div class=\"middle-case mt-2\">\r\n");
      out.write("					<b>온라인 체험</b>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"small-case\">호스트와 실시간으로 소통하면서 액티비티를 즐겨보세요.</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"col-4\">\r\n");
      out.write("				<img class=\"imgbox-big\" src=\"/resources/images/mains/activity2.webp\" />\r\n");
      out.write("				<div class=\"middle-case mt-2\">\r\n");
      out.write("					<b>체험</b>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"small-case\">가까운 곳에서 즐길 수 있는 잊지 못할 체험을 찾아보세요.</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<div class=\"sec sec-6 mt-5 mb-5\">\r\n");
      out.write("		<div class=\"wapper\" style=\"position: relative;\">\r\n");
      out.write("			<!-- 왜 같은 박스인데도 밖으로 튀어나가는거지...? -->\r\n");
      out.write("			<img class=\"banner-img\"\r\n");
      out.write("				src=\"/resources/images/mains/main_bottom.webp\" />\r\n");
      out.write("			<div class=\"banner-text\">\r\n");
      out.write("				<div class=\"banner-title\">호스팅 시작하기</div>\r\n");
      out.write("				<div class=\"banner-content\">숙소를 공유하여 부수입을 올리고 새로운 가능성을 만나세요</div>\r\n");
      out.write("				<button class=\"btn btn-light\">\r\n");
      out.write("					<b>자세히 알아보기</b>\r\n");
      out.write("				</button>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</div>\r\n");
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