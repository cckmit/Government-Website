<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/jcrop/css/jquery.Jcrop.css"/>
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/jcrop/js/jquery.Jcrop.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#select img").Jcrop({
			aspectRatio:49/12,
			onChange: showPreview,
			onSelect: showPreview,
			setSelect: [0,0,490,120]
		});
	})
	
	function showPreview(coords)
	{
		if (parseInt(coords.w) > 0)
		{
			var rx = 490 / coords.w;
			var ry = 120 / coords.h;

			jQuery('#preview').css({
				width: Math.round(rx * 640) + 'px',
				height: Math.round(ry * 421) + 'px',
				marginLeft: '-' + Math.round(rx * coords.x) + 'px',
				marginTop: '-' + Math.round(ry * coords.y) + 'px'
			});
		}
	}
</script>
</head>
<body>
	<div style="width:490px;height:120px;overflow:hidden;">
		<img src="<%=request.getContextPath() %>/resources/indexPic/temp/1371546191171.jpg" id="preview" />
	</div>
	<div id="select">
	<img src="<%=request.getContextPath() %>/resources/indexPic/temp/1371546191171.jpg"/>
	</div>
</body>
</html>