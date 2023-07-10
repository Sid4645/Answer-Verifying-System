function setTime() {
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();

	if(dd<10) {
	    dd='0'+dd
	} 

	if(mm<10) {
	    mm='0'+mm
	} 
	today = yyyy + '-' + mm+'-'+dd;
	var date = document.getElementById("startDate");
	
	date.setAttribute("min",today);
	document.getElementById("endDate").value = document.getElementById("startDate").value;
	
}

function firstname()
{
	
	var fname=document.getElementById("FNAME").value;
		var invalidchar= new RegExp("[a-zA-Z]+");
		for(var i=0 ;i<fname.length;i++){
				if(!invalidchar.test(fname[i]))
					{
					document.getElementById("FNAMEERROR").innerHTML="First name should contain only alphabet(A to Z)";
					document.getElementById("FNAMEERROR").style.color="red";
					return false;

					}
}
		document.getElementById("FNAMEERROR").innerHTML="";
		return true;

}


function lastname()
{
	
	var lname=document.getElementById("LNAME").value;
	var invalidchar= new RegExp("[a-zA-Z]+");
	for(var i=0 ;i<lname.length;i++){
		if(!invalidchar.test(lname[i]))
			{
			document.getElementById("LNAMEERROR").innerHTML="Last Name should contain only alphabet(A to Z)";
			document.getElementById("LNAMEERROR").style.color="red";
			document.getElementById("LNAMEERROR").style.visibility="visible";
			return false;

		}
	}
	
	document.getElementById("LNAMEERROR").style.visibility="hidden";
	
return true;
}
function emailid1()
{
	var emaild1=document.getElementById("EMAILID").value;
	var vemaild=document.getElementById("VEMAILID").value;
	if(emaild1 != vemaild )
		{
		document.getElementById("VEMAILERROR").innerHTML = "Emailid and Verify Emaild should be same";
		document.getElementById("VEMAILERROR").style.color="red";
		document.getElementById("VEMAILERROR").style.visibility="visible";
		return false;

			}


	document.getElementById("VEMAILERROR").style.visibility="hidden";

return true;
}



   
function mobilenumber()
{
	
	var phone=document.getElementById("MNO").value;
	var invalidchar= new RegExp("[0-9]+");
	for(var i=0 ;i<phone.length;i++){
		if(!invalidchar.test(phone[i]) || phone.length<10)
			{
		document.getElementById("MNOERROR").innerHTML="Mobile number should be 10 digits";
		document.getElementById("MNOERROR").style.color="red";
		document.getElementById("MNOERROR").style.visibility="visible";
		return false;

			}

}
	document.getElementById("MNOERROR").style.visibility="hidden";
return true;
}
function checklength()
{
	var address = document.getElementById("ADDRESS").value;
	document.getElementById("ADDRESSMSG").innerHTML = (50 - address.length);
}
function checkQuery()
{
	var address = document.getElementById("QUERY").value;
	document.getElementById("QUERYMSG").innerHTML = (150 - address.length);
}

function checkvalues()
{
	
	if(firstname()==true && lastname()==true && mobilenumber()==true  && emailid() == true)
		{this.registrationform.submit();
		return true;
		}
	else 
		return false;
}
	

function onblurpassword()
{
	var username=document.getElementById("password").value
	if(username.length==0)
	document.getElementById("password").value="Password";
	
	}

function onblurusername()
{
	var username=document.getElementById("username").value
	if(username.length==0)
	document.getElementById("username").value="User Name";
	
	}
function onclickusername()
{
	var username=document.getElementById("username").value
	if(username=="User Name")
	document.getElementById("username").value="";
	}
function onclickpassword()
{
	var username=document.getElementById("password").value
	if(username=="Password")
	document.getElementById("password").value="";
	}
