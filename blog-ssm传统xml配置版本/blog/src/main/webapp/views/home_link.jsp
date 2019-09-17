<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<aside id="secondary" class="widget-area">
    <div class="side-bar">
        <section id="search-2" class="widget widget_search">
            <form role="search" method="get" class="search-form"
                  action="<%=request.getContextPath()%>/home/article_search">
                <label>
                    <span class="screen-reader-text">Search for:</span>
                    <input type="search" class="search-field" placeholder="Search …" value="" name="search">
                </label>
                <input type="submit" class="search-submit" value="搜搜">
            </form>
        </section>
        <section id="recent-posts-2" class="widget widget_recent_entries"><h2 class="widget-title">
            最近更新</h2>
            <ul>
                <c:forEach items="${hots}" var="post">
                    <li>
                        <a href="<%=request.getContextPath()%>/home/article_detail/${post.id}">${post.title}</a>
                    </li>
                </c:forEach>


                <%--<li>--%>
                    <%--<a href="https://demo.wpcharms.com/blog-kit/default/we-seek-to-be-the-best/">We seek--%>
                        <%--to be the best</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="https://demo.wpcharms.com/blog-kit/default/the-message-of-love-and-peace/">The--%>
                        <%--message of love and peace</a>--%>
                <%--</li>--%>
            </ul>
        </section>
      <!--  <section id="archives-2" class="widget widget_archive"><h2 class="widget-title">时间</h2>
            <ul>
                <li><a href="https://demo.wpcharms.com/blog-kit/default/2018/08/">August 2018</a></li>
                <li><a href="https://demo.wpcharms.com/blog-kit/default/2018/07/">July 2018</a></li>
                <li><a href="https://demo.wpcharms.com/blog-kit/default/2016/06/">June 2016</a></li>
            </ul>
        </section>
        <section id="categories-2" class="widget widget_categories"><h2 class="widget-title">
            Categories</h2>
            <ul>
                <li class="cat-item cat-item-2"><a
                        href="https://demo.wpcharms.com/blog-kit/default/category/fashion/"
                        title="Description for the category Fashion goes here. Leave description field empty if you want to hide it. ">Fashion</a>
                </li>
                <li class="cat-item cat-item-4"><a
                        href="https://demo.wpcharms.com/blog-kit/default/category/life-style/"
                        title="Description for the category Life Style goes here. Leave description field empty if you want to hide it. ">Life
                    Style</a>
                </li>
                <li class="cat-item cat-item-5"><a
                        href="https://demo.wpcharms.com/blog-kit/default/category/photography/"
                        title="Description for the category Photography goes here. Leave description field empty if you want to hide it. ">Photography</a>
                </li>
            </ul>
        </section>
        <section id="meta-2" class="widget widget_meta"><h2 class="widget-title">Meta</h2>
            <ul>
                <li><a href="https://demo.wpcharms.com/blog-kit/default/wp-login.php">Log in</a></li>
                <li><a href="https://demo.wpcharms.com/blog-kit/default/feed/">Entries <abbr
                        title="Really Simple Syndication">RSS</abbr></a></li>
                <li><a href="https://demo.wpcharms.com/blog-kit/default/comments/feed/">Comments <abbr
                        title="Really Simple Syndication">RSS</abbr></a></li>
                <li><a href="https://wordpress.org/"
                       title="Powered by WordPress, state-of-the-art semantic personal publishing platform.">WordPress.org</a>
                </li>
            </ul>
        </section> -->
    </div>
</aside><!-- #secondary -->