<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>springmvc图片上传与ueditor兼容集成</title>
<script type="text/javascript" src="/js/jquery.mini.js"></script>
<script type="text/javascript" src="/js/image.js"></script>
<script type="text/javascript" src="/js/jquery.city.js"></script>
<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
	<table>
		<tr>
			<td>SpringMVC 上传图片</td>
		</tr>
		<tr>
			<td>
			<form action="/image/create" method="post" enctype="multipart/form-data">
			<input name="image" type="file" />
			 <input type="submit" value="submit">
			 </form>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
			 </td>
		</tr>
		<tr>
			<td>UEditor</td>
		</tr>
		<tr>
			<td><script id="editor" type="text/plain" name="content"
					style="height:200px;">${article.content}</script> <input
				type="hidden" name="contentType" value="text/html" /></td>
		</tr>


	</table>
</body>
<script type="text/javascript">
	var ue = UE.getEditor('editor');

	$(function() {
		$("form").inputlimit().autovalidate();
	});
</script>
</html>