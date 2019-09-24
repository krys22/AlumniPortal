$(document).ready(function(){
	const token = $("#token").val();

	//Hide no. of trucks and mines.
	$("#trucksDiv").addClass("hidden");

	$("#role").on('change', function(){
        var role = $("#role").val();
        if(role == 'IUP'){
        	$("#minesDiv").removeClass("hidden");
        	$("#trucksDiv").addClass("hidden");
        }
        if(role == 'IUPOPK' || role == 'IUJP'){
        	$("#trucksDiv").removeClass("hidden");
        	$("#minesDiv").addClass("hidden");
        }
    });

	$("#registerBtn").click(function(e){
		if($("form")[0].checkValidity()) {
			const companyName = $("#companyName").val();
			const companyAddress = $("#companyAddress").val();
			const companyPhone = $("#companyPhone").val();
			const companyEmail = $("#companyEmail").val();
			const siup = $("#siup").val();
			const role = $("#role").val();
			const permitNo = $("#permitNo").val();
			const name = $("#name").val();
			const address = $("#address").val();
			const phone = $("#phone").val();
			const email = $("#email").val();
			const code = $("#code").val();
			const password = $("#password").val();
			const confirm = $("#confirm").val();

			if($.trim(role) == 'select'){
				e.preventDefault();
				$(".resp").html("<p class='alert alert-danger'>Select a role</p>");
				$("#role").css("border", "1px solid red");
				$("html, body").animate({scrollTop: 0}, 400);
				return false;
			}

			var trucks = 0;
			var mines = 0;
			if(role == 'IUP'){
	        	mines = $("#mines").val();
	        	if($.trim(mines) == ''){
	        		$(".resp").html("<p class='alert alert-danger'>Jumlah Tambang is required</p>");
					$("html, body").animate({scrollTop: 0}, 400);
		        	$("#registrationForm").find(':submit').click();
	        	}
	        }
	        if(role == 'IUPOPK' || role == 'IUJP'){
	        	trucks = $("#trucks").val();
	        	if($.trim(trucks) == ''){
	        		$(".resp").html("<p class='alert alert-danger'>Jumlah Truk is required</p>");
					$("html, body").animate({scrollTop: 0}, 400);
		        	$("#registrationForm").find(':submit').click();
	        	}
	        }

			if($.trim(password) !== $.trim(confirm)){
				$(".resp").html("<p class='alert alert-danger'>Sandi tidak cocok!</p>");
				$("html, body").animate({scrollTop: 0}, 400);
	        	$("#registrationForm").find(':submit').click();
			}else{
				e.preventDefault();
				const formData = {
					'companyName':companyName, 'companyAddress':companyAddress, 'companyPhone':companyPhone,
					'companyEmail':companyEmail, 'siup':siup, 'role':role, 'permitNo':permitNo, 'trucks':trucks,
					'mines':mines, 'name':name, 'address':address, 'phone':phone, 'email':email, 'code':code,
					'password':password, '_token':token
				};

	    		$.ajax({
	    			url: '/auth/register',
	    			type: 'POST',
	    			data: formData,
	    			datatype: 'json'
				})
				.done(function (data) { 
					if(data[0].success == 1){
						$("html, body").animate({scrollTop: 0}, 400);
						$(".resp").html("<span class='alert alert-success'>"+data[0].message+"</span>")
						setTimeout(function(){
							window.location.replace(data[0].url);
						}, 100);
					}else{
						$("html, body").animate({scrollTop: 0}, 400);
						$(".resp").html("<span class='alert alert-danger'>"+data[0].message+"</span>")
					}
				})
				.fail(function (jqXHR, textStatus, errorThrown) { 
					console.log(errorThrown); 
				});
			}

	    }else{
	    	$("#registrationForm").find(':submit').click();
	    }
	});

	// Login
	$("#loginBtn").click(function(e){
		if($("form")[0].checkValidity()) {
			const email = $("#email").val();
			const password = $("#password").val();
			
			e.preventDefault();
			const formData = {
				'email':email, 'password':password, '_token':token
			};

    		$.ajax({
    			url: '/auth/login',
    			type: 'POST',
    			data: formData,
    			datatype: 'json'
			})
			.done(function (data) { 
				if(data[0].success == 1){
					window.location.replace(data[0].url);
				}else{
					$("html, body").animate({scrollTop: 0}, 400);
					$(".resp").html("<span class='alert alert-danger'>"+data[0].message+"</span>")
				}
			})
			.fail(function (jqXHR, textStatus, errorThrown) { 
				console.log(errorThrown); 
			});
	    }else{
	    	$("#loginForm").find(':submit').click();
	    }
	});
})