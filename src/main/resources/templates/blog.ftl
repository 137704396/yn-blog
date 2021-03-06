<!DOCTYPE html>
<html>
<head>
    <title>softbabet博客</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href="${re.contextPath}/upload/favicon.png" rel="shortcut icon" type="image/x-icon">
    <link href="${re.contextPath}/themes/css/base-min.css" rel="stylesheet"/>
    <link href="${re.contextPath}/themes/css/main.css" rel="stylesheet"/>
    <link href="${re.contextPath}/themes/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="${re.contextPath}/themes/css/extends.css" rel="stylesheet"/>
</head>

<body>

<header class="ss-header">
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="logo-link" href="${re.contextPath}/">
                <img class="logo" src="${re.contextPath}/themes/img/logo.png">
            </a>
            <div class="-show-mobile">
                <a id="mobile-menu-icon">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </a>
                <nav id="mobile-menu">
                    <div id="una-menu-search-mobile" class="navbar-search-mobile">
                        <input class="input2" placeholder="请输入要搜索的关键词">
                        <a id="search2" href="${re.contextPath}/search/">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                    </div>
                    <a class="" href="${re.contextPath}/projects"> <span> 项目 </span></a>
                    <a class="" href="${re.contextPath}/blog"> <span> 博客 </span></a>
                    <a class="" href="${re.contextPath}/documents"> <span> 文档 </span></a>
                    <a class="" href="${re.contextPath}/pigeonhole"> <span> 归档 </span></a>
                    <a class="" href="${re.contextPath}/uselink"> <span> 资源链接 </span></a>
                    <a class="" href="${re.contextPath}/about"> <span> 关于我 </span></a>
                </nav>
            </div>
        </div>
        <div class="navbar-menu -hidden-mobile">
            <div class="navbar-start">
                <a class="navbar-item " href="${re.contextPath}/projects">项目</a>
                <a class="navbar-item " href="${re.contextPath}/blog">博客</a>
                <a class="navbar-item " href="${re.contextPath}/documents">文档</a>
                <a class="navbar-item " href="${re.contextPath}/pigeonhole">归档</a>
                <a class="navbar-item " href="${re.contextPath}/uselink">资源链接</a>
                <a class="navbar-item " href="${re.contextPath}/about">关于我</a>
            </div>


            <div class="navbar-end">
                <div class="navbar-item">
                    <div id="una-menu-search" class="navbar-search">
                        <input class="input" placeholder="请输入要搜索的关键词">
                        <a id="search" href="${re.contextPath}/search/">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>
<div class="main-data">
    <div style="width:100%;">
        <div class="ss-title">博客</div>
    </div>
    <div class="home-background -no-max-width no-opacity">
        <img src="${re.contextPath}/themes/img/cover-bg.png"/>
    </div>
    <div class="ss-layout-container">
        <main class="ss-layout-main">
            <#list blogsList.list as blog>
                <article class="ss-summary ss-card article">
                    <img src="${blog.mainPicture}" alt="cover"
                         class="cover">
                    <div class="container">
                        <h2 class="title">
                            <a href="${re.contextPath}/dtails/id/${blog.id}">${blog.title}</a>
                        </h2>
                        <div class="meta">
                            <i class="fa fa-user"> ${blog.author}</i>
                            <i class="fa fa-calendar-o"> ${blog.createTime}</i>
                            <i class="fa fa-home"> ${blog.typeStr}</i>
                            <i class="fa fa-eye"> ${blog.readNums}</i>
                        </div>
                        <div class="summary">${blog.description}</div>
                        <div class="tags">
                            <#list blog.tagsLists as tagxx>
                                <a class="tag" href="${re.contextPath}/tag/${tagxx.tagsCode}" target="_blank"
                                   rel="tag">${tagxx.tagsName}</a>
                            </#list>
                        </div>
                    </div>
                </article>
            </#list>
            <nav class="ss-pagination" data-total="${blogsList.total}" data-current="${blogsList.pageNum}">
                <ul id="ul-list" class="list">
                    <a href="/blog/page/1">
                        <li class="item -active">1</li>
                    </a>
                    <a href="/blog/page/2">
                        <li class="item"> 2</li>
                    </a>
                    <a href="/blog/page/2">
                        <li class="item"> 3</li>
                    </a>
                    ......
                    <a href="/blog/page/3">
                        <li class="item ">4</li>
                    </a>
                    <a href="/blog/page/4">
                        <li class="item ">5</li>
                    </a>
                    <a href="/blog/page/4">
                        <li class="item ">6</li>
                    </a>
                </ul>
            </nav>
        </main>

        <aside class="ss-layout-aside">
            <div class="ss-card">
                <h2 class="card-title custom-card-title">开源项目</h2>
                <div class="card-content">
                    <a href='https://gitee.com/yuan625' alt="" title="" target="_blank">
                        <img src='${re.contextPath}/themes/img/widget_6.svg' style="width:100%;"
                             alt='Fork me on Gitee'></img>
                    </a>
                </div>
            </div>
            <div class="ss-card">
                <h2 class="card-title custom-card-title">
                    最新阅读
                </h2>
                <div class="card-content">
                    <ol class="posts-list list-space-sm list-unstyled">
                        <#list blogLaterList as laterData>
                            <#if laterData_index == 0>
                                <li>
                                    <article
                                            class="post-overlay post-overlay-bottom post-overlay-floorfade post-overlay-xs">
                                        <div class="cover-img"
                                             style="background-image: url(${laterData.mainPicture})"></div>
                                        <div class="post-text inverse-text">
                                            <div class="post-text-wrap">
                                                <div class="post-text-inner">
                                                    <h3 class="post-title typescale-1">
                                                        ${laterData.title}
                                                    </h3>
                                                    <div class="post-meta">
                                                        <span><i class="fa fa-user"> ${laterData.author}</i></span>
                                                        <time class="time published">
                                                            <i class="fa fa-calendar-o"> ${laterData.createTime}</i>
                                                        </time>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="${re.contextPath}/dtails/id/${laterData.id}"
                                               class="link-overlay"></a>
                                        </div>
                                    </article>
                                </li>
                            </#if>
                            <#if laterData_index !=0>
                                <li>
                                    <article class="post post-horizontal post-horizontal-xxs">
                                        <div class="post-thumb min-height-70">
                                            <a href="#">
                                                <img src="${laterData.mainPicture}" alt=""
                                                     style="width: 80px;height: 80px">
                                            </a>
                                        </div>
                                        <div class="post-text">
                                            <h3 class="post-title typescale-0">
                                                <a href="${re.contextPath}/dtails/id/${laterData.id}"> ${laterData.title}</a>
                                            </h3>
                                            <div class="post-meta">
                                                <time class="time published">
                                                    <i class="fa fa-calendar-o"> ${laterData.createTime}</i>
                                                </time>
                                            </div>
                                        </div>
                                    </article>
                                </li>
                            </#if>
                        </#list>
                    </ol>
                </div>
            </div>

            <div class="ss-card">
                <h2 class="card-title custom-card-title">
                    热门文章
                </h2>
                <div class="card-content">
                    <ol class="posts-list list-space-sm list-unstyled">
                        <#list readMoreList as readmore>
                            <li>
                                <article class="post post-horizontal post-horizontal-xxs">
                                    <div class="post-thumb min-height-70">
                                        <a href="#">
                                            <img src="${readmore.mainPicture}"
                                                 alt="" style="width: 80px;height: 80px">
                                        </a>
                                    </div>
                                    <div class="post-text">
                                        <h3 class="post-title typescale-0">
                                            <a href="${re.contextPath}/dtails/id/${readmore.id}">${readmore.title}</a>
                                        </h3>
                                        <div class="post-meta">
                                            <time class="time published">
                                                <i class="fa fa-calendar-o">${readmore.createTime}</i>
                                            </time>
                                        </div>
                                    </div>
                                </article>
                            </li>
                        </#list>
                    </ol>
                </div>
            </div>
            <div class="ss-card ss-aside-tags">
                <h2 class="card-title custom-card-title">
                    标签<span class="card-extra custom-card-extra"></span>
                </h2>
                <ul class="tag-list">
                    <#list tagsTotall as tagg>
                        <li class="tag"><a href="${re.contextPath}/tag/${tagg.tagCode}">${tagg.tagName}</a></li>
                    </#list>
                </ul>
            </div>
            <div class="ss-card ss-aside-tags">
                <h2 class="card-title custom-card-title">
                    分类<span class="card-extra custom-card-extra"></span>
                </h2>
                <ul class="tag-list">
                    <#list classifTotall as classifg>
                        <li class="tag"><a
                                    href="${re.contextPath}/classfy/${classifg.classifyCode}">${classifg.classifyName}</a>
                        </li>
                    </#list>
                </ul>
            </div>
            <div class="ss-card ss-aside-tags">
                <h2 class="card-title custom-card-title">
                    系列<span class="card-extra custom-card-extra"></span>
                </h2>
                <ul class="tag-list">
                    <#list seriesTotall as seriesg>
                        <li class="tag"><a
                                    href="${re.contextPath}/series/${seriesg.sericsCode}">${seriesg.sericsName}</a></li>
                    </#list>
                </ul>
            </div>
        </aside>
    </div>
</div>

<footer class="ss-footer">
    <div class="container">
        <div class="links">
            <div class="cate">
                <h2 class="cate-title">个人链接</h2>
                <a class="link" href="https://gitee.com/yuan625">码云</a>
                <a class="link" href="https://github.com/yuanjs2019">Github</a>
                <a class="link" href="https://www.jianshu.com/u/58ce6f7c9fd0">简书</a>
            </div>
            <div class="cate">
                <h2 class="cate-title">社区</h2>
                <a class="link" href="https://github.com/yuanjs2019">Github</a>
            </div>

            <div class="cate">
                <h2 class="cate-title">友情链接</h2>
                <a class="link" href="https://www.ramostear.com/">谭潮红博客</a>
                <a class="link" href="https://xujin.org/">玹霖志博客</a>
                <a class="link" href="http://springcloud.cn">springcloud社区</a>
                <a class="link" href="http://blog.springcloud.cn">springcloud博客社区</a>
            </div>

            <div class="cate">
                <h2 class="cate-title">工具</h2>
                <a class="link" href="http://www.processon.com/">ProcessOn</a>
                <a class="link" href="http://md.aclickall.com/">微信排版</a>
                <a class="link" href="https://www.gaoding.com">稿定设计</a>
                <a class="link" href="https://www.draw.io/">Draw</a>
            </div>

        </div>
        <div class="qrcode">
            <div>
                <img class="qrcode-img" src="${re.contextPath}/themes/img/qq.jpg"/>
                <p class="qrcode-desc"><i class="fa fa-wechat"></i>625621105</p>
            </div>
            <div>
                <img class="qrcode-img" src="${re.contextPath}/themes/img/weixin.jpg"/>
                <p class="qrcode-desc"><i class="fa fa-qq"></i>yuan782063616</p>
            </div>
        </div>
    </div>
    <div class="copyright">
        <p>
            © 2020 Softbabert
            <a href="#">京ICP备xxx号</a>
            <span id="busuanzi_container_site_pv">
            本站访问量：<span id="busuanzi_value_site_pv"></span>次
        </span>
            &nbsp;
            <span id="busuanzi_container_site_uv">
            您是本站第 <span id="busuanzi_value_site_uv"></span> 位访问者
        </span>
        </p>
    </div>
</footer>
<script src="${re.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    //进入加载
    $(function () {
        $("#ul-list").remove();
        var html = '<ul id="ul-list" class="list">';
        var pageNum = ${blogsList.pageNum};
        var pages = ${blogsList.pages};
        if (pages < 1) {
        } else if (0 < pages && pages < 4) {
            for (let i = 1, len = pages + 1; i < len; i++) {
                if (i == pageNum) {
                    html += '<a href="${re.contextPath}/blog/page/' + i + '"> <li class="item -active">' + i + '</li></a>'
                } else {
                    html += '<a href="${re.contextPath}/blog/page/' + i + '"><li class="item ">' + i + '</li></a>';
                }
            }
        } else {
            if (pageNum == 1) {
                html += '<a href="${re.contextPath}/blog/page/1"><li class="item -active">1</li></a>'
                    + '<a href="${re.contextPath}/blog/page/2"><li class="item ">2</li></a>'
                    + '<a href="${re.contextPath}/blog/page/3"><li class="item ">3</li></a>'
            } else if (pageNum == pages) {
                html += '<a href="${re.contextPath}/blog/page/' + (pages - 2) + '"><li class="item ">' + (pages - 2) + '</li></a>'
                    + '<a href="${re.contextPath}/blog/page/' + (pages - 1) + '"><li class="item ">' + (pages - 1) + '</li></a>'
                    + '<a href="${re.contextPath}/blog/page/' + pages + '"><li class="item -active">' + pages + '</li></a>';
            } else {
                html += '<a href="${re.contextPath}/blog/page/' + (pageNum - 1) + '"><li class="item ">' + (pageNum - 1) + '</li></a>'
                    + '<a href="${re.contextPath}/blog/page/' + pageNum + '"><li class="item -active">' + pageNum + '</li></a>'
                    + '<a href="${re.contextPath}/blog/page/' + (pageNum + 1) + '"><li class="item ">' + (pageNum + 1) + '</li></a>';
            }
        }
        html += '</ul>';
        $(".ss-pagination").append(html);
    });


    //搜索失去焦点实现
    $(".input").blur(function () {
        let searchvalue = $(".input").val();
        let orgdata = $('#search').attr('href');
        $('#search').attr('href', orgdata + "1/" + searchvalue)
    });
    $("#mobile-menu-icon").click(function () {
        $("#mobile-menu").addClass("-active")
    });

    $(".main-data").mouseup(function () {
        $("#mobile-menu").removeClass()
    });
    $(".input2").blur(function () {
        let searchvalue = $(".input2").val();
        let orgdata = $('#search2').attr('href');
        $('#search2').attr('href', orgdata + "1/" + searchvalue)
    })
</script>
</body>
</html>