"use strict";
var KTSignupGeneral = function() {
    var e, t, a, s, r = function() {
        return 100 === s.getScore();
    };

    function calculatePasswordStrength(password) {
        let score = 0;
        if (password.length >= 8) score += 1;
        if (/[a-z]/.test(password)) score += 1;
        if (/[A-Z]/.test(password)) score += 1;
        if (/[0-9]/.test(password)) score += 1;
        if (/[^a-zA-Z0-9]/.test(password)) score += 1;
        return Math.min(score, 4); // 강도는 최대 4단계로 설정
    }

    function updatePasswordMeter(score) {
        const colors = ['bg-success-1', 'bg-success-2', 'bg-success-3', 'bg-success-4'];
        const meters = document.querySelectorAll('.password-meter div');
        meters.forEach((meter, index) => {
            if (index < score) {
                meter.classList.remove('bg-secondary');
                meter.classList.add(colors[index]);
            } else {
                meter.classList.remove(...colors);
                meter.classList.add('bg-secondary');
            }
        });
    }

    return {
        init: function() {
            e = document.querySelector("#kt_sign_up_form");
            t = document.querySelector("#kt_sign_up_submit");
            s = KTPasswordMeter.getInstance(e.querySelector('[data-kt-password-meter="true"]'));
            a = FormValidation.formValidation(e, {
                fields: {
                    "first-name": {
                        validators: {
                            notEmpty: {
                                message: "First Name is required"
                            }
                        }
                    },
                    "last-name": {
                        validators: {
                            notEmpty: {
                                message: "Last Name is required"
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: "Email address is required"
                            },
                            emailAddress: {
                                message: "The value is not a valid email address"
                            }
                        }
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: "The password is required"
                            },
                            callback: {
                                message: "Please enter valid password",
                                callback: function(e) {
                                    if (e.value.length > 0) return r();
                                }
                            }
                        }
                    },
                    "confirm-password": {
                        validators: {
                            notEmpty: {
                                message: "The password confirmation is required"
                            },
                            identical: {
                                compare: function() {
                                    return e.querySelector('[name="password"]').value;
                                },
                                message: "The password and its confirm are not the same"
                            }
                        }
                    },
                    toc: {
                        validators: {
                            notEmpty: {
                                message: "You must accept the terms and conditions"
                            }
                        }
                    }
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger({
                        event: {
                            password: !1
                        }
                    }),
                    bootstrap: new FormValidation.plugins.Bootstrap5({
                        rowSelector: ".fv-row",
                        eleInvalidClass: "",
                        eleValidClass: ""
                    })
                }
            });

            t.addEventListener("click", function(r) {
                r.preventDefault();
                a.revalidateField("password");
                a.validate().then(function(a) {
                    if ("Valid" === a) {
                        t.setAttribute("data-kt-indicator", "on");
                        t.disabled = !0;
                        setTimeout(function() {
                            t.removeAttribute("data-kt-indicator");
                            t.disabled = !1;
                            Swal.fire({
                                text: "You have successfully reset your password!",
                                icon: "success",
                                buttonsStyling: !1,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-primary"
                                }
                            }).then(function(t) {
                                if (t.isConfirmed) {
                                    e.reset();
                                    s.reset();
                                }
                            });
                        }, 1500);
                    } else {
                        Swal.fire({
                            text: "Sorry, looks like there are some errors detected, please try again.",
                            icon: "error",
                            buttonsStyling: !1,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });
                    }
                });
            });

            e.querySelector('input[name="password"]').addEventListener("input", function() {
                const password = this.value;
                const score = calculatePasswordStrength(password);
                updatePasswordMeter(score);
                this.value.length > 0 && a.updateFieldStatus("password", "NotValidated");
            });

            document.getElementById('password-visibility-toggle').addEventListener('click', function () {
                const passwordInput = document.querySelector('input[name="password"]');
                const eyeSlash = this.querySelector('.bi-eye-slash');
                const eye = this.querySelector('.bi-eye');
                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    eyeSlash.classList.add('d-none');
                    eye.classList.remove('d-none');
                } else {
                    passwordInput.type = 'password';
                    eyeSlash.classList.remove('d-none');
                    eye.classList.add('d-none');
                }
            });
        }
    }
}();

KTUtil.onDOMContentLoaded(function() {
    KTSignupGeneral.init();
});
