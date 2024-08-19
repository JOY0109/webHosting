<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head><base href="../../../">
		<title>회원가입</title>
		<meta charset="utf-8" />
		<link rel="canonical" href="https://preview.keenthemes.com/metronic8" />
		<link rel="shortcut icon" href="media/logos/favicon.ico" />
		<!--begin::Fonts-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Global Stylesheets Bundle(used by all pages)-->
		<link href="plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
</head>
<body id="kt_body" class="bg-body">
    <div class="d-flex flex-column flex-root">
        <div class="d-flex flex-column flex-column-fluid bgi-position-y-bottom position-x-center bgi-no-repeat bgi-size-contain bgi-attachment-fixed" style="background-image: url(media/illustrations/sketchy-1/14.png)">
            <div class="d-flex flex-center flex-column flex-column-fluid p-10 pb-lg-20">
                <a href="../../demo1/dist/index.html" class="mb-12">
                    <img alt="Logo" src="media/logos/logo-1.svg" class="h-40px" />
                </a>
                <div class="w-lg-600px bg-body rounded shadow-sm p-10 p-lg-15 mx-auto">
                    <form class="form w-100" novalidate="novalidate" id="kt_sign_up_form" action="/User/Write" method="post">
                        <div class="mb-10 text-center">
                            <h1 class="text-dark mb-3">Create an Account</h1>
                            <div class="text-gray-400 fw-bold fs-4">Already have an account?
                            <a href="../../demo1/dist/authentication/layouts/basic/sign-in.html" class="link-primary fw-bolder">Sign in here</a></div>
                        </div>
                        <div class="row fv-row mb-7">
                            <div class="col-xl-6">
                                <label class="form-label fw-bolder text-dark fs-6">이름(실명)</label>
                                <input class="form-control form-control-lg form-control-solid" type="text" name="USER_NAME" autocomplete="off" />
                            </div>
                            <div class="col-xl-6">
                                <label class="form-label fw-bolder text-dark fs-6">닉네임(부서/이름/직급)</label>
                                <input class="form-control form-control-lg form-control-solid" type="text" placeholder="경영지원팀/김철수/사원"  name="USER_NICK" autocomplete="off" />
                            </div>
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fw-bolder text-dark fs-6">생년월일</label>
                            <input class="form-control form-control-lg form-control-solid" type="date" name="USER_BIRTH"  />
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fw-bolder text-dark fs-6">연락처1</label>
                            <input class="form-control form-control-lg form-control-solid" type="tel" name="USER_TEL1"  placeholder="010-1234-5678" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"/>
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fw-bolder text-dark fs-6">연락처2</label>
                            <input class="form-control form-control-lg form-control-solid" type="tel" name="USER_TEL2" placeholder ="02-1234-5678" />
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fw-bolder text-dark fs-6">부서명</label>
                            <input class="form-control form-control-lg form-control-solid" type="tel" name="USER_DEP_NUM"  />
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fw-bolder text-dark fs-6">Email(ID로 사용)</label>
                            <input class="form-control form-control-lg form-control-solid" type="email" placeholder="" name="USER_ID" autocomplete="off" />
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fw-bolder text-dark fs-6">Password</label>
                            <div class="position-relative mb-3">
                                <input type="password"  class="form-control form-control-lg form-control-solid" placeholder="" name="USER_PW" autocomplete="off" />
                                <span class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2" id="password-visibility-toggle">
                                    <i class="bi bi-eye-slash fs-2"></i>
                                    <i class="bi bi-eye fs-2 d-none"></i>
                                </span>
                            </div>
                            <div class="password-meter">
                                <div id="meter-1" class="flex-grow-1 bg-secondary rounded h-5px me-2"></div>
                                <div id="meter-2" class="flex-grow-1 bg-secondary rounded h-5px me-2"></div>
                                <div id="meter-3" class="flex-grow-1 bg-secondary rounded h-5px me-2"></div>
                                <div id="meter-4" class="flex-grow-1 bg-secondary rounded h-5px"></div>
                            </div>
                            <div class="text-muted">Use 8 or more characters with a mix of letters, numbers & symbols.</div>
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-label fw-bolder text-dark fs-6">Confirm Password</label>
                            <input class="form-control form-control-lg form-control-solid" type="password" placeholder="" name="confirm-password" autocomplete="off" />
                        </div>
                        <div class="fv-row mb-10">
                            <label class="form-check form-check-custom form-check-solid">
                                <input class="form-check-input" type="checkbox" name="toc" value="1" />
                                <span class="form-check-label fw-bold text-gray-700 fs-6">I agree to the <a href="#" class="ms-1 link-primary">terms and conditions</a>.</span>
                            </label>
                        </div>
                        <div class="d-flex flex-stack">
                            <div></div>
                            <button type="submit" id="kt_sign_up_submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
		<!--end::Root-->
		<!--end::Main-->
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="plugins/global/plugins.bundle.js"></script>
		<script src="js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<script src="js/custom/authentication/sign-up/general.js"></script>
		<!--end::Page Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>


<!-- 
<form action="/User/Write" method="post">
<table>
	<caption><h1>회원 추가</h1></caption>
	
	<tr>
		<td>아이디</td>
		<td><input type="text" name="USER_ID" /></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="text" name="USER_PW" /></td>
	</tr>
	<tr>
		<td>전화</td>
		<td><input type="text" name="USER_TEL_NO" /></td>
	</tr>
</table>
		<input type="submit" value="확인" />
</form>
 -->
