/**
 * 
 */
$(document).on('submit', '#loginForm', function(e) {
		e.preventDefault();
		
		var username = $('#username').val();
		var password = $('#password').val();
		if (username == "" || password == "") {
			alert("You haven't entered username or password.");
			showMessage("You haven't entered username or password.", "red");
			return;
		} else {
			$.ajax({
				type : 'POST',
				url : "../auth/login/",
				contentType : 'application/json',
				data : JSON.stringify({
					username,
					password
				}),
				dataType: 'json',
				success : function(response) {
					setJwtToken(response.accessToken);
					$(location).attr('href', response.redirectionURL);
				},
				error: function (xhr, status) {
					showMessage('Login failed!', 'red');
				}
			});
		}
	})