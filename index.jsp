<%--
  Created by IntelliJ IDEA.
  User: 86139
  Date: 2021/2/2
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <script>
    function requestTest(url) {
      const formData = new FormData();
      // formData.append('file', props.file);

      <%--let url = props.url || _asynUploadUrl(props.path, props.fileName);--%>
      <%--if (url.indexOf('http') !== 0) {--%>
      <%--  url = `${configs.apiUrl}${url}`;--%>
      <%--}--%>
      const xhr = new XMLHttpRequest(); // XMLHttpRequest 对象
      xhr.open('get', url, true); // post方式，url为服务器请求地址，true 该参数规定请求是否异步处理。
      // xhr.setRequestHeader('X-Auth-Token', tokenUtile.get());
      xhr.onload = (evt) => {
        try {
          const resTxt = evt.target.responseText
          console.log("resTxt:%s", resTxt)
          // const res = JSON.parse(resTxt);

        } catch (e) {
          console.error(e)
        }
      }; // 请求完成
      xhr.onerror = (e) => {
        console.error(e)
      }; // 请求失败
      xhr.upload.onprogress = (event) => {
        console.log('progress:%f', (event.loaded * 100) / event.total)
      }; // 【上传进度调用方法实现】
      xhr.upload.onloadstart = function () {
        // 上传开始执行方法
      };
      xhr.send(formData); // 开始上传，发送form数据
    }
  </script>
  <body>
  <input type="button" value="get请求啊" onclick='requestTest("http://localhost:8080/testhttp/liuyang?userName=zhangsan&age=18&sex=1&abctest")'>
  </body>
</html>
