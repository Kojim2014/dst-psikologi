<head>
	<meta charset="utf-8">
	<title><?php echo $title ?></title>

	<style type="text/css">

	::selection{ background-color: #E13300; color: white; }
	::moz-selection{ background-color: #E13300; color: white; }
	::webkit-selection{ background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		font: 13px/20px normal Helvetica, Arial, sans-serif;
		color: #4F5155;
		border:1px solid #53BD84;
		min-height: 620px;
	}
	
	footer{
	padding:10px;
	margin:20px 0 0 0;
	}
	
	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
	}

	h1 {
		color: #444;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 19px;
		font-weight: normal;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body{
		margin: 0 15px 0 15px;
	}
	
	p.footer{
		text-align: right;
		font-size: 11px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 20px 0 0 0;
	}
	
	#container{
		margin: 10px;
		border: 1px solid #D0D0D0;
		-webkit-box-shadow: 0 0 8px #D0D0D0;
	}
	
	.menu-wrap {
		background-color:#53bd84;
		height:50px;
		line-height:50px;
		position:relative;
		
	}
	
	.menu-wrap ul {
	list-style:none;
	
	}
	
	.menu-wrap ul li a {
		float:left;
		padding: 0 10px 0 10px;
		display:block;
		text-align:center;
		color:#FFF;
		text-decoration:none;
		text-transform:uppercase;
	}
 
	.menu-wrap ul li a:hover {
		background-color:#666;
		display:block;
	}
 
	
	.header{
	margin-bottom:-15px;
	background-color: #53BD84;
	color: #fff;
	}
	.header > h1{
	color: #fff;
	}
	#nav_gangguan{
		margin: 10px;
		border: 1px solid #D0D0D0;
		-webkit-box-shadow: 0 0 8px #D0D0D0;
	}
	
	.gambarberanda{
	margin: 10px 0 0 0;
	padding: 20px 0 0 0;
	width: 100%;
	height: 300px;
	opacity: 0.6;
	background-image: url("<?php echo base_url('asset/img/1022262620X310.jpg')?>");
	background-size:cover
	
	}
	.gambarberanda > center >h2{
	color: #800000;
	font-size:36px;
	font-weight:bold;
	}
	
	</style>
</head>

<body>
<div class="header"><h1>Sistem Pakar Diagnosa Gangguan Psikologis Emosi/Kecemasan</h1></div>
 <div class="menu-wrap">
	<ul>
		<li><?php echo anchor('beranda','Beranda') ?></li>
		<li><?php echo anchor('pakar','Diagnosa') ?></li>
		<li><?php echo anchor('gangguan_psikis/tampil','Jenis-jenis Gangguan') ?></li>
	</ul>
  </div>

</body>


