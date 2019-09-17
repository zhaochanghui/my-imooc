<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<jsp:include page="../home_top.jsp" />
<style>
    .pagination li{float:left;margin-left:10px;list-style: none;}
</style>
    <div id="content" class="site-content">
        <main id="main" class="site-main" role="main">
            <div class="container">
                <div id="primary" class="content-area">

                    <c:forEach items="${lists}" var="item">
                        <article id="post-12"
                                 class="post-12 post type-post status-publish format-standard has-post-thumbnail hentry category-life-style category-photography tag-friends tag-love tag-photography">

                            <header class="entry-header">
                                <h2 class="entry-title"><a href="<%=request.getContextPath()%>/home/article_detail/${item.id}">${item.title}</a></h2>
                                <div class="entry-meta">
                                    <span class="posted-on"><a href=""><time class="entry-date published"
                                                                             datetime="2018-08-24">${item.updateTime}</time><time
                                            class="updated" datetime="2019-01-20T11:21:52+00:00">  </time></a></span><span
                                        class="byline"> <span class="author vcard"><a class="url fn n"
                                                                                      href="##">admin</a></span></span><span
                                        class="cat-links"><a
                                        href="<%=request.getContextPath()%>/home/article_cate?cate=${item.category.id}"
                                        rel="category tag">${item.category.name}</a> <a
                                        href="#"
                                        rel="category tag"> </a></span></div><!-- .entry-meta -->
                            </header><!-- .entry-header -->


                            <div class="entry-content">
                                <p>${item.brief}…</p>
                                <p><a href="<%=request.getContextPath()%>/home/article_detail/${item.id}" class="btn-more">详情<span class="arrow-more">→</span></a></p>
                            </div><!-- .entry-content -->


                        </article>
                        <!-- #post-12 -->
                    </c:forEach>



                    <!--
                    <form method="post" id="formIndex" >
                        <input type="hidden" name="pageNum" id="pageNum" >
                        <input type="hidden" name="pageSize" id="pageSize" >
                    </form>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <select class="form-control" id="pageSizeSelect" >
                                <option value="1"  <c:if test="${page.pageSize==1}"> selected </c:if> >每页1行</option>
                                <option value="2"  <c:if test="${page.pageSize==2}"> selected </c:if> >每页2行</option>
                            </select>
                        </div>
                    </form> -->
                    <nav>
                        <ul class="pagination">
                            <c:forEach var="p" items="${page.navigatepageNums}">
                                <li  <c:if test="${page.pageNum==p}"> class="active"  </c:if>><a class="btn-more" href="<%=request.getContextPath()%>/home/article_index?pageNum=${p}" class='page'>${p }</a></li>
                            </c:forEach>
                        </ul>
                    </nav>
                    <script type="text/javascript">
                        $(function() {
                            $('.pagination li').click(function(){
                                $('#pageSize').val($('#pageSizeSelect').val());
                                $('#pageNum').val($(this).text());
                                $('#formIndex').submit();
                            });
                            $('#pageSizeSelect').change(function(){
                                $('#pageSize').val($('#pageSizeSelect').val());
                                $('#pageNum').val($('.pagination li .active').text());
                                $('#formIndex').submit();
                            });
                        });
                    </script>

                </div><!-- #primary -->

               <!-- -aside-->
                <jsp:include page="../home_link.jsp" />
               <!-- -aside-->

            </div><!-- .container -->
        </main><!-- #main -->

    </div><!-- #content -->



<jsp:include page="../home_bottom.jsp" />