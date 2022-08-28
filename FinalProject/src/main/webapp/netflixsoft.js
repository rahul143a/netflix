


function validator() {

    var user=document.getElementById("user")
    var error=document.getElementById("error")
    var password=document.getElementById("password")
    var phonenumber=document.getElementById("phone");
    var reg=/^[A-Z a-z0-9]+$/g
    var reg1=/^[0-9]+$/g
  
    if (user.value=="") {
    alert(  error.innerHTML="username required");
      return false
      
    }
   
  
    if (password.value=="") {
  
      alert(error.innerHTML="Password required");
      return false
  
    }
    if (phonenumber.value=="") {
      alert(  error.innerHTML="Phone number is required");
      return false
      
    }
   else if (user.value.length<6) {
  
      alert( error.innerHTML="UserName Should Contain More The 6 Charachers");
  return false
  
  }  
  else if (user.value.length>10) {
  
      alert(  error.innerHTML="UserName Should Contain Less Then 10 Characters");
  return false
  
  }
  else if (password.value.length<6) {
  
      alert(  error.innerHTML="password Should Contain More The 6 Charachers");
  return false
  } 
  
  else if (password.value.length>10) {
  
      alert(    error.innerHTML="Password Should Contain Less Then 10 Charachers");
  return false
  } 
  else if (phonenumber.value.length<10) {
  
      alert(    error.innerHTML="phone number should contain only 10 digits");
  return false
  
  } 
  else if (phonenumber.value.length>10) {
  
      alert(   error.innerHTML="Phonenumber should contain only 10 digits");
  return false
  }
  else if (reg1.test(phonenumber.value)==false) {
  
      alert(   error.innerHTML=" phonenumber contains only numiric ");
  
  return false
  }
  
  else if (reg.test(user.value)==false) {
  
      alert(   error.innerHTML=" username contains only alphabets ");
  
  return false
  } 
  else if (user.value=="username"|| user.value=="") {
  
      alert(   error.innerHTML=" user name not be username ");
  
  return false
  } 
  
  else{
	   alert(   error.innerHTML=" Account Created Successfully.");
   return true;
      
  }
  
  }