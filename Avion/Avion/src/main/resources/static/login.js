var TOKEN_KEY = 'jwtToken';

$(document).on('submit', '#loginForm', function(e) {
		e.preventDefault();
		
		var username = $('#username').val();
		var password = $('#password').val();
		if (username == "" || password == "") {
			alert("You haven't entered username or password.");
			//showMessage("You haven't entered username or password.", "red");
			return;
		} else {
			$.ajax({
				type : 'POST',
				url : "../auth/login",
				contentType : 'application/json',
				data: loginFormToJSON(username, password),
				dataType: 'json',
				success : function(response) {
					//setJwtToken(response.accessToken);
					//$(location).attr('href', response.redirectionURL);
					setJwtToken(TOKEN_KEY, response.accessToken);
					console.log(response.role)
					if (response.role == "ROLE_HOTEL_ADMIN") {
						window.location.href = "ROLE_HOTEL_ADMIN.html";
					} else if (response.role == "ROLE_AIRLINE_ADMIN") {
						window.location.href = "ROLE_AIRLINE_ADMIN.html";
					} else if (response.role == "ROLE_RENT_A_CAR_ADMIN") {
						window.location.href = "ROLE_RENT_A_CAR_ADMIN.html"
					} else if (response.role == "ROLE_REGISTERED_USER") {
						window.location.href = "ROLE_REGISTERED_USER.html";
					} else {
						window.location.href = "ROLE_SYSTEM_ADMIN.html"
					}
				},
				error: function (xhr, status) {
					//showMessage('Login failed!', 'red');
					alert("login faild");
				}
			});
		}
	})
	
function loginFormToJSON(username, password) {
	return JSON.stringify({
		"username" : username,
		"password" : password
	});
}
	
	
	
	