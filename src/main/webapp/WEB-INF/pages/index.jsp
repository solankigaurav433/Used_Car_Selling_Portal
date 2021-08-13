<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<html>
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("image/carBg.png");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
.btn2 {
				width: 20%;
				padding: 12px; 
				background-color: ;
				font-family: georgia;
				font-size: 25px;
			
				border: outset;
				}
		.btn2:hover {
				background-color: teal;
				
				}
		
</style>
</head>

<body>
<div class="bg-image"></div>

<div class="bg-text">
  <h1 style="font-family: Times New Roman; font-size: 40px">ABC Cars Pte Ltd</h1>
  <h2 style="font-size:50px; font-family: Times New Roman ">Click below to Explore</h2>
  <button class="btn2"><a style="text-decoration:none; font-family: Times New Roman; font-size:30px " href="reg">REGISTER</a></button>
  <button class="btn2"><a style="text-decoration:none; font-family: Times New Roman; font-size:30px " href="login">LOGIN</a></button>
</div>

</body>


</html>
