<!DOCTYPE html>
<html>
<head>
	<title>@yield("title")</title>
	
	
	<link rel="stylesheet" type="text/css" href='{{ asset("css/bootstrap.min.css") }}'>

	
	<link rel="stylesheet" type="text/css" href='{{ asset("css/style.css")}}'>

	<link rel="stylesheet" type="text/css" href='{{ asset("css/font-awesome.min.css")}}'>


</head>	
<body>

<div class="container">

	@yield("content")
</div>
</body>
</html>