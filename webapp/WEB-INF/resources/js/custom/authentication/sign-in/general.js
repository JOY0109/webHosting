"use strict";

// Class definition
var KTSigninGeneral = function() {
    // Elements
    var form;
    var submitButton;
    var validator;

    // Handle form
    var handleForm = function(e) {
        // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
        validator = FormValidation.formValidation(
			form,
			{
				fields: {					
					'email': {
                        validators: {
							notEmpty: {
								// message: 'Email address is required'
                                message: '아이디는 필수입력입니다.'
							},
                            emailAddress: {
								//message: 'The value is not a valid email address'
                                message: '이메일/아이디 형식을 확인해 주세요'
							}
						}
					},
                    'password': {
                        validators: {
                            notEmpty: {
                                message: '비밀번호는 필수입력입니다.'
                            }
                        }
                    } 
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger(),
					bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: '.fv-row'
                    })
				}
			}
		);		

        // Handle form submit
        submitButton.addEventListener('click', function (e) {
            // Prevent button default action
            e.preventDefault();

            // Validate form
            validator.validate().then(function (status) {
                if (status == 'Valid') {
                    // Show loading indication
                    submitButton.setAttribute('data-kt-indicator', 'on');

                    // Disable button to avoid multiple click 
                    submitButton.disabled = true;
                    

                    // Simulate ajax request
                    setTimeout(function() {
                        // Hide loading indication
                        submitButton.removeAttribute('data-kt-indicator');

                        // Enable button
                        submitButton.disabled = false;

         			   //loginChk start
         			   var $mainForm = $("#kt_sign_in_form");
         				   $.ajax({
         		                url : "/loginChk",
         		                type : "post",
         		                data: $mainForm.serialize(),
         		                success : function(result) {
         							if(result==0){
         								Swal.fire({
         			                        text: "죄송합니다. 아이디나 비밀번호를 확인해 주세요.",
         			                        icon: "error",
         			                        buttonsStyling: false,
         			                        confirmButtonText: "확인",
         			                        customClass: {
         			                            confirmButton: "btn btn-primary"
         			                        }
         			                    });
         							}else if(result==1){
         								Swal.fire({
         		                            text: "로그인 성공!",
         		                            icon: "success",
         		                            buttonsStyling: false,
         		                            confirmButtonText: "확인",
         		                            customClass: {
         		                                confirmButton: "btn btn-primary"
         		                            }
         		                        }).then(result => {
         		                            location.href="/home";
         		                        })
         								
         							}else{
         								Swal.fire({
         			                        text: "관리자에게 문의하세요",
         			                        icon: "error",
         			                        buttonsStyling: false,
         			                        confirmButtonText: "확인",
         			                        customClass: {
         			                            confirmButton: "btn btn-primary"
         			                        }
         			                    });
         							}
         		                }
         		            });

                        
                    }, 2000);   						
                } else {
                    // Show error popup. For more info check the plugin's official documentation: https://sweetalert2.github.io/
                    Swal.fire({
                        text: "죄송합니다. 아이디나 비밀번호를 확인해 주세요.",
                        // text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        //confirmButtonText: "Ok, got it!",
                        confirmButtonText: "확인",
                        customClass: {
                            confirmButton: "btn btn-primary"
                        }
                    });
                }
            });
		});
    }

    // Public functions
    return {
        // Initialization
        init: function() {
            form = document.querySelector('#kt_sign_in_form');
            submitButton = document.querySelector('#kt_sign_in_submit');
            
            handleForm();
        }
    };
}();

// On document ready
KTUtil.onDOMContentLoaded(function() {
    KTSigninGeneral.init();
});
