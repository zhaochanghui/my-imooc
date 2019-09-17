<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<jsp:include page="../home_top.jsp" />

    <div id="content" class="site-content">
        <main id="main" class="site-main content-space-enabled" role="main">
            <div class="container">
                <div id="primary" class="content-area">


                    <article id="post-12"
                             class="post-12 post type-post status-publish format-standard has-post-thumbnail hentry category-life-style category-photography tag-friends tag-love tag-photography">

                        <header class="entry-header">
                            <h1 class="entry-title">${obj.title}</h1>
                            <div class="entry-meta">
                                <span class="posted-on"><a
                                        href="https://demo.wpcharms.com/blog-kit/default/the-greatest-gift-of-life-is-friendship/"
                                        rel="bookmark"><time class="entry-date published"
                                                             datetime="2018-08-24T11:20:55+00:00">${obj.updateTime}</time><time
                                        class="updated" datetime="2019-01-20T11:21:52+00:00"> </time></a></span><span
                                    class="byline"> <span class="author vcard"><a class="url fn n"
                                                                                  href="#">admin</a></span></span><span
                                    class="cat-links"><a
                                    href="<%=request.getContextPath()%>/home/article_cate?cate=${obj.category.id}"
                                    rel="category tag">${obj.category.name}</a> <a
                                    href="https://demo.wpcharms.com/blog-kit/default/category/photography/"
                                    rel="category tag"></a></span></div><!-- .entry-meta -->

                        </header><!-- .entry-header -->


                        <div class="post-thumbnail">
                            <%--<img width="1280" height="853"--%>
                                 <%--src="<%=request.getContextPath()%>/assets/home_files/friendship.jpeg"--%>
                                 <%--class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt=""--%>
                                 <%--srcset="https://demo.wpcharms.com/blog-kit/default/wp-content/uploads/sites/5/2019/01/friendship.jpeg 1280w, https://demo.wpcharms.com/blog-kit/default/wp-content/uploads/sites/5/2019/01/friendship-300x200.jpeg 300w, https://demo.wpcharms.com/blog-kit/default/wp-content/uploads/sites/5/2019/01/friendship-768x512.jpeg 768w, https://demo.wpcharms.com/blog-kit/default/wp-content/uploads/sites/5/2019/01/friendship-1024x682.jpeg 1024w"--%>
                                 <%--sizes="(max-width: 1280px) 100vw, 1280px">--%>
                        </div><!-- .post-thumbnail -->


                        <div class="entry-content">

                            <p>${obj.brief}</p>


                            <p>${obj.content}</p>
                        </div><!-- .entry-content -->

                        <footer class="entry-footer">
                            <span class="tags-links"><a href="#"
                                                        rel="tag"></a> <a
                                    href="#" rel="tag"></a> <a
                                    href="#" rel="tag"> </a></span>
                        </footer><!-- .entry-footer -->

                    </article><!-- #post-12 -->

                    <nav class="navigation post-navigation" role="navigation">
                        <h2 class="screen-reader-text">Post navigation</h2>
                        <div class="nav-links">
                                    <a href="javascript:history.go(-1)"
                                    rel="prev"><span class="nav-post-title nav-post-title-previous">← 返回</span></a>
                            </div>
                        </div>
                    </nav>
                </div><!-- #primary -->

                <!-- -aside-->
                <jsp:include page="../home_link.jsp" />
                <!-- -aside-->


            </div><!-- .container -->
        </main><!-- #main -->


    </div><!-- #content -->

<jsp:include page="../home_bottom.jsp" />