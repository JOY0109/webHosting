"use strict";


// input number maxlength 작동하도록 
function maxLengthCheck(object){
	if (object.value.length > object.maxLength){
		object.value = object.value.slice(0, object.maxLength);
	}    
}



// Class definition
var KTSignupGeneral = function() {
    // Elements
    var form;
    var submitButton;
    var validator;
    var passwordMeter;
   
   

    // Handle form
    var handleForm  = function(e) {
    	

        // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
        validator = FormValidation.formValidation(
			form,
			{
				fields: {
					'GLN': {
						validators: {
							notEmpty: {
                                message: 'GLN 필수입력입니다. GLN/마트명 선택에서 선택해 주세요'
							}
						}
                    },
                    'martName': {
						validators: {
							notEmpty: {
                                message: '마트명 필수입력입니다. GLN/마트명 선택에서 선택해 주세요 '
							}
						}
                    },
                    'reqID': {
						validators: {
							notEmpty: {
								message: '사번 필수이며, 10자리 이하만 가능합니다.'
							}
						}
					},
					'reqRsn': {
                        validators: {
							notEmpty: {
                                message: '필수입력입니다.'
							},
						}
					},
					'reqHtel' : {
						validators: {
							notEmpty: {
                                message: '연락처 중간자리는 숫자만 입력 가능합니다. 필수입력입니다.'
							},
						}
						
					},
					'reqStel' : {
						validators: {
							notEmpty: {
                                message: '연락처 뒷자리는 숫자만 입력 가능합니다. 필수입력입니다.'
							},
						}
						
					}
					
				},
				plugins: {
					trigger: new FormValidation.plugins.Trigger({
                        event: {
                            password: false
                        }  
                    }),
					bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: '.fv-row',
                        eleInvalidClass: '',
                        eleValidClass: ''
                    })
				}
			}
		);
        
        
        // Handle form submit
        submitButton.addEventListener('click', function (e) {
        	
            e.preventDefault();
            
            //빈값 각각 체크  아래에 *예쁜 alert* 없이도 message 출력
            validator.revalidateField('GLN');
            validator.revalidateField('martName');
            validator.revalidateField('reqID');
            validator.revalidateField('reqRsn');
            validator.revalidateField('reqHtel');
            validator.revalidateField('reqStel');
           
            var resultNm = $("#resultNm").val(); //중복여부 결과값
            console.log("resultNm "+resultNm);
           
            // *예쁜 alert* 
            // jsp 페이지의 alert이랑 중복해서 떠서 주석
            //중복여부 체크하여 알림창 띄우고 싶었는데... submit하고 값을 받아와서... 안됨.. 혹시나해서 안 지우고 남겨둠
            /*
            validator.validate().then(function(status) {
            	
		        if (status == 'Valid' && resultNm < 1 ) {
		        	
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
                        
                      
                        // Show message popup. For more info check the plugin's official documentation: https://sweetalert2.github.io/
                        Swal.fire({
                            text: "가입신청완료",
                            icon: "success",
                            buttonsStyling: false,
                            confirmButtonText: "확인",
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        }).then(function (result) {
                            if (result.isConfirmed) { 
                                //form.reset();  // reset form                    
                                //passwordMeter.reset();  // reset password meter
                            	//console.log("submit");
                            	//확인 버튼 클릭 후 동작 
                                form.submit();
                            }
                        });
                    }, 1500);   		
                    
                } else {
                    // Show error popup. For more info check the plugin's official documentation: https://sweetalert2.github.io/
                	//alert('aaaa');
                    Swal.fire({
                        text: "빠진 항목이 있는지 확인해 주세요",
                        // text: "Sorry, looks like there are some errors detected, please try again.",
                        icon: "error",
                        buttonsStyling: false,
                        confirmButtonText: "확인",
                        customClass: {
                            confirmButton: "btn btn-primary"
                        }
                    });
                }
		    });
		    */
        });

    }

    // Password input validation
//    var validatePassword = function() {
//        return  (passwordMeter.getScore() === 100);
//    }

    // Public functions
    return {
        // Initialization
        init: function() {
            // Elements
            form = document.querySelector('#form1');
            submitButton = document.querySelector('#btnSave');

            handleForm ();
        }
    };
}();

// On document ready
KTUtil.onDOMContentLoaded(function() {
    KTSignupGeneral.init();
});
