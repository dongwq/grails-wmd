<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>WMD Example</title>

    %{--<meta name="layout" content="admin_layout"/>--}%

    <r:require module="wmd"/>

    <r:layoutResources/>
    <jq:jquery>
        <script type="text/javascript">
            setup_wmd({
                input: "notes",
                button_bar: "notes-button-bar",
                preview: "notes-preview",
                output: "copy_html"  ,
                helpLink: "${request.contextPath}/wmd/markdownhelp.html"
            });
        </script>
    </jq:jquery>

</head>
    <body>
    <section id="list" class="first">
        <h1>WMD Example</h1>

        <div>
            <div id="notes-button-bar" style="width:440px;"></div>
            <textarea id="notes" name="copy" cols="40" rows="8"></textarea>
            <div id="notes-preview"></div>
            <input type="text" name="copy_html" value="" id="copy_html">
        </div>

    </section>
    <r:layoutResources/>

    </body>
</html>