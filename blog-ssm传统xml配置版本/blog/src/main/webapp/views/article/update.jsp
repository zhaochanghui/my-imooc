<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="../top.jsp" />

<h1 class="page-header">Dashboard</h1>

<div class="row placeholders">

</div>

<h2 class="sub-header">Section title</h2>
<div class="table-responsive">

<form:form action="${pageContext.request.contextPath}/article/update" method="post" modelAttribute="article">
    <form:hidden path="id" />
<p> title:<form:input path="title" cssClass="form-control"/> </p>
<p> brief:<form:input path="brief" cssClass="form-control"/> </p>
<p> content: <form:hidden path="content" cssClass="form-control"/> </p>
    <div id="editor">${article.content}</div>

<p>categoyr:<form:select path="categoryId" items="${categories}" itemValue="id" itemLabel="name" cssClass="form-control"></form:select> </p>

</form:form>
    <p><button class="btn-success" id="tijiao">提交</button></p>
</div>

<script type="text/javascript">
    $(function () {
        var E = window.wangEditor;
        var editor = new E('#editor');
        // 自定义菜单配置
        editor.customConfig.menus = [
            'underline',
            'link',
            'image',
            'emoticon',
            'code',
            'undo',
            'redo'
        ];
        // 下面两个配置，使用其中一个即可显示“上传图片”的tab。但是两者不要同时使用！！！
        //editor.customConfig.uploadImgShowBase64 = true  ; // 使用 base64 保存图片
        editor.customConfig.uploadImgServer = '<%=request.getContextPath()%>/upload';
        editor.customConfig.debug=true;
        editor.customConfig.uploadFileName = 'myFileName';
        editor.customConfig.uploadImgHooks = {
            success: function (xhr, editor, result) {
                // 图片上传并返回结果，图片插入成功之后触发
                // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
                console.log(result);
            }
        };
        editor.create();

        $('#tijiao').click(function(){
            var content =  editor.txt.html();

            $('#content').val(content);
            $('form').submit();
        });
    });
</script>


<jsp:include page="../bottom.jsp" />