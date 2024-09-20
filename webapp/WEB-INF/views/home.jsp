<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>일정</title>
	<link rel="shortcut icon" href="media/logos/favicon.ico" />
	<!--begin::Fonts-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" />
	<!--end::Fonts-->
	<!--begin::Page Vendor Stylesheets(used by this page)-->
	<link href="plugins/custom/fullcalendar/fullcalendar.bundle.css" rel="stylesheet" type="text/css" />
	<link href="plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
	<!--end::Page Vendor Stylesheets-->
	<!--begin::Global Stylesheets Bundle(used by all pages)-->
	<link href="plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
	<link href="css/style.bundle.css" rel="stylesheet" type="text/css" />
	<!--end::Global Stylesheets Bundle-->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
	   $(function() {
	
	   });
	</script>
</head>
<!--begin::Body-->
	<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed aside-enabled aside-fixed" style="--kt-toolbar-height:55px;--kt-toolbar-height-tablet-and-mobile:55px">
		<!--begin::Main-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				<!--begin::Aside-->
				<div id="kt_aside" class="aside aside-dark aside-hoverable" data-kt-drawer="true" data-kt-drawer-name="aside" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_aside_mobile_toggle">
					<!--begin::Brand-->
					<div class="aside-logo flex-column-auto" id="kt_aside_logo">
						<!--begin::Logo-->
						<a href="../../demo1/dist/index.html">
							<img alt="Logo" src="media/logos/logo_newWhite.png" class="h-60px logo" />
						</a>
						<!--end::Logo-->
						<!--begin::Aside toggler-->
						<div id="kt_aside_toggle" class="btn btn-icon w-auto px-0 btn-active-color-primary aside-toggle" data-kt-toggle="true" data-kt-toggle-state="active" data-kt-toggle-target="body" data-kt-toggle-name="aside-minimize">
							<!--begin::Svg Icon | path: icons/duotune/arrows/arr079.svg-->
							<span class="svg-icon svg-icon-1 rotate-180">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
									<path opacity="0.5" d="M14.2657 11.4343L18.45 7.25C18.8642 6.83579 18.8642 6.16421 18.45 5.75C18.0358 5.33579 17.3642 5.33579 16.95 5.75L11.4071 11.2929C11.0166 11.6834 11.0166 12.3166 11.4071 12.7071L16.95 18.25C17.3642 18.6642 18.0358 18.6642 18.45 18.25C18.8642 17.8358 18.8642 17.1642 18.45 16.75L14.2657 12.5657C13.9533 12.2533 13.9533 11.7467 14.2657 11.4343Z" fill="black" />
									<path d="M8.2657 11.4343L12.45 7.25C12.8642 6.83579 12.8642 6.16421 12.45 5.75C12.0358 5.33579 11.3642 5.33579 10.95 5.75L5.40712 11.2929C5.01659 11.6834 5.01659 12.3166 5.40712 12.7071L10.95 18.25C11.3642 18.6642 12.0358 18.6642 12.45 18.25C12.8642 17.8358 12.8642 17.1642 12.45 16.75L8.2657 12.5657C7.95328 12.2533 7.95328 11.7467 8.2657 11.4343Z" fill="black" />
								</svg>
							</span>
							<!--end::Svg Icon-->
						</div>
						<!--end::Aside toggler-->
					</div>
					<!--end::Brand-->
					<!--begin::Aside menu-->
					<div class="aside-menu flex-column-fluid">
						<!--begin::Aside Menu-->
						<div class="hover-scroll-overlay-y my-5 my-lg-5" id="kt_aside_menu_wrapper" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_aside_logo, #kt_aside_footer" data-kt-scroll-wrappers="#kt_aside_menu" data-kt-scroll-offset="0">
							<!--begin::Menu-->
							<div class="menu menu-column menu-title-gray-800 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-500" id="#kt_aside_menu" data-kt-menu="true" data-kt-menu-expand="false">
								<div class="menu-item">
									<div class="menu-content pt-8 pb-0">
										<span class="menu-section text-muted text-uppercase fs-8 ls-1">Layout</span>
									</div>
								</div>
								<div data-kt-menu-trigger="click" class="menu-item menu-accordion">
									<span class="menu-link">
										<span class="menu-icon">
											<!--begin::Svg Icon | path: icons/duotune/general/gen009.svg-->
											<span class="svg-icon svg-icon-2">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
													<path opacity="0.3" d="M21 22H14C13.4 22 13 21.6 13 21V3C13 2.4 13.4 2 14 2H21C21.6 2 22 2.4 22 3V21C22 21.6 21.6 22 21 22Z" fill="black" />
													<path d="M10 22H3C2.4 22 2 21.6 2 21V3C2 2.4 2.4 2 3 2H10C10.6 2 11 2.4 11 3V21C11 21.6 10.6 22 10 22Z" fill="black" />
												</svg>
											</span>
											<!--end::Svg Icon-->
										</span>
										<span class="menu-title">Aside</span>
										<span class="menu-arrow"></span>
									</span>
									<div class="menu-sub menu-sub-accordion menu-active-bg">
										<div class="menu-item">
											<a class="menu-link" href="../../demo1/dist/layouts/aside/light.html">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">Light Skin</span>
											</a>
										</div>
										<div class="menu-item">
											<a class="menu-link" href="../../demo1/dist/layouts/aside/font-icons.html">
												<span class="menu-bullet">
													<span class="bullet bullet-dot"></span>
												</span>
												<span class="menu-title">Font Icons</span>
											</a>
										</div>
									</div>
								</div>
								<div class="menu-item">
									<a class="menu-link" href="/User/List"  data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss="click" data-bs-placement="right">
										<span class="menu-icon">
											<!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
											<span class="svg-icon svg-icon-2">
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
												  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5m.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1z"/>
												</svg>
											</span>
											<!--end::Svg Icon-->
										</span>
										<span class="menu-title">사원목록</span>
									</a>
								</div>
								<div class="menu-item">
									<div class="menu-content">
										<div class="separator mx-1 my-4"></div>
									</div>
								</div>
								<div class="menu-item">
									<a class="menu-link" href="../../demo1/dist/documentation/getting-started/changelog.html">
										<span class="menu-icon">
											<!--begin::Svg Icon | path: icons/duotune/coding/cod003.svg-->
											<span class="svg-icon svg-icon-2">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
													<path d="M16.95 18.9688C16.75 18.9688 16.55 18.8688 16.35 18.7688C15.85 18.4688 15.75 17.8688 16.05 17.3688L19.65 11.9688L16.05 6.56876C15.75 6.06876 15.85 5.46873 16.35 5.16873C16.85 4.86873 17.45 4.96878 17.75 5.46878L21.75 11.4688C21.95 11.7688 21.95 12.2688 21.75 12.5688L17.75 18.5688C17.55 18.7688 17.25 18.9688 16.95 18.9688ZM7.55001 18.7688C8.05001 18.4688 8.15 17.8688 7.85 17.3688L4.25001 11.9688L7.85 6.56876C8.15 6.06876 8.05001 5.46873 7.55001 5.16873C7.05001 4.86873 6.45 4.96878 6.15 5.46878L2.15 11.4688C1.95 11.7688 1.95 12.2688 2.15 12.5688L6.15 18.5688C6.35 18.8688 6.65 18.9688 6.95 18.9688C7.15 18.9688 7.35001 18.8688 7.55001 18.7688Z" fill="black" />
													<path opacity="0.3" d="M10.45 18.9687C10.35 18.9687 10.25 18.9687 10.25 18.9687C9.75 18.8687 9.35 18.2688 9.55 17.7688L12.55 5.76878C12.65 5.26878 13.25 4.8687 13.75 5.0687C14.25 5.1687 14.65 5.76878 14.45 6.26878L11.45 18.2688C11.35 18.6688 10.85 18.9687 10.45 18.9687Z" fill="black" />
												</svg>
											</span>
											<!--end::Svg Icon-->
										</span>
										<span class="menu-title">Changelog v8.0.36</span>
									</a>
								</div>
							</div>
							<!--end::Menu-->
						</div>
						<!--end::Aside Menu-->
					</div>
					<!--end::Aside menu-->
					<!--begin::Footer-->
					<div class="aside-footer flex-column-auto pt-5 pb-7 px-5" id="kt_aside_footer">
						<a href="../../demo1/dist/documentation/getting-started.html" class="btn btn-custom btn-primary w-100" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss-="click" title="200+ in-house components and 3rd-party plugins">
							<span class="btn-label">Docs &amp; Components</span>
							<!--begin::Svg Icon | path: icons/duotune/general/gen005.svg-->
							<span class="svg-icon btn-icon svg-icon-2">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
									<path opacity="0.3" d="M19 22H5C4.4 22 4 21.6 4 21V3C4 2.4 4.4 2 5 2H14L20 8V21C20 21.6 19.6 22 19 22ZM12.5 18C12.5 17.4 12.6 17.5 12 17.5H8.5C7.9 17.5 8 17.4 8 18C8 18.6 7.9 18.5 8.5 18.5L12 18C12.6 18 12.5 18.6 12.5 18ZM16.5 13C16.5 12.4 16.6 12.5 16 12.5H8.5C7.9 12.5 8 12.4 8 13C8 13.6 7.9 13.5 8.5 13.5H15.5C16.1 13.5 16.5 13.6 16.5 13ZM12.5 8C12.5 7.4 12.6 7.5 12 7.5H8C7.4 7.5 7.5 7.4 7.5 8C7.5 8.6 7.4 8.5 8 8.5H12C12.6 8.5 12.5 8.6 12.5 8Z" fill="black" />
									<rect x="7" y="17" width="6" height="2" rx="1" fill="black" />
									<rect x="7" y="12" width="10" height="2" rx="1" fill="black" />
									<rect x="7" y="7" width="6" height="2" rx="1" fill="black" />
									<path d="M15 8H20L14 2V7C14 7.6 14.4 8 15 8Z" fill="black" />
								</svg>
							</span>
							<!--end::Svg Icon-->
						</a>
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Aside-->
				<!--begin::Wrapper-->
				<div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper" style="padding-top: 65px">
					<!--begin::Header-->
					<div id="kt_header" style="" class="header align-items-stretch">
						<!--begin::Container-->
						<div class="container-fluid d-flex align-items-stretch justify-content-between">
							<!--begin::Aside mobile toggle-->
							<div class="d-flex align-items-center d-lg-none ms-n2 me-2" title="Show aside menu">
								<div class="btn btn-icon btn-active-light-primary w-30px h-30px w-md-40px h-md-40px" id="kt_aside_mobile_toggle">
									<!--begin::Svg Icon | path: icons/duotune/abstract/abs015.svg-->
									<span class="svg-icon svg-icon-1">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
											<path d="M21 7H3C2.4 7 2 6.6 2 6V4C2 3.4 2.4 3 3 3H21C21.6 3 22 3.4 22 4V6C22 6.6 21.6 7 21 7Z" fill="black" />
											<path opacity="0.3" d="M21 14H3C2.4 14 2 13.6 2 13V11C2 10.4 2.4 10 3 10H21C21.6 10 22 10.4 22 11V13C22 13.6 21.6 14 21 14ZM22 20V18C22 17.4 21.6 17 21 17H3C2.4 17 2 17.4 2 18V20C2 20.6 2.4 21 3 21H21C21.6 21 22 20.6 22 20Z" fill="black" />
										</svg>
									</span>
									<!--end::Svg Icon-->
								</div>
							</div>
							<!--end::Aside mobile toggle-->
							<!--begin::Mobile logo-->
							<div class="d-flex align-items-center flex-grow-1 flex-lg-grow-0">
								<a href="../../demo1/dist/index.html" class="d-lg-none">
									<img alt="Logo" src="media/logos/logo_new_img.png" class="h-30px" />
								</a>
							</div>
							<!--end::Mobile logo-->
							<!--begin::Wrapper-->
							<div class="d-flex align-items-stretch justify-content-between flex-lg-grow-1">
								<!--begin::Navbar-->
								<div class="d-flex align-items-stretch" id="kt_header_nav">
									<!--begin::Menu wrapper-->
									<div class="header-menu align-items-stretch" data-kt-drawer="true" data-kt-drawer-name="header-menu" data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="{default:'200px', '300px': '250px'}" data-kt-drawer-direction="end" data-kt-drawer-toggle="#kt_header_menu_mobile_toggle" data-kt-swapper="true" data-kt-swapper-mode="prepend" data-kt-swapper-parent="{default: '#kt_body', lg: '#kt_header_nav'}">
										<!--begin::Menu-->
										<div class="menu menu-lg-rounded menu-column menu-lg-row menu-state-bg menu-title-gray-700 menu-state-title-primary menu-state-icon-primary menu-state-bullet-primary menu-arrow-gray-400 fw-bold my-5 my-lg-0 align-items-stretch" id="#kt_header_menu" data-kt-menu="true">
											<div data-kt-menu-trigger="click" data-kt-menu-placement="bottom-start" class="menu-item menu-lg-down-accordion me-lg-1">
												<span class="menu-link py-3">
													<span class="menu-title">Layouts</span>
													<span class="menu-arrow d-lg-none"></span>
												</span>
												<div class="menu-sub menu-sub-lg-down-accordion menu-sub-lg-dropdown menu-rounded-0 py-lg-4 w-lg-225px">
													<div data-kt-menu-trigger="{default:'click', lg: 'hover'}" data-kt-menu-placement="right-start" class="menu-item menu-lg-down-accordion">
														<span class="menu-link py-3">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/abstract/abs042.svg-->
																<span class="svg-icon svg-icon-2">
																	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																		<path d="M18 21.6C16.6 20.4 9.1 20.3 6.3 21.2C5.7 21.4 5.1 21.2 4.7 20.8L2 18C4.2 15.8 10.8 15.1 15.8 15.8C16.2 18.3 17 20.5 18 21.6ZM18.8 2.8C18.4 2.4 17.8 2.20001 17.2 2.40001C14.4 3.30001 6.9 3.2 5.5 2C6.8 3.3 7.4 5.5 7.7 7.7C9 7.9 10.3 8 11.7 8C15.8 8 19.8 7.2 21.5 5.5L18.8 2.8Z" fill="black" />
																		<path opacity="0.3" d="M21.2 17.3C21.4 17.9 21.2 18.5 20.8 18.9L18 21.6C15.8 19.4 15.1 12.8 15.8 7.8C18.3 7.4 20.4 6.70001 21.5 5.60001C20.4 7.00001 20.2 14.5 21.2 17.3ZM8 11.7C8 9 7.7 4.2 5.5 2L2.8 4.8C2.4 5.2 2.2 5.80001 2.4 6.40001C2.7 7.40001 3.00001 9.2 3.10001 11.7C3.10001 15.5 2.40001 17.6 2.10001 18C3.20001 16.9 5.3 16.2 7.8 15.8C8 14.2 8 12.7 8 11.7Z" fill="black" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title">Toolbars</span>
															<span class="menu-arrow"></span>
														</span>
														<div class="menu-sub menu-sub-lg-down-accordion menu-sub-lg-dropdown menu-active-bg py-lg-4 w-lg-225px">
															<div class="menu-item">
																<a class="menu-link py-3" href="../../demo1/dist/layouts/toolbars/toolbar-1.html">
																	<span class="menu-bullet">
																		<span class="bullet bullet-dot"></span>
																	</span>
																	<span class="menu-title">Toolbar 1</span>
																</a>
															</div>
															<div class="menu-item">
																<a class="menu-link py-3" href="../../demo1/dist/layouts/toolbars/toolbar-2.html">
																	<span class="menu-bullet">
																		<span class="bullet bullet-dot"></span>
																	</span>
																	<span class="menu-title">Toolbar 2</span>
																</a>
															</div>
														</div>
													</div>
													<div class="menu-item">
														<a class="menu-link py-3" href="https://preview.keenthemes.com/metronic8/demo1/layout-builder.html" title="준비중" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-dismiss="click" data-bs-placement="right">
															<span class="menu-icon">
																<!--begin::Svg Icon | path: icons/duotune/general/gen019.svg-->
																<span class="svg-icon svg-icon-2">
																	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																		<path d="M17.5 11H6.5C4 11 2 9 2 6.5C2 4 4 2 6.5 2H17.5C20 2 22 4 22 6.5C22 9 20 11 17.5 11ZM15 6.5C15 7.9 16.1 9 17.5 9C18.9 9 20 7.9 20 6.5C20 5.1 18.9 4 17.5 4C16.1 4 15 5.1 15 6.5Z" fill="black" />
																		<path opacity="0.3" d="M17.5 22H6.5C4 22 2 20 2 17.5C2 15 4 13 6.5 13H17.5C20 13 22 15 22 17.5C22 20 20 22 17.5 22ZM4 17.5C4 18.9 5.1 20 6.5 20C7.9 20 9 18.9 9 17.5C9 16.1 7.9 15 6.5 15C5.1 15 4 16.1 4 17.5Z" fill="black" />
																	</svg>
																</span>
																<!--end::Svg Icon-->
															</span>
															<span class="menu-title">Layout Builder</span>
														</a>
													</div>
												</div>
											</div>
										</div>
										<!--end::Menu-->
									</div>
									<!--end::Menu wrapper-->
								</div>
								<!--end::Navbar-->
								<!--begin::Toolbar wrapper-->
								<div class="d-flex align-items-stretch flex-shrink-0">
									<!--begin::Search-->
									<div class="d-flex align-items-stretch ms-1 ms-lg-3">
										<!--begin::Search-->
										<div id="kt_header_search" class="d-flex align-items-stretch" data-kt-search-keypress="true" data-kt-search-min-length="2" data-kt-search-enter="enter" data-kt-search-layout="menu" data-kt-menu-trigger="auto" data-kt-menu-overflow="false" data-kt-menu-permanent="true" data-kt-menu-placement="bottom-end">
											<!--begin::Search toggle-->
											<div class="d-flex align-items-center" data-kt-search-element="toggle" id="kt_header_search_toggle">
												<div class="btn btn-icon btn-icon-muted btn-active-light btn-active-color-primary w-30px h-30px w-md-40px h-md-40px">
													<!--begin::Svg Icon | path: icons/duotune/general/gen021.svg-->
													<span class="svg-icon svg-icon-1">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<rect opacity="0.5" x="17.0365" y="15.1223" width="8.15546" height="2" rx="1" transform="rotate(45 17.0365 15.1223)" fill="black" />
															<path d="M11 19C6.55556 19 3 15.4444 3 11C3 6.55556 6.55556 3 11 3C15.4444 3 19 6.55556 19 11C19 15.4444 15.4444 19 11 19ZM11 5C7.53333 5 5 7.53333 5 11C5 14.4667 7.53333 17 11 17C14.4667 17 17 14.4667 17 11C17 7.53333 14.4667 5 11 5Z" fill="black" />
														</svg>
													</span>
													<!--end::Svg Icon-->
												</div>
											</div>
											<!--end::Search toggle-->
											<!--begin::Menu-->
											<div data-kt-search-element="content" class="menu menu-sub menu-sub-dropdown p-7 w-325px w-md-375px">
												<!--begin::Wrapper-->
												<div data-kt-search-element="wrapper">
													<!--begin::Form-->
													<form data-kt-search-element="form" class="w-100 position-relative mb-3" autocomplete="off"  >
														<!--begin::Input-->
														<input type="text" class="search-input form-control form-control-flush ps-10" name="search" value="" placeholder="Search..." data-kt-search-element="input" />
														<!--end::Input-->
														<!--begin::Spinner-->
														<span class="position-absolute top-50 end-0 translate-middle-y lh-0 d-none me-1" data-kt-search-element="spinner">
															<span class="spinner-border h-15px w-15px align-middle text-gray-400"></span>
														</span>
														<!--end::Spinner-->
													</form>
													<!--end::Form-->
													<!--begin::Separator-->
													<div class="separator border-gray-200 mb-6"></div>
													<!--end::Separator-->
													<!--begin::Recently viewed-->
													<div data-kt-search-element="results" class="d-none">
														<!--begin::Items-->
														<div class="scroll-y mh-200px mh-lg-350px">
															<!--begin::Category title-->
															<h3 class="fs-5 text-muted m-0 pb-5" data-kt-search-element="category-title">Users</h3>
															<!--end::Category title-->
															<!--begin::Item-->
															<a href="#" class="d-flex text-dark text-hover-primary align-items-center mb-5">
																<!--begin::Symbol-->
																<div class="symbol symbol-40px me-4">
																	<img src="media/avatars/300-6.jpg" alt="" />
																</div>
																<!--end::Symbol-->
																<!--begin::Title-->
																<div class="d-flex flex-column justify-content-start fw-bold">
																	<span class="fs-6 fw-bold">Karina Clark</span>
																	<span class="fs-7 fw-bold text-muted">Marketing Manager</span>
																</div>
																<!--end::Title-->
															</a>
															<!--end::Item-->
														</div>
														<!--end::Items-->
													</div>
													<!--end::Recently viewed-->
													<!--begin::Recently viewed-->
													<div class="mb-5" data-kt-search-element="main">
														<!--begin::Heading-->
														<div class="d-flex flex-stack fw-bold mb-4">
															<!--begin::Label-->
															<span class="text-muted fs-6 me-2">Recently Searched:</span>
															<!--end::Label-->
														</div>
														<!--end::Heading-->
													</div>
													<!--end::Recently viewed-->
													<!--begin::Empty-->
													<div data-kt-search-element="empty" class="text-center d-none">
														<!--begin::Icon-->
														<div class="pt-10 pb-10">
															<!--begin::Svg Icon | path: icons/duotune/files/fil024.svg-->
															<span class="svg-icon svg-icon-4x opacity-50">
																<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																	<path opacity="0.3" d="M14 2H6C4.89543 2 4 2.89543 4 4V20C4 21.1046 4.89543 22 6 22H18C19.1046 22 20 21.1046 20 20V8L14 2Z" fill="black" />
																	<path d="M20 8L14 2V6C14 7.10457 14.8954 8 16 8H20Z" fill="black" />
																	<rect x="13.6993" y="13.6656" width="4.42828" height="1.73089" rx="0.865447" transform="rotate(45 13.6993 13.6656)" fill="black" />
																	<path d="M15 12C15 14.2 13.2 16 11 16C8.8 16 7 14.2 7 12C7 9.8 8.8 8 11 8C13.2 8 15 9.8 15 12ZM11 9.6C9.68 9.6 8.6 10.68 8.6 12C8.6 13.32 9.68 14.4 11 14.4C12.32 14.4 13.4 13.32 13.4 12C13.4 10.68 12.32 9.6 11 9.6Z" fill="black" />
																</svg>
															</span>
															<!--end::Svg Icon-->
														</div>
														<!--end::Icon-->
														<!--begin::Message-->
														<div class="pb-15 fw-bold">
															<h3 class="text-gray-600 fs-5 mb-2">No result found</h3>
															<div class="text-muted fs-7">Please try again with a different query</div>
														</div>
														<!--end::Message-->
													</div>
													<!--end::Empty-->
												</div>
												<!--end::Wrapper-->
												
											</div>
											<!--end::Menu-->
										</div>
										<!--end::Search-->
									</div>
									<!--end::Search-->
									<!--begin::Chat-->
									<div class="d-flex align-items-center ms-1 ms-lg-3">
										<!--begin::Menu wrapper-->
										<div class="btn btn-icon btn-icon-muted btn-active-light btn-active-color-primary w-30px h-30px w-md-40px h-md-40px position-relative" id="kt_drawer_chat_toggle" title="준비중" >
											<!--begin::Svg Icon | path: icons/duotune/communication/com012.svg-->
											<span class="svg-icon svg-icon-1">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
													<path opacity="0.3" d="M20 3H4C2.89543 3 2 3.89543 2 5V16C2 17.1046 2.89543 18 4 18H4.5C5.05228 18 5.5 18.4477 5.5 19V21.5052C5.5 22.1441 6.21212 22.5253 6.74376 22.1708L11.4885 19.0077C12.4741 18.3506 13.6321 18 14.8167 18H20C21.1046 18 22 17.1046 22 16V5C22 3.89543 21.1046 3 20 3Z" fill="black" />
													<rect x="6" y="12" width="7" height="2" rx="1" fill="black" />
													<rect x="6" y="7" width="12" height="2" rx="1" fill="black" />
												</svg>
											</span>
											<!--end::Svg Icon-->
											<span class="bullet bullet-dot bg-success h-6px w-6px position-absolute translate-middle top-0 start-50 animation-blink"></span>
										</div>
										<!--end::Menu wrapper-->
									</div>
									<!--end::Chat-->
									<!--begin::User menu-->
									<div class="d-flex align-items-center ms-1 ms-lg-3" id="kt_header_user_menu_toggle">
										<!--begin::Menu wrapper-->
										<div class="cursor-pointer symbol symbol-30px symbol-md-40px" data-kt-menu-trigger="click" data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
											<img src="media/avatars/300-1.jpg" alt="user" />
										</div>
										<!--begin::User account menu-->
										<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-primary fw-bold py-4 fs-6 w-275px" data-kt-menu="true">
											<!--begin::Menu item-->
											<div class="menu-item px-5">
												<a href="../../demo1/dist/apps/projects/list.html" class="menu-link px-5">
													<span class="menu-text">message</span>
													<span class="menu-badge">
														<span class="badge badge-light-danger badge-circle fw-bolder fs-7">3</span>
													</span>
												</a>
											</div>
											<!--end::Menu item-->
											<!--begin::Menu item-->
											<div class="menu-item px-5" data-kt-menu-trigger="hover" data-kt-menu-placement="left-start">
												<a href="#" class="menu-link px-5">
													<span class="menu-title">My Subscription</span>
													<span class="menu-arrow"></span>
												</a>
												<!--begin::Menu sub-->
												<div class="menu-sub menu-sub-dropdown w-175px py-4">
													<!--begin::Menu item-->
													<div class="menu-item px-3">
														<a href="../../demo1/dist/account/referrals.html" class="menu-link px-5">Referrals</a>
													</div>
													<!--end::Menu item-->
												</div>
												<!--end::Menu sub-->
											</div>
											<!--end::Menu item-->
											<!--begin::Menu item-->
											<div class="menu-item px-5">
												<a href="../../demo1/dist/authentication/flows/basic/sign-in.html" class="menu-link px-5">Sign Out</a>
											</div>
											<!--end::Menu item-->
										</div>
										<!--end::User account menu-->
										<!--end::Menu wrapper-->
									</div>
									<!--end::User menu-->
									<!--begin::Header menu toggle-->
									<div class="d-flex align-items-center d-lg-none ms-2 me-n3" title="Show header menu">
										<div class="btn btn-icon btn-active-light-primary w-30px h-30px w-md-40px h-md-40px" id="kt_header_menu_mobile_toggle">
											<!--begin::Svg Icon | path: icons/duotune/text/txt001.svg-->
											<span class="svg-icon svg-icon-1">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
													<path d="M13 11H3C2.4 11 2 10.6 2 10V9C2 8.4 2.4 8 3 8H13C13.6 8 14 8.4 14 9V10C14 10.6 13.6 11 13 11ZM22 5V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4V5C2 5.6 2.4 6 3 6H21C21.6 6 22 5.6 22 5Z" fill="black" />
													<path opacity="0.3" d="M21 16H3C2.4 16 2 15.6 2 15V14C2 13.4 2.4 13 3 13H21C21.6 13 22 13.4 22 14V15C22 15.6 21.6 16 21 16ZM14 20V19C14 18.4 13.6 18 13 18H3C2.4 18 2 18.4 2 19V20C2 20.6 2.4 21 3 21H13C13.6 21 14 20.6 14 20Z" fill="black" />
												</svg>
											</span>
											<!--end::Svg Icon-->
										</div>
									</div>
									<!--end::Header menu toggle-->
								</div>
								<!--end::Toolbar wrapper-->
							</div>
							<!--end::Wrapper-->
						</div>
						<!--end::Container-->
					</div>
					<!--end::Header-->
					<!--begin::Content-->
					<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
						
						<!--begin::Post-->
						<div class="post d-flex flex-column-fluid" id="kt_post">
							<!--begin::Container-->
							<div id="kt_content_container" class="container-xxl">
								<!--begin::Card-->
								<div class="card">
									<!--begin::Card header-->
									<div class="card-header">
										<h2 class="card-title fw-bolder">Calendar</h2>
										<div class="card-toolbar">
											<button class="btn btn-flex btn-primary" data-kt-calendar="add">
											<!--begin::Svg Icon | path: icons/duotune/arrows/arr075.svg-->
											<span class="svg-icon svg-icon-2">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
													<rect opacity="0.5" x="11.364" y="20.364" width="16" height="2" rx="1" transform="rotate(-90 11.364 20.364)" fill="black" />
													<rect x="4.36396" y="11.364" width="16" height="2" rx="1" fill="black" />
												</svg>
											</span>
											<!--end::Svg Icon-->Add Event</button>
										</div>
									</div>
									<!--end::Card header-->
									<!--begin::Card body-->
									<div class="card-body">
										<!--begin::Calendar-->
										<div id="kt_calendar_app"></div>
										<!--end::Calendar-->
									</div>
									<!--end::Card body-->
								</div>
								<!--end::Card-->
								<!--begin::Modals-->
								<!--begin::Modal - New Product-->
								<div class="modal fade" id="kt_modal_add_event" tabindex="-1" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Form-->
											<form class="form"  id="kt_modal_add_event_form"  action="/insertCalendar" method="post" >
												<!--begin::Modal header-->
												<div class="modal-header">
													<!--begin::Modal title-->
													<h2 class="fw-bolder" data-kt-calendar="title">Add Event</h2>
													<!--end::Modal title-->
													<!--begin::Close-->
													<div class="btn btn-icon btn-sm btn-active-icon-primary" id="kt_modal_add_event_close">
														<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
														<span class="svg-icon svg-icon-1">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
																<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
															</svg>
														</span>
														<!--end::Svg Icon-->
													</div>
													<!--end::Close-->
												</div>
												<!--end::Modal header-->
												<!--begin::Modal body-->
												<div class="modal-body py-10 px-lg-17">
													<!--begin::Input group-->
													<div class="fv-row mb-9">
														<!--begin::Label-->
														<label class="fs-6 fw-bold required mb-2">Event Name</label>
														<!--end::Label-->
														<!--begin::Input-->
														<input type="text" class="form-control form-control-solid" placeholder="" name="EVENT_NAME" />
														<!--end::Input-->
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="fv-row mb-9">
														<!--begin::Label-->
														<label class="fs-6 fw-bold mb-2">Event Description</label>
														<!--end::Label-->
														<!--begin::Input-->
														<input type="text" class="form-control form-control-solid" placeholder="" name="EVENT_DESCRIPTION" />
														<!--end::Input-->
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="fv-row mb-9">
														<!--begin::Label-->
														<label class="fs-6 fw-bold mb-2">Event Location</label>
														<!--end::Label-->
														<!--begin::Input-->
														<input type="text" class="form-control form-control-solid" placeholder="" name="EVENT_LOCATION" />
														<!--end::Input-->
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="fv-row mb-9">
														<!--begin::Checkbox-->
														<label class="form-check form-check-custom form-check-solid">
															<input class="form-check-input" type="checkbox" value="" id="kt_calendar_datepicker_allday" />
															<span class="form-check-label fw-bold" for="kt_calendar_datepicker_allday">All Day</span>
														</label>
														<!--end::Checkbox-->
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="row row-cols-lg-2 g-10">
														<div class="col">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-bold mb-2 required">Event Start Date</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="EVENT_START_DT" placeholder="Pick a start date" id="kt_calendar_datepicker_start_date" />
																<!--end::Input-->
															</div>
														</div>
														<div class="col" data-kt-calendar="datepicker">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-bold mb-2">Event Start Time</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="EVENT_START_TM" placeholder="Pick a start time" id="kt_calendar_datepicker_start_time" />
																<!--end::Input-->
															</div>
														</div>
													</div>
													<!--end::Input group-->
													<!--begin::Input group-->
													<div class="row row-cols-lg-2 g-10">
														<div class="col">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-bold mb-2 required">Event End Date</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="EVENT_END_DT" placeholder="Pick a end date" id="kt_calendar_datepicker_end_date" />
																<!--end::Input-->
															</div>
														</div>
														<div class="col" data-kt-calendar="datepicker">
															<div class="fv-row mb-9">
																<!--begin::Label-->
																<label class="fs-6 fw-bold mb-2">Event End Time</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input class="form-control form-control-solid" name="EVENT_END_TM" placeholder="Pick a end time" id="kt_calendar_datepicker_end_time" />
																<!--end::Input-->
															</div>
															<input type="hidden" name="USER_SEQ" value="20240819001"/><!-- 작성자 -->
														</div>
													</div>
													<!--end::Input group-->
												</div>
												<!--end::Modal body-->
												<!--begin::Modal footer-->
												<div class="modal-footer flex-center">
													<!--begin::Button-->
													<button type="reset" id="kt_modal_add_event_cancel" class="btn btn-light me-3">Cancel</button>
													<!--end::Button-->
													<!--begin::Button-->
													<button type="button" id="kt_modal_add_event_submit" class="btn btn-primary">
														<span class="indicator-label">Submit</span>
														<span class="indicator-progress">Please wait...
														<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
													</button>
													<!--end::Button-->
												</div>
												<!--end::Modal footer-->
											</form>
											<!--end::Form-->
										</div>
									</div>
								</div>
								<!--end::Modal - New Product-->
								<!--begin::Modal - New Product-->
								<div class="modal fade" id="kt_modal_view_event" tabindex="-1" aria-hidden="true">
									<!--begin::Modal dialog-->
									<div class="modal-dialog modal-dialog-centered mw-650px">
										<!--begin::Modal content-->
										<div class="modal-content">
											<!--begin::Modal header-->
											<div class="modal-header border-0 justify-content-end">
												<!--begin::Edit-->
												<div class="btn btn-icon btn-sm btn-color-gray-400 btn-active-icon-primary me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="Edit Event" id="kt_modal_view_event_edit">
													<!--begin::Svg Icon | path: icons/duotune/art/art005.svg-->
													<span class="svg-icon svg-icon-2">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<path opacity="0.3" d="M21.4 8.35303L19.241 10.511L13.485 4.755L15.643 2.59595C16.0248 2.21423 16.5426 1.99988 17.0825 1.99988C17.6224 1.99988 18.1402 2.21423 18.522 2.59595L21.4 5.474C21.7817 5.85581 21.9962 6.37355 21.9962 6.91345C21.9962 7.45335 21.7817 7.97122 21.4 8.35303ZM3.68699 21.932L9.88699 19.865L4.13099 14.109L2.06399 20.309C1.98815 20.5354 1.97703 20.7787 2.03189 21.0111C2.08674 21.2436 2.2054 21.4561 2.37449 21.6248C2.54359 21.7934 2.75641 21.9115 2.989 21.9658C3.22158 22.0201 3.4647 22.0084 3.69099 21.932H3.68699Z" fill="black" />
															<path d="M5.574 21.3L3.692 21.928C3.46591 22.0032 3.22334 22.0141 2.99144 21.9594C2.75954 21.9046 2.54744 21.7864 2.3789 21.6179C2.21036 21.4495 2.09202 21.2375 2.03711 21.0056C1.9822 20.7737 1.99289 20.5312 2.06799 20.3051L2.696 18.422L5.574 21.3ZM4.13499 14.105L9.891 19.861L19.245 10.507L13.489 4.75098L4.13499 14.105Z" fill="black" />
														</svg>
													</span>
													<!--end::Svg Icon-->
												</div>
												<!--end::Edit-->
												<!--begin::Edit-->
												<div class="btn btn-icon btn-sm btn-color-gray-400 btn-active-icon-danger me-2" data-bs-toggle="tooltip" data-bs-dismiss="click" title="Delete Event" id="kt_modal_view_event_delete">
													<!--begin::Svg Icon | path: icons/duotune/general/gen027.svg-->
													<span class="svg-icon svg-icon-2">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<path d="M5 9C5 8.44772 5.44772 8 6 8H18C18.5523 8 19 8.44772 19 9V18C19 19.6569 17.6569 21 16 21H8C6.34315 21 5 19.6569 5 18V9Z" fill="black" />
															<path opacity="0.5" d="M5 5C5 4.44772 5.44772 4 6 4H18C18.5523 4 19 4.44772 19 5V5C19 5.55228 18.5523 6 18 6H6C5.44772 6 5 5.55228 5 5V5Z" fill="black" />
															<path opacity="0.5" d="M9 4C9 3.44772 9.44772 3 10 3H14C14.5523 3 15 3.44772 15 4V4H9V4Z" fill="black" />
														</svg>
													</span>
													<!--end::Svg Icon-->
												</div>
												<!--end::Edit-->
												<!--begin::Close-->
												<div class="btn btn-icon btn-sm btn-color-gray-500 btn-active-icon-primary" data-bs-toggle="tooltip" title="Hide Event" data-bs-dismiss="modal">
													<!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
													<span class="svg-icon svg-icon-1">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="black" />
															<rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="black" />
														</svg>
													</span>
													<!--end::Svg Icon-->
												</div>
												<!--end::Close-->
											</div>
											<!--end::Modal header-->
											<!--begin::Modal body-->
											<div class="modal-body pt-0 pb-20 px-lg-17">
												<!--begin::Row-->
												<div class="d-flex">
													<!--begin::Icon-->
													<!--begin::Svg Icon | path: icons/duotune/general/gen014.svg-->
													<span class="svg-icon svg-icon-1 svg-icon-muted me-5">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<path opacity="0.3" d="M21 22H3C2.4 22 2 21.6 2 21V5C2 4.4 2.4 4 3 4H21C21.6 4 22 4.4 22 5V21C22 21.6 21.6 22 21 22Z" fill="black" />
															<path d="M6 6C5.4 6 5 5.6 5 5V3C5 2.4 5.4 2 6 2C6.6 2 7 2.4 7 3V5C7 5.6 6.6 6 6 6ZM11 5V3C11 2.4 10.6 2 10 2C9.4 2 9 2.4 9 3V5C9 5.6 9.4 6 10 6C10.6 6 11 5.6 11 5ZM15 5V3C15 2.4 14.6 2 14 2C13.4 2 13 2.4 13 3V5C13 5.6 13.4 6 14 6C14.6 6 15 5.6 15 5ZM19 5V3C19 2.4 18.6 2 18 2C17.4 2 17 2.4 17 3V5C17 5.6 17.4 6 18 6C18.6 6 19 5.6 19 5Z" fill="black" />
															<path d="M8.8 13.1C9.2 13.1 9.5 13 9.7 12.8C9.9 12.6 10.1 12.3 10.1 11.9C10.1 11.6 10 11.3 9.8 11.1C9.6 10.9 9.3 10.8 9 10.8C8.8 10.8 8.59999 10.8 8.39999 10.9C8.19999 11 8.1 11.1 8 11.2C7.9 11.3 7.8 11.4 7.7 11.6C7.6 11.8 7.5 11.9 7.5 12.1C7.5 12.2 7.4 12.2 7.3 12.3C7.2 12.4 7.09999 12.4 6.89999 12.4C6.69999 12.4 6.6 12.3 6.5 12.2C6.4 12.1 6.3 11.9 6.3 11.7C6.3 11.5 6.4 11.3 6.5 11.1C6.6 10.9 6.8 10.7 7 10.5C7.2 10.3 7.49999 10.1 7.89999 10C8.29999 9.90003 8.60001 9.80003 9.10001 9.80003C9.50001 9.80003 9.80001 9.90003 10.1 10C10.4 10.1 10.7 10.3 10.9 10.4C11.1 10.5 11.3 10.8 11.4 11.1C11.5 11.4 11.6 11.6 11.6 11.9C11.6 12.3 11.5 12.6 11.3 12.9C11.1 13.2 10.9 13.5 10.6 13.7C10.9 13.9 11.2 14.1 11.4 14.3C11.6 14.5 11.8 14.7 11.9 15C12 15.3 12.1 15.5 12.1 15.8C12.1 16.2 12 16.5 11.9 16.8C11.8 17.1 11.5 17.4 11.3 17.7C11.1 18 10.7 18.2 10.3 18.3C9.9 18.4 9.5 18.5 9 18.5C8.5 18.5 8.1 18.4 7.7 18.2C7.3 18 7 17.8 6.8 17.6C6.6 17.4 6.4 17.1 6.3 16.8C6.2 16.5 6.10001 16.3 6.10001 16.1C6.10001 15.9 6.2 15.7 6.3 15.6C6.4 15.5 6.6 15.4 6.8 15.4C6.9 15.4 7.00001 15.4 7.10001 15.5C7.20001 15.6 7.3 15.6 7.3 15.7C7.5 16.2 7.7 16.6 8 16.9C8.3 17.2 8.6 17.3 9 17.3C9.2 17.3 9.5 17.2 9.7 17.1C9.9 17 10.1 16.8 10.3 16.6C10.5 16.4 10.5 16.1 10.5 15.8C10.5 15.3 10.4 15 10.1 14.7C9.80001 14.4 9.50001 14.3 9.10001 14.3C9.00001 14.3 8.9 14.3 8.7 14.3C8.5 14.3 8.39999 14.3 8.39999 14.3C8.19999 14.3 7.99999 14.2 7.89999 14.1C7.79999 14 7.7 13.8 7.7 13.7C7.7 13.5 7.79999 13.4 7.89999 13.2C7.99999 13 8.2 13 8.5 13H8.8V13.1ZM15.3 17.5V12.2C14.3 13 13.6 13.3 13.3 13.3C13.1 13.3 13 13.2 12.9 13.1C12.8 13 12.7 12.8 12.7 12.6C12.7 12.4 12.8 12.3 12.9 12.2C13 12.1 13.2 12 13.6 11.8C14.1 11.6 14.5 11.3 14.7 11.1C14.9 10.9 15.2 10.6 15.5 10.3C15.8 10 15.9 9.80003 15.9 9.70003C15.9 9.60003 16.1 9.60004 16.3 9.60004C16.5 9.60004 16.7 9.70003 16.8 9.80003C16.9 9.90003 17 10.2 17 10.5V17.2C17 18 16.7 18.4 16.2 18.4C16 18.4 15.8 18.3 15.6 18.2C15.4 18.1 15.3 17.8 15.3 17.5Z" fill="black" />
														</svg>
													</span>
													<!--end::Svg Icon-->
													<!--end::Icon-->
													<div class="mb-9">
														<!--begin::Event name-->
														<div class="d-flex align-items-center mb-2">
															<span class="fs-3 fw-bolder me-3" data-kt-calendar="event_name"></span>
															<span class="badge badge-light-success" data-kt-calendar="all_day"></span>
														</div>
														<!--end::Event name-->
														<!--begin::Event description-->
														<div class="fs-6" data-kt-calendar="event_description"></div>
														<!--end::Event description-->
													</div>
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center mb-2">
													<!--begin::Icon-->
													<!--begin::Svg Icon | path: icons/duotune/abstract/abs050.svg-->
													<span class="svg-icon svg-icon-1 svg-icon-success me-5">
														<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
															<circle fill="#000000" cx="12" cy="12" r="8" />
														</svg>
													</span>
													<!--end::Svg Icon-->
													<!--end::Icon-->
													<!--begin::Event start date/time-->
													<div class="fs-6">
														<span class="fw-bolder">Starts</span>
														<span data-kt-calendar="event_start_date"></span>
													</div>
													<!--end::Event start date/time-->
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center mb-9">
													<!--begin::Icon-->
													<!--begin::Svg Icon | path: icons/duotune/abstract/abs050.svg-->
													<span class="svg-icon svg-icon-1 svg-icon-danger me-5">
														<svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
															<circle fill="#000000" cx="12" cy="12" r="8" />
														</svg>
													</span>
													<!--end::Svg Icon-->
													<!--end::Icon-->
													<!--begin::Event end date/time-->
													<div class="fs-6">
														<span class="fw-bolder">Ends</span>
														<span data-kt-calendar="event_end_date"></span>
													</div>
													<!--end::Event end date/time-->
												</div>
												<!--end::Row-->
												<!--begin::Row-->
												<div class="d-flex align-items-center">
													<!--begin::Icon-->
													<!--begin::Svg Icon | path: icons/duotune/general/gen018.svg-->
													<span class="svg-icon svg-icon-1 svg-icon-muted me-5">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
															<path opacity="0.3" d="M18.0624 15.3453L13.1624 20.7453C12.5624 21.4453 11.5624 21.4453 10.9624 20.7453L6.06242 15.3453C4.56242 13.6453 3.76242 11.4453 4.06242 8.94534C4.56242 5.34534 7.46242 2.44534 11.0624 2.04534C15.8624 1.54534 19.9624 5.24534 19.9624 9.94534C20.0624 12.0453 19.2624 13.9453 18.0624 15.3453Z" fill="black" />
															<path d="M12.0624 13.0453C13.7193 13.0453 15.0624 11.7022 15.0624 10.0453C15.0624 8.38849 13.7193 7.04535 12.0624 7.04535C10.4056 7.04535 9.06241 8.38849 9.06241 10.0453C9.06241 11.7022 10.4056 13.0453 12.0624 13.0453Z" fill="black" />
														</svg>
													</span>
													<!--end::Svg Icon-->
													<!--end::Icon-->
													<!--begin::Event location-->
													<div class="fs-6" data-kt-calendar="event_location"></div>
													<!--end::Event location-->
												</div>
												<!--end::Row-->
											</div>
											<!--end::Modal body-->
										</div>
									</div>
								</div>
								<!--end::Modal - New Product-->
								<!--end::Modals-->
							</div>
							<!--end::Container-->
						</div>
						<!--end::Post-->
					</div>
					<!--end::Content-->
					<!--begin::Footer-->
					<div class="footer py-4 d-flex flex-lg-column" id="kt_footer">
						<!--begin::Container-->
						<div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">
							<!--begin::Copyright-->
							<div class="text-dark order-2 order-md-1">
								<span class="text-muted fw-bold me-1">2022©</span>
								<a href="https://keenthemes.com" target="_blank" class="text-gray-800 text-hover-primary">Keenthemes</a>
							</div>
							<!--end::Copyright-->
							<!--begin::Menu-->
							<ul class="menu menu-gray-600 menu-hover-primary fw-bold order-1">
								<li class="menu-item">
									<a href="https://keenthemes.com" target="_blank" class="menu-link px-2">About</a>
								</li>
								<li class="menu-item">
									<a href="https://devs.keenthemes.com" target="_blank" class="menu-link px-2">Support</a>
								</li>
								<li class="menu-item">
									<a href="https://1.envato.market/EA4JP" target="_blank" class="menu-link px-2">Purchase</a>
								</li>
							</ul>
							<!--end::Menu-->
						</div>
						<!--end::Container-->
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::Root-->
		<!--end::Main-->
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<!--begin::Svg Icon | path: icons/duotune/arrows/arr066.svg-->
			<span class="svg-icon">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
					<rect opacity="0.5" x="13" y="6" width="13" height="2" rx="1" transform="rotate(90 13 6)" fill="black" />
					<path d="M12.5657 8.56569L16.75 12.75C17.1642 13.1642 17.8358 13.1642 18.25 12.75C18.6642 12.3358 18.6642 11.6642 18.25 11.25L12.7071 5.70711C12.3166 5.31658 11.6834 5.31658 11.2929 5.70711L5.75 11.25C5.33579 11.6642 5.33579 12.3358 5.75 12.75C6.16421 13.1642 6.83579 13.1642 7.25 12.75L11.4343 8.56569C11.7467 8.25327 12.2533 8.25327 12.5657 8.56569Z" fill="black" />
				</svg>
			</span>
			<!--end::Svg Icon-->
		</div>
		<!--end::Scrolltop-->
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="plugins/global/plugins.bundle.js"></script>
		<script src="js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Vendors Javascript(used by this page)-->
		<script src="plugins/custom/fullcalendar/fullcalendar.bundle.js"></script>
		<script src="plugins/custom/datatables/datatables.bundle.js"></script>
		<!--end::Page Vendors Javascript-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<script src="js/custom/apps/calendar/calendar.js"></script>
		<script src="js/widgets.bundle.js"></script>
		<script src="js/custom/widgets.js"></script>
		<script src="js/custom/apps/chat/chat.js"></script>
		<script src="js/custom/utilities/modals/upgrade-plan.js"></script>
		<script src="js/custom/utilities/modals/create-app.js"></script>
		<script src="js/custom/utilities/modals/users-search.js"></script>
		<!--end::Page Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>

















