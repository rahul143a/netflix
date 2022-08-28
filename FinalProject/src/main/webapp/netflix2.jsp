

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="netflix2.css">
</head>
<body>
	<input type="hidden" id="status"
		value="<%= request.getAttribute("status") %>">
	<section class="first">
		<div class="navbar">
			<div class="logo">
				<img src="img/nt4.png" alt="img">
			</div>
			<div class="button">
				<div id="google_translate_element"></div>
				<script type="text/javascript"
					src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

				<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>


				<a href="signin.jsp">
					<button id="button2">Sign up</button>
				</a>
			</div>
		</div>
		<div class="centant">
			<h1>
				Unlimited movies, TV<br> shows and more.
			</h1>

			<p style="font-size: 30px;">Watch anywhere. Cancel anytime.</p>
			<p style="font-size: 21px; padding: 15px;">Ready to watch? Enter
				your email to create or restart your membership.</p>

		</div>
		<center>
			<div class="form">
				<form action="login" method="post">
					<div class="input">
						<input type="email" name="email" id="email"
							placeholder="Email Address" style="height: 50px; width: 470px;">
						<button id="button4">Get Started&nbsp; &nbsp;&gt;</button>
					</div>

				</form>
			</div>
	</section>
	</center>

	<section class="style1">
		<div class="n2">
			<div class="d2">
				<h1 id="d5" style="font-size: 50px;">Enjoy on your TV.</h1>
				<br>
				<h3 id="d5">
					Watch on smart TVs, PlayStation, Xbox, <br>Chromecast, Apple
					TV, Blu-ray players and <br>more.
				</h3>
			</div>
			<img src="img/tv.png" alt="Netflix TV">
			<video class="video-1" autoplay="" playsinline="" muted="" loop="">
				<source src="img/1.m4v" type="video/mp4">
			</video>
		</div>
	</section>
	<section class="style1">
		<div class="n3">
			<img src="img/3.jpg" alt="Netflix Mobile">
			<div class="d3">
				<h1 id="d6" style="font-size: 48px;">
					Download your shows<br> to watch offline.
				</h1>
				<br>
				<h3 id="d6">
					Save your favourites easily and always have<br> something to
					watch.
				</h3>
			</div>
		</div>
	</section>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">

var status =document.getElementById("status").value;

if (status == "faild") {
	swal("Sorry","You Have Entered Worng Email ","error")
}
</script>
</body>
</html>
