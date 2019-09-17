<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="views/top.jsp" />
<script>
    window.location="<%=request.getContextPath()%>/home/article_index";
</script>
            <h1 class="page-header">Dashboard</h1>

            <div class="row placeholders">

            </div>

            <h2 class="sub-header">Section title</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,001</td>
                        <td>Lorem</td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                    </tr>

                    </tbody>
                </table>
            </div>

<jsp:include page="views/bottom.jsp" />