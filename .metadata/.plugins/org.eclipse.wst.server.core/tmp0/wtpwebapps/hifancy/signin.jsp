<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>하이팬시 - No.1 문구용품점</title>
<link href="hifancy.css" rel="stylesheet" type="text/css" />
<style type="text/css">
a:link {
	color: #607D82;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #607D82;
}
a:hover {
	text-decoration: underline;
	color: #607D82;
}
a:active {
	text-decoration: none;
	color: #607D82;
}
.input-text {		border: none;
		height: 30px;
		padding: 2px 0px;
		width: 100%;
		font-size: 14px;
}
.input-text {		width: 180px;
}
#catalog_go {
   height: 50px;
   width: 300px;
   margin-top: 30px;
   margin-left: 600px;
}
#deletesuccess{
   padding: 30px;
   margin-left: 450px;
   float: none;
   height: 300px;
   width: 500px;
   font-family: "나눔고딕";
   font-size: 24px;
   color: #607D82;
   background-color: #FDFDFE;
   border: medium solid #607D82;
   text-align: center;
}
#deletesuccessContent{
   height: 180px;
   width: 500px;
   font-family: "나눔고딕";
   font-size: 35px;
   color: #607D82;
   text-align: center;
   line-height: 50px;
}
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>
<body onload="MM_preloadImages('images/topmenu_01.png','images/topmenu_02.png','images/topmenu_03.png','images/topmenu_04.png','images/topmenu_05.png','images/topmenu_06.png')">
    <div id="pageheader">
      <div id="toplogo"><a href="mainpage.jsp"><img src="images/pageheader_01.png" width="248" height="98" /></a></div>
       <div id="searchinputcover">
        <table width="800" height="52" cellpadding="3" cellspacing="0">
          <tr>
            <td width="910"><span> <input type="text" id="search" name="search" class="searchinput"/></span></td>
            <td width="52" align="center"><input type="image" src="images/search.png" width="30" height="30" onclick="searchGo()"/></td>
          </tr>
        </table></div>
<%
         String userId = (String)session.getAttribute("UI");
      %>
      
      <div id="login_join">
         <c:set var="userId" value="<%=userId%>"/>
         <c:if test="${userId==null}">
           <div id="login"><a href="login_Form.jsp">로그인</a></div> 
        </c:if>
        <c:if test="${userId!=null}"> 
           <div id="login"><a href="logout.jsp">로그아웃</a></div>
        </c:if>  
        <div id="join"><a href="signin_Form.jsp">회원가입</a></div>
      </div>
      <div id="topmenu"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','images/topmenu_01.png',1)"><img src="images/topmenugray_01.png" width="144" height="62" id="Image16" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17','','images/topmenu_02.png',1)"><img src="images/topmenugray_02.png" width="162" height="62" id="Image17" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image18','','images/topmenu_03.png',1)"><img src="images/topmenugray_03.png" width="177" height="62" id="Image18" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','images/topmenu_04.png',1)"><img src="images/topmenugray_04.png" width="180" height="62" id="Image19" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image20','','images/topmenu_05.png',1)"><img src="images/topmenugray_05.png" width="159" height="62" id="Image20" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','images/topmenu_06.png',1)"><img src="images/topmenugray_06.png" width="161" height="62" id="Image21" /></a></div>
      <div id="membercart">
<div id="member">
  <div align="center"><a href="#"><img src="images/pageheader_12.png" width="86" height="62" /></a><br>
    <a href="#">마이페이지</a></div>
</div>
      <div id="cart">
        <div align="center"><a href="productCartList.jsp"><img src="images/pageheader_10.png" width="86" height="62" /></a><br>
        <a href="productCartList.jsp">장바구니</a></div>
      </div>
      </div>
</div> 
 <div id="body2">
   <div id="main">
    <div id="pagetitle">
            <div id="welcome" align="center"><img src="images/welcome.png" width="500" height="159" /></div>
          </div>
          <div id="signinsuccess" align="center"><img src="images/signin.png" width="500" height="600" align="center"/></div>
          <div id="catalog_go" align="center"><img src="images/shoppinggo.png" width="250" height="50" onclick="mainpage()"/></div>
 
   
<%
   request.setCharacterEncoding("utf-8");
   String userId1=request.getParameter("id");
   String password=request.getParameter("password");
   String name=request.getParameter("name");
   String email=request.getParameter("email");
   int birth_year=Integer.parseInt(request.getParameter("birth_year"));
   int birth_month=Integer.parseInt(request.getParameter("birth_month"));
   int birth_day=Integer.parseInt(request.getParameter("birth_day"));
   java.util.Date birthDate=new java.util.Date();
   birthDate.setYear(birth_year-1900); 
   birthDate.setMonth(birth_month-1);
   birthDate.setDate(birth_day);
   Membership membership=new Membership(userId1, password, name, email, birthDate);
   Connection conn=ConnectionProvider.getConnection();
   try{
      MembershipDao dao=new MembershipDao();
      dao.insert(conn, membership);
   }catch(SQLException e){}
   finally { JdbcUtil.close(conn);}
   
%>

</div>
  </div>
<div id="footer"><img src="images/mainpage_39.png" width="1920" height="326" /></div>
<script type="text/javascript">
function mainpage(){
	location.href='mainpage.jsp';
}
</script>
</body>
</html>