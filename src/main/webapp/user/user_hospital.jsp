<%--
  Created by IntelliJ IDEA.
  User: hzq
  Date: 2019/9/23
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <base href="${basePath}"/>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>医院简介</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="images/favicon.ico"/>

    <!-- CSS
    ================================================== -->
    <%--<link href="css/layui.css" rel="stylesheet">--%>
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet">
    <!-- Photo Swipe Image Gallery -->
    <link rel='stylesheet prefetch' href='css/photoswipe.css'>
    <link rel='stylesheet prefetch' href='css/default-skin.css'>

    <!-- Main structure css file -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Google fonts -->
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Habibi' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Cinzel+Decorative:900' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .card-header {
            -webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.05);
            box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.05);
            margin-bottom: 0;
            padding: 1rem 1.25rem;
            background-color: #fff;
            border-bottom: 1px solid #eee;
        }
        .align-items-center{
            -ms-flex-align:center!important;
            align-items:center!important
        }
        .d-flex{
            display:-ms-flexbox!important;
            display:flex!important
        }
    </style>
</head>

<body>


<!-- BEGAIN PRELOADER -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- END PRELOADER -->

<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-heartbeat"></i></a>
<!-- END SCROLL TOP BUTTON -->

<!--=========== BEGIN HEADER SECTION ================-->
<header id="header">
    <!-- BEGIN MENU -->
    <div class="menu_area">

        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">

            <div class="container">
                <div class="navbar-header">
                    <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- LOGO -->
                    <!-- TEXT BASED LOGO -->
                    <a class="navbar-brand" href="hello.jsp"><i class="fa fa-heartbeat"></i>Eleven <span>门诊</span></a>
                    <!-- IMG BASED LOGO  -->
                    <!--  <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>   -->
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul id="top-menu" class="nav navbar-nav navbar-right main-nav" >
                        <li class="active"><a href="hello.jsp">首页</a></li>
                        <li><a href="user/user_hospital.jsp">医院概括</a></li>
                        <li><a href="card/findDept">查看科室</a></li>
                        <li><a href="findAllNewsTitle">新闻中心</a></li>
                        <li class="dropdown">
                            <a href="card/findCase?userId=${sessionScope.card.userId}" class="dropdown-toggle"><!--data-toggle="dropdown"-->查看个人病例 <!--<span class="fa fa-angle-down"></span>--></a>
                        </li>
                        <li><a href="card/updateCardByUserId?userId=${sessionScope.card.userId}">修改个人信息</a></li>
                    </ul>

                </div><!--/.nav-collapse -->

            </div>

        </nav>
    </div>
    <!-- END MENU -->
</header>
<!--=========== END HEADER SECTION ================-->

<!--=========== BEGIN SLIDER SECTION ================-->
<section id="sliderArea">
    <!-- Start slider wrapper -->
    <div class="top-slider">
        <!-- Start First slide -->
        <div class="top-slide-inner">
            <div class="slider-img">
                <img src="images/hospital.jpg" alt="">
            </div>
        </div>
        <!-- End First slide -->

        <!-- Start 2nd slide -->
        <div class="top-slide-inner">
            <div class="slider-img">
                <img src="images/hospital1.jpg" alt="">
            </div>
        </div>
    </div><!-- /top-slider -->
</section>



<!--=========== BEGAIN Testimonial SECTION ================-->

<%--<section id="testimonial">--%>
    <div class="card-header d-flex align-items-center"style="margin-left: 12%">
        <h3 class="h4">当前位置：医院简介</h3>
    </div>
    <div class="container">
        <%--<div class="row">--%>
            <div style="margin: 0;padding: 0;line-height: 3em;font-weight: bold;font-family:'宋体';font-size: 20px">
            Eleven建于1958年，国家卫生健康委委管医院，集医疗、教学、科研、预防、康复与保健为一体的综合性三甲医院。2018年底，在岗职工5157人，开放床位1891张。医院有36个临床科室、10个医技科室。有27个博士点、1个临床博士后流动站。在岗博士生导师57人，中国科学院院士1人、中国工程院院士1人，国家千人计划1人，国家自然科学基金杰出青年基金获得者3人、科技部“973”首席科学家1人、教育部“长江学者特聘教授”2人，2人入选国家级“新世纪百千万人才工程”，青年千人计划1人，国家自然科学基金优秀青年科学基金获得者4人，卫生部突出贡献专家10人。
            　　北医三院脊柱外科是国内最强的学科，生殖医学中心的治疗方法最全面、规模是国际最大之一，中国大陆首例试管婴儿在此诞生。运动医学研究所是新中国最早成立、国内唯一的中国奥委会指定运动员伤病防治中心。眼科在眼外伤、角膜移植、白内障和青光眼等方面处于国内第一方阵；消化科在溃疡病发病机制研究及治疗、早期胃癌的诊疗等领域居国内前列；心血管内科在冠心病介入治疗、心脏病人康复治疗、心血管临床与基础协调发展等方面成绩突出；成形科、职业病科是国内率先成立的临床特色学科。
            　　经过几代人的共同努力，北医三院进入国内高水平医院行列，有20个国家临床重点专科（骨科、药剂科（临床药学）、病理科、专科护理、检验科、消化科、妇科、产科、职业病科、耳鼻喉科、心血管分子生物学与调节肽重点实验室、呼吸内科、神经内科、普通外科、泌尿外科、眼科、麻醉科、康复医学科、成形科（整形外科）、运动医学科），妇产科为国家妇产疾病临床医学研究中心，产科、康复医学科为国家产科专业、国家康复医学医疗质量管理和控制中心。
            　　十多年来，北医三院门、急诊量始终居于北京市前列。2018年，服务门诊患者403万余人次，急诊患者近27万人次，出院患者逾11万人次，完成手术6.3万例次。平均住院日为5.51天/人次。在北京市DRGs（疾病诊断相关组）综合评价中，北医三院各项主要管理指标达先进水平。在北医三院出院患者中，有三分之一来自全国各地。
            　　北医三院有18个北京市住院医师规范化培训专业基地、2个国家卫生健康委员会专科医师规范化培训基地、2个北京市住院医师规范化培训技能考核中心。作为北京大学临床医学院，每年有近800名医学生、350余名博士生、硕士生。同时，承担着1500余名进修医生和近400名北京市住院医师规范化培训任务。每年有100个国家级和北京市级继续医学教育项目。
            　　北医三院有3个教育部创新团队：骨科、运动医学研究所、妇产科；3个教育部重点实验室：辅助生殖、分子心血管学（参与）和视觉损伤与修复（参与）；1个国家卫生健康委重点实验室：心血管分子生物学与调节肽；8个北京市重点实验室：磁共振成像设备与技术、脊柱疾病研究、生殖内分泌与辅助生殖技术、心血管受体研究、运动医学关节伤病、幽门螺杆菌感染与上胃肠疾病、眼部神经损伤重建保护与康复、神经退行性疾病生物标志物研究及转化。
            　　截至2018年底，北医三院35个学科156人次担任中华医学会等主系列学术团体二级分会副主委以上任职；16个学科36人次在中国科技论文统计源期刊收录杂志副主编以上人职。
            　　    北医三院为第一完成单位，乔杰院士团队牵头的“配子胚胎发育研究与生育力改善新方法的应用”研究荣获2017年国家科技进步奖二等奖，“生殖细胞发育的表观遗传调控机制及体外干预方法研究”项目荣获2018年中华医学科技一等奖；骨科刘忠军教授团队牵头的“3D打印钛合金骨科植入物的临床应用与关键技术研究”荣获2018年北京市科学技术奖一等奖。
            　　　2018年，北医三院辅助生殖技术系列研究成果作为改变民生的临床技术唯一代表，入选“伟大的变革——庆祝改革开放40周年大型展览”。
            　　近年来，医院集团化发展初具规模。2018年，受张家口市人民政府和崇礼区政府委托，全面接管崇礼区人民医院，北医三院崇礼院区揭牌；受北京大学指派，与延安市政府正式签约，托管延安市中医医院，北医三院延安分院揭牌；与首都机场集团公司合作，接管北京首都国际机场医院，北医三院首都国际机场院区揭牌。2019年，与兵器工业集团合作，接管兵器工业北京北方医院。海淀北部医学中心建设稳步推进，北医三院顺义院区进入筹备阶段。集团化发展战略为学科发展赢得了宝贵的空间，也为医院未来合理布局提供了前所未有的机遇。
            　　北医三院以强烈的社会责任感积极投身公立医院改革。近年来不断提高管理水平，参与多个国家级重大项目和课题的研究，取得成果被政府相关管理部门所采纳。在临床路径、优质服务护理工程、对口支援、医联体建设、援藏援疆支边等方面发挥了国家级医院的作用。同时，医院还承担着国家重大活动的医疗保障工作，承担着重大突发事件的医疗救援任务。近年来，出色完成了北京奥运会、建国六十周年庆典、抗震救灾、健康快车、埃博拉出血热病人救援、非洲“光明行”、历次全国“两会”等各项医疗保障任务。
            　　医院连续多年荣获多项荣誉。荣获全国文明单位、全国卫生文化建设先进单位、全国医药卫生系统先进集体、全国医药卫生系统创先争优活动先进集体、全国综合医院中医药工作示范单位、首都十大疾病科技攻关与管理工作核心单位等，神经内科、心血管内科、眼科、运动医学研究所、药剂科等荣获“全国青年文明号”荣誉称号，医院被中华全国总工会授予“模范职工之家”称号。
            　　2018年，北医三院迎来六十华诞，金秋十月，中国医院创新发展峰会暨北医三院建院60周年学术研讨会在北京国际会议中心召开。大会以“创新点亮未来”为主题，与国内外同行共同探索新时代大型医院创新发展之路，引起国内同行的广泛关注。拥有60年历史的北医三院，积淀历久弥新的医院文化，充满朝气与活力。全体北医三院人将继续秉承“团结、奉献、求实、创新”的院训精神，以精湛的医术和高度的责任感承载生命的重托，为建设“国家级医疗中心、高水平的疑难重症诊治中心、临床医学研究中心和医学人才培养基地”而努力奋斗！
            </div>
        </div>
    </div>
</section>
<!--=========== End Testimonial SECTION ================-->
<footer id="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="footer-copyright">
                        <p>Eleven门诊</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>


<!-- jQuery Library  -->
<script src="js/jquery.js"></script>
<!-- Bootstrap default js -->
<script src="js/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="js/slick.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.79639.js"></script>
<!-- counter -->
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<!-- Doctors hover effect -->
<script src="js/snap.svg-min.js"></script>
<script src="js/hovers.js"></script>
<!-- Photo Swipe Gallery Slider -->
<script src='js/photoswipe.min.js'></script>
<script src='js/photoswipe-ui-default.min.js'></script>
<script src="js/photoswipe-gallery.js"></script>

<!-- Custom JS -->
<script src="js/custom.js"></script>
<script src="js/layui.js"></script>

</body>
</html>
