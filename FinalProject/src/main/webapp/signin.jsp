
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="rr.css">
   </head>
   <body>
   <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<script src="netflixsoft.js"></script>
	<div id="error"></div>
	
    <div class="container">
    <h1 style="color: red; font-size: 40px; text-shadow: 7px 7px 4px rgb(82, 80, 80); padding: 0px; margin-top: -5px;">
			NetFlix Registration</h1>
			
     <div class="container-fluid">
<form class="form-group" onsubmit="return validator()"  method="post" action="register">
 
      
       <input type="text" id="user" name="firstname" placeholder="First name" class="form-control" required>
       <br>
       <input type="text" name="lastname" placeholder="Last name" class="form-control" required>
       <br>
       <input type="email" id="email" name="email" placeholder="Email" class="form-control" required>
       <br>
       <input type="phone" id="phone" name="phone" placeholder="Phone" class="form-control" required>
       <br>
       <select name="gender" class="form-control">
        <option>Select Gender</option>
        <option>Male</option>
        <option>Female</option>
       </select>
       <br>
      <input type="Password" id="password" name="password" placeholder="Password" class="form-control">
       <br>
       <button type="submit" id="submit" class="btn">Register</button>
       <br><br>
       </form>
      
     </div>
    </div>
    <center>
    <a href="netflix2.jsp"><button type="submit" class="btn1">Already I Have Account</button></a>
</center>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
<script type="text/javascript">

var status =document.getElementById("status").value;

if (status == "success") {
	swal("Congrats","Account Created Successfully","success")
}
</script>

</body>
   </html>
   

