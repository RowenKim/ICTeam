<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="INSPIRO" />
    <meta name="description" content="Themeforest Template Polo">
<title>Insert title here</title>
	 <link href="${pageContext.request.contextPath }/CSS/plugins.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/CSS/seoha.css" type="text/css" rel="stylesheet">
</head>
<body>
    <!-- Body Inner -->
    <div class="body-inner">
        <!-- Header -->
        <header id="header" data-fullwidth="true">
            <div class="header-inner">
                <div class="container">
                    <!--Logo-->
                    <div id="logo"> <a href="index.html"><span class="logo-default">POLO</span><span class="logo-dark">POLO</span></a> </div>
                    <!--End: Logo-->
                    <!-- Search -->
                    <div id="search"><a id="btn-search-close" class="btn-search-close" aria-label="Close search form"><i class="icon-x"></i></a>
                        <form class="search-form" action="search-results-page.html" method="get">
                            <input class="form-control" name="q" type="search" placeholder="Type & Search..." />
                            <span class="text-muted">Start typing & press "Enter" or "ESC" to close</span>
                        </form>
                    </div>
                    <!-- end: search -->
                    <!--Header Extras-->
                    <div class="header-extras">
                        <ul>
                            <li>
                                <a id="btn-search" href="#"> <i class="icon-search"></i></a>
                            </li>
                            <li>
                                <div class="p-dropdown">
                                    <a href="#"><i class="icon-globe"></i><span>EN</span></a>
                                    <ul class="p-dropdown-content">
                                        <li><a href="#">French</a></li>
                                        <li><a href="#">Spanish</a></li>
                                        <li><a href="#">English</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--end: Header Extras-->
                    <!--Navigation Resposnive Trigger-->
                    <div id="mainMenu-trigger">
                        <a class="lines-button x"><span class="lines"></span></a>
                    </div>
                    <!--end: Navigation Resposnive Trigger-->
                    <!--Navigation-->
                    <div id="mainMenu">
                        <div class="container">
                            <nav>
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li class="dropdown"><a href="#">Layout</a>
                                        <ul class="dropdown-menu">
                                            <li class="dropdown-submenu"><a href="#">Topbar</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="header-topbar.html">Light</a></li>
                                                    <li><a href="header-topbar-dark.html">Dark</a></li>
                                                    <li><a href="header-topbar-transparent.html">Transparent</a></li>
                                                    <li><a href="header-topbar-colored.html">Colored</a></li>
                                                    <li><a href="header-topbar-fullwidth.html">Fullwidth</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Header</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="header.html">Light</a></li>
                                                    <li><a href="header-dark.html">Dark</a></li>
                                                    <li><a href="header-transparent.html">Transparent</a></li>
                                                    <li><a href="header-fullwidth.html">Fullwidth</a></li>
                                                    <li class="dropdown-submenu"><a href="#">Modern</a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="header-modern.html">Light</a></li>
                                                            <li><a href="header-modern-dark.html">Dark</a></li>
                                                            <li><a href="header-modern-transparent.html">Transparent</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="header-mini.html">Mini</a></li>
                                                    <li><a href="header-alternative.html">Alternative</a></li>
                                                    <li><a href="header-always-fixed.html">Always Fixed</a></li>
                                                    <li><a href="header-disable-fixed.html">Disable Fixed</a></li>
                                                    <li><a href="header-responsive-fixed.html">Responsive Fixed</a></li>
                                                    <li class="dropdown-submenu"><a href="#">Logo</a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="header-logo.html">Left</a></li>
                                                            <li><a href="header-logo-right.html">Right</a></li>
                                                            <li><a href="header-logo-center.html">Center</a></li>
                                                            <li><a href="header-logo-fixed-header.html">Header Fixed Logo</a></li>
                                                            <li><a href="header-logo-responsive.html">Header Responsive Logo</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a href="#">Menu Positions</a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="header-menu-left.html">Left</a></li>
                                                            <li><a href="header-menu-right.html">Right</a></li>
                                                            <li><a href="header-menu-center.html">Center</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Main Menu<span class="badge badge-danger">NEW</span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="menu.html">Default</a></li>
                                                    <li><a href="menu-lowercase.html">Lowercase</a></li>
                                                    <li><a href="menu-split.html">Split Menu</a></li>
                                                    <li><a href="menu-sub-title.html">Sub Title Menu</a></li>
                                                    <li><a href="menu-overlay.html">Overlay Menu</a></li>
                                                    <li><a href="menu-creative.html">Creative Menu</a></li>
                                                    <li><a href="menu-lines.html">Lines Menu</a></li>
                                                    <li class="dropdown-submenu"><a href="#">Outline</a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="menu-outline.html">Default</a></li>
                                                            <li><a href="menu-outline-dark.html">Dark</a></li>
                                                            <li><a href="menu-outline-light.html">Light</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a href="#">Rounded</a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="menu-rounded.html">Default</a></li>
                                                            <li><a href="menu-rounded-dark.html">Dark</a></li>
                                                            <li><a href="menu-rounded-light.html">Light</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="dropdown-submenu"><a href="#">Positions</a>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="menu-left.html">Left Aligned</a></li>
                                                            <li><a href="menu-center.html">Center Aligned</a></li>
                                                            <li><a href="menu-right.html">Right Aligned</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="menu-dots.html">Dots Menu</a></li>
                                                    <li><a href="menu-one-page.html">One Page Menu</a></li>
                                                    <li><a href="menu-hover-background.html">Hover Background</a></li>
                                                    <li><a href="menu-button.html">Button Version</a></li>
                                                    <li><a href="menu-social-icons.html">Social Icons Version</a></li>
                                                    <li><a href="menu-onclick.html">OnClick Open</a></li>
                                                    <li><a href="menu-rounded-dropdown.html">Rounded Dropdown</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Page Title</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-title.html">Default</a></li>
                                                    <li><a href="page-title-image.html">Image background</a></li>
                                                    <li><a href="page-title-video.html">Video background</a></li>
                                                    <li><a href="page-title-pattern.html">Pattern background</a></li>
                                                    <li><a href="page-title-background-color.html">Colored background</a></li>
                                                    <li><a href="page-title-parallax.html">Parallax</a></li>
                                                    <li><a href="page-title-animated.html">Animated</a></li>
                                                    <li><a href="page-title-right.html">Right Aligned</a></li>
                                                    <li><a href="page-title-left.html">Left Aligned</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Page Menu<span class="badge badge-danger">NEW</span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-menu.html">Default</a></li>
                                                    <li><a href="page-menu-rounded.html">Rounded</a></li>
                                                    <li><a href="page-menu-outline.html">Outline</a></li>
                                                    <li><a href="page-menu-lines.html">Lines</a></li>
                                                    <li><a href="page-menu-solid.html">Solid</a></li>
                                                    <li><a href="page-menu-light.html">Light</a></li>
                                                    <li><a href="page-menu-dark.html">Dark</a></li>
                                                    <li><a href="page-menu-creative.html">Creative</a></li>
                                                    <li><a href="page-menu.html">Dropdown</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Sidebars</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="sidebar-sticky.html">Sticky version</a></li>
                                                    <li><a href="sidebar.html">Left aligned</a></li>
                                                    <li><a href="sidebar-right.html">Right aligned</a></li>
                                                    <li><a href="sidebar-both.html">Both Sidebars</a></li>
                                                    <li><a href="sidebar-modern.html">Modern</a></li>
                                                    <li><a href="sidebar-modern-right.html">Modern Right</a></li>
                                                    <li><a href="sidebar-modern-both.html">Modern Both Sidebars</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Footers</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="footer.html#footer">Default</a></li>
                                                    <li><a href="footer-dark.html#footer">Dark</a></li>
                                                    <li><a href="footer-1.html#footer">Footer 1</a></li>
                                                    <li><a href="footer-2.html#footer">Footer 2</a></li>
                                                    <li><a href="footer-3.html#footer">Footer 3</a></li>
                                                    <li><a href="footer-4.html#footer">Footer 4</a></li>
                                                    <li><a href="footer-5.html#footer">Footer 5</a></li>
                                                    <li><a href="footer-6.html#footer">Footer 6</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Options</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="layout-boxed.html">Boxed</a></li>
                                                    <li><a href="layout-modern.html">Modern</a></li>
                                                    <li><a href="layout-frame.html">Frame</a></li>
                                                    <li><a href="layout-wide.html">Wide (default)</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#">Features</a>
                                        <ul class="dropdown-menu">
                                            <li class="dropdown-submenu"><a href="#">Sliders</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="slider-revolution-slider.html">Revolution Slider</a></li>
                                                    <li><a href="slider-inspiro-slider.html">Inspiro Slider</a></li>
                                                    <li><a href="slider-static-media-image.html">Fullscreen Image</a></li>
                                                    <li><a href="slider-static-media-parallax.html">Fullscreen Parallax</a></li>
                                                    <li><a href="slider-static-media-text-rotator.html">Fullscreen Text Rotator</a></li>
                                                    <li><a href="slider-static-media-video.html">Fullscreen HTML5 Video</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="widgets.html">Widgets</a></li>
                                            <li><a href="page-loaders.html">Page Loaders<span class="badge badge-danger">NEW</span></a></li>
                                            <li class="dropdown-submenu"><a href="#">Modal Auto Open<span class="badge badge-danger">NEW</span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="modal-auto-open-subscription.html">Subscription</a></li>
                                                    <li><a href="modal-auto-open-shop.html">Shop Promotion</a></li>
                                                    <li><a href="modal-auto-open-login.html">Login Form</a></li>
                                                    <li><a href="modal-auto-open-audio.html">Audio Player</a></li>
                                                    <li><a href="modal-auto-open-video.html">HTML5 Video</a></li>
                                                    <li><a href="modal-auto-open-youtube.html">YouTube Video</a></li>
                                                    <li><a href="modal-auto-open-vimeo.html">Vimeo Video</a></li>
                                                    <li><a href="modal-auto-open-iframe.html">Iframe</a></li>
                                                    <li><a href="modal-auto-open.html">Sample Text</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><a href="#">Cookie Notify<span class="badge badge-danger">NEW</span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="cookie-notify.html">Top position</a></li>
                                                    <li><a href="cookie-notify-bottom.html">Bottom position</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="shape-dividers.html">Shape Dividers<span class="badge badge-danger">NEW</span></a></li>
                                            <li class="dropdown-submenu"><a href="#">Menu Labels</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Label (new)<span class="badge badge-danger">NEW</span></a></li>
                                                    <li><a href="#">Label (hot)<span class="badge badge-danger">HOT</span></a></li>
                                                    <li><a href="#">Label (popular)<span class="badge badge-success">POPULAR</span></a></li>
                                                    <li><a href="#">Label (sale)<span class="badge badge-warning">SALE</span></a></li>
                                                    <li><a href="#">Label (info)<span class="badge badge-info">INFO</span></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-menu-item"><a href="#">Elements</a>
                                        <ul class="dropdown-menu">
                                            <li class="mega-menu-content">
                                                <div class="row">
                                                    <div class="col-lg-2">
                                                        <ul>
                                                            <li><a href="shortcode-according.html">Accordions</a></li>
                                                            <li><a href="shortcode-alerts.html">Alerts</a></li>
                                                            <li><a href="shortcode-animations.html">Animations</a></li>
                                                            <li><a href="shortcode-avatar.html">Avatar</a></li>
                                                            <li><a href="shortcode-audio-video.html">Audio & Video</a></li>
                                                            <li><a href="shortcode-blockquotes.html">Blockquotes</a></li>
                                                            <li><a href="component-bootstrap-switch.html">BS Switch<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="component-bootstrap-notify.html">BS Notify<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-breadcrumbs.html">Breadcrumbs</a></li>
                                                            <li><a href="shortcode-buttons.html">Buttons</a></li>
                                                            <li><a href="shortcode-background-image.html">Background Image</a></li>
                                                            <li><a href="shortcode-background-overlays.html">Background Overlays</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <ul>
                                                            <li><a href="component-charts-chartjs.html">Charts<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="component-calendar.html">Calendar<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-client-logo.html">Clients logos</a></li>
                                                            <li><a href="shortcode-calltoaction.html">Call to action</a></li>
                                                            <li><a href="shortcode-carousel.html">Carousel</a></li>
                                                            <li><a href="shortcode-code.html">Code</a></li>
                                                            <li><a href="shortcode-countdown-timer.html">Countdown Timers</a></li>
                                                            <li><a href="shortcode-countdown.html">Countdown<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-counters.html">Counter Numbers</a></li>
                                                            <li><a href="component-clipboard.html">Clipboard<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="component-datatable.html">Data Tables<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="component-daterangepicker.html">Date & Time Pickers</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <ul>
                                                            <li><a href="shortcode-dropcat-highlight.html">Dropcat & Highlight</a></li>
                                                            <li><a href="shortcode-dropdowns.html">Dropdowns</a></li>
                                                            <li><a href="shortcode-team-members.html">Team members</a></li>
                                                            <li><a href="shortcode-forms.html">Form Controls</a></li>
                                                            <li><a href="shortcode-form-validation.html">Form Validation</a></li>
                                                            <li><a href="shortcode-form-layouts.html">Form Layouts</a></li>
                                                            <li><a href="shortcode-file-upload.html">File upload</a></li>
                                                            <li><a href="shortcode-grid.html">Grid System</a></li>
                                                            <li><a href="shortcode-heading-styles.html">Heading Styles</a></li>
                                                            <li><a href="shortcode-icon-boxes.html">Icon Boxes</a></li>
                                                            <li><a href="shortcode-icon-lists.html">Icons</a></li>
                                                            <li><a href="shortcode-images.html">Images</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <ul>
                                                            <li><a href="shortcode-lightbox.html">Lightbox</a></li>
                                                            <li><a href="shortcode-lists.html">Lists</a></li>
                                                            <li><a href="shortcode-labels-badgets.html">Labels & Badges</a></li>
                                                            <li><a href="shortcode-maps.html">Maps</a></li>
                                                            <li><a href="shortcode-modal.html">Modal</a></li>
                                                            <li><a href="shortcode-modal-strip.html">Modal Strip</a></li>
                                                            <li><a href="shortcode-navs.html">Navbar & Navs</a></li>
                                                            <li><a href="shortcode-paginations.html">Pagination & Pager</a></li>
                                                            <li><a href="shortcode-panels.html">Panels</a></li>
                                                            <li><a href="shortcode-pie-chart.html">Pie charts</a></li>
                                                            <li><a href="shortcode-popover.html">Popover</a></li>
                                                            <li><a href="shortcode-milestone-stats.html">Milestone & Stats</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <ul>
                                                            <li><a href="shortcode-pricing-table.html">Pricing tables</a></li>
                                                            <li><a href="shortcode-progress-bar.html">Progress bars</a></li>
                                                            <li><a href="shortcode-parallax.html">Parallax</a></li>
                                                            <li><a href="shortcode-particles.html">Particles<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-responsive-utilities.html">Responsive utilities</a></li>
                                                            <li><a href="component-ion-range-slider.html">Range Slider<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-sections.html">Sections</a></li>
                                                            <li><a href="shortcode-smooth-scrolling.html">Smooth Scrolling</a></li>
                                                            <li><a href="shortcode-social-icons.html">Social Icons</a></li>
                                                            <li><a href="shortcode-spinners.html">Spinners<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="component-toggles-radio-checkboxes.html">Switch Toggle<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-shape-dividers.html">Shape Dividers<span class="badge badge-danger">NEW</span></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <ul>
                                                            <li><a href="shortcode-ratings.html">Ratings<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-tables.html">Tables</a></li>
                                                            <li><a href="shortcode-textbox.html">Text Boxes</a></li>
                                                            <li><a href="shortcode-tabs.html">Tabs</a></li>
                                                            <li><a href="shortcode-testimonial.html">Testimonials</a></li>
                                                            <li><a href="shortcode-toggles.html">Toggles</a></li>
                                                            <li><a href="shortcode-tooltips.html">Tooltips</a></li>
                                                            <li><a href="shortcode-typography.html">Typography</a></li>
                                                            <li><a href="shortcode-text-rotator.html">Text Rotator</a></li>
                                                            <li><a href="shortcode-timeline.html">Timeline<span class="badge badge-danger">NEW</span></a></li>
                                                            <li><a href="shortcode-video-background.html">Video Background</a></li>
                                                            <li><a href="shortcode-wizard.html">Wizard<span class="badge badge-danger">NEW</span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#">Pages</a>
                                        <ul class="dropdown-menu">
                                            <li class="dropdown-submenu"><span class="dropdown-menu-title-only">About us</span>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-about-basic.html">Basic</a></li>
                                                    <li><a href="page-about-extended.html">Extended</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><span class="dropdown-menu-title-only">About me</span>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-about-me-creative.html">Creative<span class="badge badge-danger">NEW</span></a></li>
                                                    <li><a href="page-about-me-basic.html">Basic</a></li>
                                                    <li><a href="page-about-me-extended.html">Extended</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><span class="dropdown-menu-title-only">Contact us</span>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-contact-classic.html">Classic</a></li>
                                                    <li><a href="page-contact-fullwidth-map.html">Fullwidth Map</a></li>
                                                    <li><a href="page-contact-fullscreen-map.html">Fullscreen Map</a></li>
                                                    <li><a href="page-contact-map-bottom.html">Map bottom</a></li>
                                                    <li><a href="page-contact-sidebar-left.html">Sidebar Left</a></li>
                                                    <li><a href="page-contact-sidebar-right.html">Sidebar Right</a></li>
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><span class="dropdown-menu-title-only">Gallery</span>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-gallery-2.html">Two Columns</a></li>
                                                    <li><a href="page-gallery-3.html">Three Columns</a></li>
                                                    <li><a href="page-gallery-4.html">Four Columns</a></li>
                                                    <li><a href="page-gallery-5.html">Five Columns</a></li>
                                                    <li><a href="page-gallery-6.html">Six Columns</a></li>
                                                    <li><a href="page-gallery-sidebar.html">Sidebar version</a></li>
                                                    <li><a href="page-gallery-wide.html">Wide version</a></li>
                                                    <li><a href="page-gallery-load-more.html">Load more</a></li>
                                                    <li><a href="page-gallery-infinite-scroll.html">Infinity Scroll</a></li>
                                                    <!--<li><a href="page-gallery-gallery-albums.html">Gallery Albums</a></li>-->
                                                </ul>
                                            </li>
                                            <li class="dropdown-submenu"><span class="dropdown-menu-title-only">User pages</span>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-user-login.html">Login</a></li>
                                                    <li><a href="page-user-login-classic.html">Login - Classic</a></li>
                                                    <li><a href="page-user-register.html">Register</a></li>
                                                    <li><a href="page-user-register-classic.html">Register - Classic</a></li>
                                                    <li><a href="page-user-password-recovery.html">Recovery Password</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="page-services.html">Services</a></li>
                                            <li><a href="page-our-team.html">Our team</a></li>
                                            <li><a href="page-our-clients.html">Our clients</a></li>
                                            <li><a href="page-maintenance.html">Maintenance</a></li>
                                            <li><a href="page-404.html">404 Page</a></li>
                                            <li><a href="page-404-parallax.html">404 Page - Parallax</a></li>
                                            <li><a href="page-500.html">500 Page</a></li>
                                            <li><a href="page-fullwidth.html">Fullwidth page</a></li>
                                            <li><a href="page-fullwidth-wide.html">Fullwidth page - Wide</a></li>
                                            <li class="dropdown-submenu"><span class="dropdown-menu-title-only">Page with Sidebar</span>
                                                <ul class="dropdown-menu">
                                                    <li><a href="page-sidebar.html">Sidebar Left</a></li>
                                                    <li><a href="page-sidebar-right.html">Sidebar Right</a></li>
                                                    <li><a href="page-sidebar-both.html">Sidebar Both</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="page-site-map.html">Site Map</a></li>
                                            <li><a href="page-faq.html">FAQ</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-menu-item"><a href="#">Portfolio</a>
                                        <ul class="dropdown-menu">
                                            <li class="mega-menu-content">
                                                <div class="row">
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Grids</li>
                                                            <li><a href="portfolio-2.html">Two Columns</a></li>
                                                            <li><a href="portfolio-3.html">Three Columns</a></li>
                                                            <li><a href="portfolio-4.html">Four Columns</a></li>
                                                            <li><a href="portfolio-5.html">Five Columns</a></li>
                                                            <li><a href="portfolio-6.html">Six Columns</a></li>
                                                            <li><a href="portfolio-sidebar.html">Sidebar version</a></li>
                                                            <li><a href="portfolio-wide-3.html">Wide version</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Masonry</li>
                                                            <li><a href="portfolio-masonry-2.html">Two Columns</a></li>
                                                            <li><a href="portfolio-masonry-3.html">Three Columns<span class="badge badge-danger">HOT</span></a></li>
                                                            <li><a href="portfolio-masonry-4.html">Four Columns</a></li>
                                                            <li><a href="portfolio-masonry-5.html">Five Columns</a></li>
                                                            <li><a href="portfolio-masonry-6.html">Six Columns</a></li>
                                                            <li><a href="portfolio-masonry-sidebar.html">Sidebar version</a></li>
                                                            <li><a href="portfolio-masonry-wide-3.html">Wide version</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Styles</li>
                                                            <li><a href="portfolio-filter-styles.html">Filter Styles</a></li>
                                                            <li><a href="portfolio-load-more.html">Load more</a></li>
                                                            <li><a href="portfolio-load-more-sidebar.html">Load more - Sidebar</a></li>
                                                            <li><a href="portfolio-infinite-scroll.html">Infinity Scroll</a></li>
                                                            <li><a href="portfolio-ajax.html">Portfolio Ajax</a></li>
                                                            <li><a href="portfolio-gallery-modal.html">Gallery Modal</a></li>
                                                            <li><a href="portfolio-video-modal.html">Video Modal</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Layouts</li>
                                                            <li><a href="portfolio-sidebar-left.html">Left Sidebar</a></li>
                                                            <li><a href="portfolio-sidebar-right.html">Right Sidebar</a></li>
                                                            <li><a href="portfolio-sidebar-both.html">Both Sidebars</a></li>
                                                            <li><a href="portfolio-slider-3.html">Slider Default</a></li>
                                                            <li><a href="portfolio-no-page-title.html">No Page Title</a></li>
                                                            <li><a href="portfolio-no-page-title-sidebar.html">No Page Title - Sidebar</a></li>
                                                            <li><a href="portfolio-hover-styles.html">Hover Styles</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Single Project</li>
                                                            <li><a href="portfolio-page-grid-gallery.html">Grid Gallery</a></li>
                                                            <li><a href="portfolio-page-particles.html">Particles Wide Project</a></li>
                                                            <li><a href="portfolio-page-floating-sidebar.html">Floating Sidebar</a></li>
                                                            <li><a href="portfolio-page-slider.html">Slider version</a></li>
                                                            <li><a href="portfolio-page-background-image.html">Fullscreen image</a></li>
                                                            <li><a href="portfolio-page-background-video.html">Fullscreen Video</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-12 no-padding">
                                                        <div class="d-none d-lg-block m-t-40 m-b-10">
                                                            <div class="container">
                                                                <div class="row">
                                                                    <div class="col-lg-9 m-t-10">
                                                                        <div class="text-center center">
                                                                            <div class="heading-creative"><strong>20+</strong> Amazing Hover Styles</div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-3"><a href="portfolio-hover-styles.html" class="btn m-l-20 btn-light btn-shadow btn-light-hover btn-light-hover">View All Hover Styles</a></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <ul class="d-block d-lg-none">
                                                            <li><a class="mega-menu-title" href="portfolio-hover-styles.html">20+ Amazing Hover Styles</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-menu-item"><a href="#">Blog</a>
                                        <ul class="dropdown-menu">
                                            <li class="mega-menu-content">
                                                <div class="row">
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Masonry</li>
                                                            <li><a href="blog-masonry-2.html">Two Columns</a></li>
                                                            <li><a href="blog-masonry-3.html">Three Columns<span class="badge badge-danger">HOT</span></a></li>
                                                            <li><a href="blog-masonry-4.html">Four Columns</a></li>
                                                            <li><a href="blog-masonry-sidebar.html">Sidebar version</a></li>
                                                            <li><a href="blog-masonry-no-page-title.html">No page title</a></li>
                                                            <li><a href="blog-masonry-wide.html">Wide version</a></li>
                                                            <li><a href="blog-masonry-load-more.html">Load More</a></li>
                                                            <li><a href="blog-masonry-infinite-scroll.html">Infinite Scroll</a></li>
                                                            <li><a href="blog-masonry-filter.html">Filter Categories</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Grids Layout</li>
                                                            <li><a href="blog-1.html">One Column</a></li>
                                                            <li><a href="blog-2.html">Two Columns</a></li>
                                                            <li><a href="blog-3.html">Three Columns</a></li>
                                                            <li><a href="blog-4.html">Four Columns</a></li>
                                                            <li><a href="blog-no-page-title.html">No page title</a></li>
                                                            <li><a href="blog-wide.html">Wide version</a></li>
                                                            <li><a href="blog-load-more.html">Load More</a></li>
                                                            <li><a href="blog-infinite-scroll.html">Infinite Scroll</a></li>
                                                            <li><a href="blog-filter.html">Filter Categories</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Left Image</li>
                                                            <li><a href="blog-left-image-sidebar-right.html">Right Sidebar</a></li>
                                                            <li><a href="blog-left-image-sidebar-left.html">Left Sidebar</a></li>
                                                            <li><a href="blog-left-image-sidebar-both.html">Both Sidebars</a></li>
                                                            <li><a href="blog-left-image-no-sidebar.html">No Sidebar</a></li>
                                                            <li><a href="blog-left-image-no-page-title.html">No page title</a></li>
                                                            <li><a href="blog-left-image-load-more.html">Load More</a></li>
                                                            <li><a href="blog-left-image-infinite-scroll.html">Infinite Scroll</a></li>
                                                            <li><a href="blog-left-image-author-info.html">Author Info</a></li>
                                                            <li><a href="blog-left-image-filter.html">Filter Categories</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Layouts</li>
                                                            <li><a href="blog-sidebar-left.html">Left Sidebar</a></li>
                                                            <li><a href="blog-sidebar-right.html">Right Sidebar</a></li>
                                                            <li><a href="blog-sidebar-both.html">Both Sidebars</a></li>
                                                            <li><a href="blog-fullwidth.html">Fullwidth</a></li>
                                                            <li class="mega-menu-title">Post Item Styles</li>
                                                            <li><a href="blog-style-shadow.html">Shadow</a></li>
                                                            <li><a href="blog-style-textual.html">Textual</a></li>
                                                            <li><a href="blog-style-grey-bg.html">Grey Background</a></li>
                                                            <li><a href="blog-style-author-info.html">Author Info</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Single Post</li>
                                                            <li><a href="blog-single.html">Default</a></li>
                                                            <li><a href="blog-single-slider.html">Slider</a></li>
                                                            <li><a href="blog-single-video.html">Video</a></li>
                                                            <li><a href="blog-single-audio.html">Audio</a></li>
                                                            <li><a href="blog-single-creative.html">Creative</a></li>
                                                            <li class="mega-menu-title">Comments<span class="badge badge-danger">NEW</span></li>
                                                            <li><a href="blog-comments.html#comments">Default Comments</a></li>
                                                            <li><a href="blog-comments-disqus.html#comments">Disqus Comments</a></li>
                                                            <li><a href="blog-comments-facebook.html#comments">Facebook Comments</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown mega-menu-item"><a href="#">Shop</a>
                                        <ul class="dropdown-menu">
                                            <li class="mega-menu-content">
                                                <div class="row">
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Columns</li>
                                                            <li><a href="shop-columns-2.html">Two Columns</a></li>
                                                            <li><a href="shop-columns-3.html">Three Columns</a></li>
                                                            <li><a href="shop-columns-4.html">Four Columns</a></li>
                                                            <li><a href="shop-columns-5.html">Five Columns</a></li>
                                                            <li><a href="shop-columns-6.html">Six Columns</a></li>
                                                            <li><a href="shop-sidebar-sticky.html">Sidebar Sticky</a></li>
                                                            <li><a href="shop-wide.html">Wide version</a></li>
                                                            <li><a href="shop-no-page-title.html">No page title</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Layouts</li>
                                                            <li><a href="shop-sidebar-left.html">Left Sidebar</a></li>
                                                            <li><a href="shop-sidebar-right.html">Right Sidebar</a></li>
                                                            <li><a href="shop-sidebar-both.html">Both Sidebars</a></li>
                                                            <li><a href="shop-fullwidth.html">Fullwidth (Wide)</a></li>
                                                            <li class="mega-menu-title">Loading Styles</li>
                                                            <li><a href="shop-load-more.html">Load more</a><a href="shop-load-more-sidebar.html">Load Sidebar</a></li>
                                                            <li><a href="shop-infinite-scroll.html">Infinity Scroll</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Order process</li>
                                                            <li><a class="animsition-link" href="shop-cart.html">Shoping Cart</a></li>
                                                            <li><a class="animsition-link" href="shop-cart-empty.html">Shoping Cart - Empty</a></li>
                                                            <li><a class="animsition-link" href="shop-checkout.html">Checkout</a></li>
                                                            <li><a class="animsition-link" href="shop-checkout-completed.html">Checkout Completed</a></li>
                                                            <li><a href="shop-wishlist.html">Wishlist</a></li>
                                                            <li><a href="shop-wishlist-empty.html">Wishlist Empty</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5">
                                                        <ul>
                                                            <li class="mega-menu-title">Single Product</li>
                                                            <li><a href="shop-single-product.html">Fullwidth</a></li>
                                                            <li><a href="shop-single-product-sidebar-left.html">Left Sidebar</a></li>
                                                            <li><a href="shop-single-product-sidebar-right.html">Right Sidebar</a></li>
                                                            <li><a href="shop-single-product-sidebar-both.html">Both Sidebars</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2-5 p-l-0">
                                                        <h4 class="text-theme">BIG SALE<small>Up to</small></h4>
                                                        <h2 class="text-lg text-theme lh80 m-b-30">70%</h2>
                                                        <p class="m-b-0">The most happiest time of the day!. Morbi sagittis, sem quis ipsum dolor sit amet lacinia faucibus.</p><a class="btn btn-shadow btn-rounded btn-block m-t-10">SHOP NOW!</a><small class="t300">
                                                            <p class="text-center m-0"><em>* Limited time Offer</em></p>
                                                        </small>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!--end: Navigation-->
                </div>
            </div>
        </header>
        <!-- end: Header -->
        <!-- Page title -->
        <section id="page-title">
            <div class="container">
                <div class="page-title">
                    <h1>Carousel</h1>
                    <span>Inspiration comes of working every day.</span>
                </div>
                <div class="breadcrumb">
                    <ul>
                        <li><a href="#">Home</a> </li>
                        <li><a href="#">Shortcodes</a> </li>
                        <li class="active"><a href="#">Carousel</a> </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- end: Page title -->
        <!-- Page Content -->
        <section id="page-content">
            <div class="container">
                <div class="row">
                    <div class="content col-lg-9">
                        <!--Image Carousel -->
                        <h4 class="mb-4">Images</h4>
                        <div class="carousel" data-items="3" data-dots="false"> <img src="images/mockup/17.jpg" alt="image" /> <img src="images/mockup/18.jpg" alt="image" /> <img src="images/mockup/12.jpg" alt="image" />
                            <img src="images/mockup/9.jpg" alt="image" /> <img src="images/mockup/5.jpg" alt="image" />
                            <img src="images/mockup/6.jpg" alt="image" /> <img src="images/mockup/12.jpg" alt="image" />
                        </div>
                        <!--end: Image Carousel -->
                        <div class="line"></div>
                        <!--Gallery Carousel -->
                        <h4 class="mb-4">Gallery</h4>
                        <div class="carousel" data-items="3" data-dots="false" data-lightbox="gallery">
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-Media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/63.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/63.jpg" class="btn btn-light btn-rounded">Zoom</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-Media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/64.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/64.jpg" class="btn btn-light btn-rounded">Zoom</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-Media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/65.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/65.jpg" class="btn btn-light btn-rounded">Zoom</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-Media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/66.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/66.jpg" class="btn btn-light btn-rounded">Zoom</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-Media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/67.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/67.jpg" class="btn btn-light btn-rounded">Zoom</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-Media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/68.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/68.jpg" class="btn btn-light btn-rounded">Zoom</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                        </div>
                        <!--Gallery Carousel -->
                        <div class="line"></div>
                        <!--Portfolio Carousel -->
                        <h4 class="mb-4">Portfolio items</h4>
                        <div class="carousel" data-items="3" data-lightbox="gallery">
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-marketing ct-media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/73.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a href="portfolio-page-grid-gallery.html">
                                            <h3>Luxury Wine</h3>
                                            <span>Graphics / Branding</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-marketing ct-media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/60.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/83l.jpg"><i class="icon-maximize"></i></a>
                                        <a href="portfolio-page-grid-gallery.html"><i class="icon-link"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-Media">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/61.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a href="portfolio-page-grid-gallery.html">
                                            <h3>Let's Go Outside</h3>
                                            <span>Illustrations / Graphics</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-marketing ct-webdesign">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/65.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description" data-lightbox="gallery">
                                        <a title="Photoshop Mock-up!" data-lightbox="gallery-image" href="images/portfolio/80l.jpg"><i class="icon-copy"></i></a>
                                        <a title="Paper Pouch!" data-lightbox="gallery-image" href="images/portfolio/81l.jpg" class="hidden"></a>
                                        <a title="Mock-up" data-lightbox="gallery-image" href="images/portfolio/82l.jpg" class="hidden"></a>
                                        <a href="portfolio-page-grid-gallery.html"><i class="icon-link"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-marketing ct-media ct-branding ct-marketing ct-webdesign">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/66.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a href="portfolio-page-grid-gallery.html">
                                            <h3>Last Iceland Sunshine</h3>
                                            <span>Graphics</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                            <!-- portfolio item -->
                            <div class="portfolio-item img-zoom ct-photography ct-media ct-branding ct-marketing ct-webdesign">
                                <div class="portfolio-item-wrap">
                                    <div class="portfolio-image">
                                        <a href="#"><img src="images/portfolio/67.jpg" alt=""></a>
                                    </div>
                                    <div class="portfolio-description">
                                        <a title="Paper Pouch!" data-lightbox="iframe" href="https://www.youtube.com/watch?v=k6Kly58LYzY"><i class="icon-play"></i></a>
                                        <a href="portfolio-page-grid-gallery.html"><i class="icon-link"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: portfolio item -->
                        </div>
                        <!--Portfolio Carousel -->
                        <div class="line"></div>
                        <!--Team Carousel -->
                        <h4 class="mb-4">Team members</h4>
                        <div class="carousel team-members team-members-shadow" data-items="3">
                            <div class="team-member">
                                <div class="team-image">
                                    <img src="images/team/6.jpg">
                                </div>
                                <div class="team-desc">
                                    <h3>Alea Smith</h3>
                                    <span>Software Developer</span>
                                    <p>The most happiest time of the day!. Praesent tristique hendrerit ex ut laoreet.
                                    </p>
                                    <div class="align-center">
                                        <a class="btn btn-xs btn-slide btn-light" href="#">
                                            <i class="fab fa-facebook-f"></i>
                                            <span>Facebook</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                            <i class="fab fa-twitter"></i>
                                            <span>Twitter</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                            <i class="fab fa-instagram"></i>
                                            <span>Instagram</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                            <i class="icon-mail"></i>
                                            <span>Mail</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-member">
                                <div class="team-image">
                                    <img src="images/team/7.jpg">
                                </div>
                                <div class="team-desc">
                                    <h3>Ariol Doe</h3>
                                    <span>Software Developer</span>
                                    <p>The most happiest time of the day!. Praesent tristique hendrerit ex ut laoreet.
                                    </p>
                                    <div class="align-center">
                                        <a class="btn btn-xs btn-slide btn-light" href="#">
                                            <i class="fab fa-facebook-f"></i>
                                            <span>Facebook</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                            <i class="fab fa-twitter"></i>
                                            <span>Twitter</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                            <i class="fab fa-instagram"></i>
                                            <span>Instagram</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                            <i class="icon-mail"></i>
                                            <span>Mail</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-member">
                                <div class="team-image">
                                    <img src="images/team/8.jpg">
                                </div>
                                <div class="team-desc">
                                    <h3>Emma Ross</h3>
                                    <span>Software Developer</span>
                                    <p>The most happiest time of the day!. Praesent tristique hendrerit ex ut laoreet.
                                    </p>
                                    <div class="align-center">
                                        <a class="btn btn-xs btn-slide btn-light" href="#">
                                            <i class="fab fa-facebook-f"></i>
                                            <span>Facebook</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                            <i class="fab fa-twitter"></i>
                                            <span>Twitter</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                            <i class="fab fa-instagram"></i>
                                            <span>Instagram</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                            <i class="icon-mail"></i>
                                            <span>Mail</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-member">
                                <div class="team-image">
                                    <img src="images/team/9.jpg">
                                </div>
                                <div class="team-desc">
                                    <h3>Victor Loda</h3>
                                    <span>Software Developer</span>
                                    <p>The most happiest time of the day!. Praesent tristique hendrerit ex ut laoreet.
                                    </p>
                                    <div class="align-center">
                                        <a class="btn btn-xs btn-slide btn-light" href="#">
                                            <i class="fab fa-facebook-f"></i>
                                            <span>Facebook</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                            <i class="fab fa-twitter"></i>
                                            <span>Twitter</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                            <i class="fab fa-instagram"></i>
                                            <span>Instagram</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                            <i class="icon-mail"></i>
                                            <span>Mail</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-member">
                                <div class="team-image">
                                    <img src="images/team/10.jpg">
                                </div>
                                <div class="team-desc">
                                    <h3>Alea Smith</h3>
                                    <span>Software Developer</span>
                                    <p>The most happiest time of the day!. Praesent tristique hendrerit ex ut laoreet.
                                    </p>
                                    <div class="align-center">
                                        <a class="btn btn-xs btn-slide btn-light" href="#">
                                            <i class="fab fa-facebook-f"></i>
                                            <span>Facebook</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                            <i class="fab fa-twitter"></i>
                                            <span>Twitter</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                            <i class="fab fa-instagram"></i>
                                            <span>Instagram</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                            <i class="icon-mail"></i>
                                            <span>Mail</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="team-member">
                                <div class="team-image">
                                    <img src="images/team/11.jpg">
                                </div>
                                <div class="team-desc">
                                    <h3>Ariol Doe</h3>
                                    <span>Software Developer</span>
                                    <p>The most happiest time of the day!. Praesent tristique hendrerit ex ut laoreet.
                                    </p>
                                    <div class="align-center">
                                        <a class="btn btn-xs btn-slide btn-light" href="#">
                                            <i class="fab fa-facebook-f"></i>
                                            <span>Facebook</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="100">
                                            <i class="fab fa-twitter"></i>
                                            <span>Twitter</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="#" data-width="118">
                                            <i class="fab fa-instagram"></i>
                                            <span>Instagram</span></a>
                                        <a class="btn btn-xs btn-slide btn-light" href="mailto:#" data-width="80">
                                            <i class="icon-mail"></i>
                                            <span>Mail</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Team Carousel -->
                        <div class="line"></div>
                        <!--Post Carousel -->
                        <h4 class="mb-4">Blog Articles</h4>
                        <div class="carousel" data-items="3">
                            <!-- Post item-->
                            <div class="post-item border">
                                <div class="post-item-wrap">
                                    <div class="post-image">
                                        <a href="#">
                                            <img alt="" src="images/blog/12.jpg"></a>
                                        <span class="post-meta-category"><a href="">Lifestyle</a></span>
                                    </div>
                                    <div class="post-item-description">
                                        <span class="post-meta-date"><i class="fa fa-calendar-o"></i>Jan 21, 2017</span>
                                        <span class="post-meta-comments"><a href=""><i class="fa fa-comments-o"></i>33
                                                Comments</a></span>
                                        <h2><a href="#">Lighthouse, standard post with a single image</a></h2>
                                        <p>Curabitur pulvinar euismod ante, ac sagittis ante posuere ac. Vivamus luctus
                                            commodo dolor porta feugiat. Fusce at velit id ligula pharetra laoreet.</p>
                                        <a href="#" class="item-link">Read More <i class="icon-chevron-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: Post item-->
                            <!-- Post item-->
                            <div class="post-item border">
                                <div class="post-item-wrap">
                                    <div class="post-slider">
                                        <div class="carousel dots-inside arrows-visible arrows-only" data-items="1" data-loop="true" data-autoplay="true" data-lightbox="gallery">
                                            <a href="images/blog/11.jpg" data-lightbox="gallery-image">
                                                <img alt="" src="images/blog/16.jpg"></a>
                                            <a href="images/blog/16.jpg" data-lightbox="gallery-image">
                                                <img alt="" src="images/blog/11.jpg"></a>
                                        </div>
                                        <span class="post-meta-category"><a href="">Technology</a></span>
                                    </div>
                                    <div class="post-item-description">
                                        <span class="post-meta-date"><i class="fa fa-calendar-o"></i>Jan 21, 2017</span>
                                        <span class="post-meta-comments"><a href=""><i class="fa fa-comments-o"></i>33
                                                Comments</a></span>
                                        <h2><a href="#">Simplicity, a post with slider gallery</a></h2>
                                        <p>Curabitur pulvinar euismod ante, ac sagittis ante posuere ac. Vivamus luctus
                                            commodo dolor porta feugiat. Fusce at velit id ligula pharetra laoreet.</p>
                                        <a href="#" class="item-link">Read More <i class="icon-chevron-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: Post item-->
                            <!-- Post item-->
                            <div class="post-item border">
                                <div class="post-item-wrap">
                                    <div class="post-image">
                                        <a href="#">
                                            <img alt="" src="images/blog/17.jpg"></a>
                                        <span class="post-meta-category"><a href="">Science</a></span>
                                    </div>
                                    <div class="post-item-description">
                                        <span class="post-meta-date"><i class="fa fa-calendar-o"></i>Jan 21, 2017</span>
                                        <span class="post-meta-comments"><a href=""><i class="fa fa-comments-o"></i>33
                                                Comments</a></span>
                                        <h2><a href="#">Lighthouse, standard post with a single image</a></h2>
                                        <p>Curabitur pulvinar euismod ante, ac sagittis ante posuere ac. Vivamus luctus
                                            commodo dolor porta feugiat. Fusce at velit id ligula pharetra laoreet.</p>
                                        <a href="#" class="item-link">Read More <i class="icon-chevron-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: Post item-->
                            <!-- Post item-->
                            <div class="post-item border">
                                <div class="post-item-wrap">
                                    <div class="post-image">
                                        <a href="#">
                                            <img alt="" src="images/blog/18.jpg"></a>
                                        <span class="post-meta-category"><a href="">Science</a></span>
                                    </div>
                                    <div class="post-item-description">
                                        <span class="post-meta-date"><i class="fa fa-calendar-o"></i>Jan 21, 2017</span>
                                        <span class="post-meta-comments"><a href=""><i class="fa fa-comments-o"></i>33
                                                Comments</a></span>
                                        <h2><a href="#">Lighthouse, standard post with a single image</a></h2>
                                        <p>Curabitur pulvinar euismod ante, ac sagittis ante posuere ac. Vivamus luctus
                                            commodo dolor porta feugiat. Fusce at velit id ligula pharetra laoreet.</p>
                                        <a href="#" class="item-link">Read More <i class="icon-chevron-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: Post item-->
                            <!-- Post item-->
                            <div class="post-item border">
                                <div class="post-item-wrap">
                                    <div class="post-slider">
                                        <div class="carousel dots-inside arrows-visible arrows-only" data-autoplay="2600" data-animate-in="fadeIn" data-animate-out="fadeOut" data-items="1" data-loop="true" data-autoplay="true" data-lightbox="gallery">
                                            <a href="images/blog/19.jpg" data-lightbox="gallery-image">
                                                <img alt="" src="images/blog/19.jpg"></a>
                                            <a href="images/blog/20.jpg" data-lightbox="gallery-image">
                                                <img alt="" src="images/blog/20.jpg"></a>
                                        </div>
                                        <span class="post-meta-category"><a href="">Technology</a></span>
                                    </div>
                                    <div class="post-item-description">
                                        <span class="post-meta-date"><i class="fa fa-calendar-o"></i>Jan 21, 2017</span>
                                        <span class="post-meta-comments"><a href=""><i class="fa fa-comments-o"></i>33
                                                Comments</a></span>
                                        <h2><a href="#">Simplicity, a post with slider gallery</a></h2>
                                        <p>Curabitur pulvinar euismod ante, ac sagittis ante posuere ac. Vivamus luctus
                                            commodo dolor porta feugiat. Fusce at velit id ligula pharetra laoreet.</p>
                                        <a href="#" class="item-link">Read More <i class="icon-chevron-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- end: Post item-->
                        </div>
                        <!--end: Post Carousel -->
                        <div class="line"></div>
                        <!-- Testimonials -->
                        <h4 class="mb-4">Testimononials</h4>
                        <div class="carousel testimonial testimonial-border" data-items="2" data-equalize-item=".testimonial-item">
                            <!-- Testimonials item -->
                            <div class="testimonial-item">
                                <img src="images/team/8.jpg" alt="">
                                <p>Polo is by far the most amazing template out there! I literally could not be happier
                                    that I chose to buy this template!</p>
                                <span>Alan Monre</span>
                                <span>CEO, Square Software.</span>
                            </div>
                            <!-- end: Testimonials item-->
                            <!-- Testimonials item -->
                            <div class="testimonial-item">
                                <img src="images/team/10.jpg" alt="">
                                <p>Polo is by far the most amazing template out there! I literally could not be happier
                                    that I chose to buy this template!</p>
                                <span>Lulla Smith</span>
                                <span>CEO @Verso.</span>
                            </div>
                            <!-- end: Testimonials item-->
                            <!-- Testimonials item -->
                            <div class="testimonial-item">
                                <img src="images/team/6.jpg" alt="">
                                <p>Polo is by far the most amazing template out there! I literally could not be happier
                                    that I chose to buy this template!</p>
                                <span>Alan Monre</span>
                                <span>CEO, Square Software.</span>
                            </div>
                            <!-- end: Testimonials item-->
                            <!-- Testimonials item -->
                            <div class="testimonial-item">
                                <img src="images/team/7.jpg" alt="">
                                <p>Polo is by far the most amazing template out there! I literally could not be happier
                                    that I chose to buy this template!</p>
                                <span>Resa Smith</span>
                                <span>Developer @Apple.inc</span>
                            </div>
                            <!-- end: Testimonials item-->
                        </div>
                        <!-- end: Testimonials -->
                        <div class="line"></div>
                        <!--Shop products Carousel -->
                        <h4 class="mb-4">Shop products Carousel </h4>
                        <div class="carousel" data-items="3">
                            <div class="product">
                                <div class="product-image">
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/1.jpg"></a>
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/10.jpg"></a>
                                    <span class="product-new">NEW</span>
                                    <span class="product-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </span>
                                    <div class="product-overlay">
                                        <a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick View</a>
                                    </div>
                                </div>
                                <div class="product-description">
                                    <div class="product-category">Women</div>
                                    <div class="product-title">
                                        <h3><a href="#">Bolt Sweatshirt</a></h3>
                                    </div>
                                    <div class="product-price"><ins>$15.00</ins>
                                    </div>
                                    <div class="product-rate">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="product-reviews"><a href="#">6 customer reviews</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product">
                                <div class="product-image">
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/2.jpg"></a>
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/6.jpg"></a>
                                    <span class="product-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </span>
                                    <div class="product-overlay">
                                        <a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick View</a>
                                    </div>
                                </div>
                                <div class="product-description">
                                    <div class="product-category">Women</div>
                                    <div class="product-title">
                                        <h3><a href="#">Consume Tshirt</a></h3>
                                    </div>
                                    <div class="product-price"><ins>$39.00</ins>
                                    </div>
                                    <div class="product-rate">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="product-reviews"><a href="#">3 customer reviews</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product">
                                <div class="product-image">
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/3.jpg"></a>
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/7.jpg"></a>
                                    <span class="product-hot">HOT</span>
                                    <span class="product-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </span>
                                    <div class="product-overlay">
                                        <a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick View</a>
                                    </div>
                                </div>
                                <div class="product-description">
                                    <div class="product-category">Man</div>
                                    <div class="product-title">
                                        <h3><a href="#">Logo Tshirt</a></h3>
                                    </div>
                                    <div class="product-price"><ins>$39.00</ins>
                                    </div>
                                    <div class="product-rate">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="product-reviews"><a href="#">3 customer reviews</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product">
                                <div class="product-image">
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/4.jpg"></a>
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/9.jpg"></a>
                                    <span class="product-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </span>
                                    <div class="product-overlay">
                                        <a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick View</a>
                                    </div>
                                </div>
                                <div class="product-description">
                                    <div class="product-category">Women</div>
                                    <div class="product-title">
                                        <h3><a href="#">Cotton Tshirt</a></h3>
                                    </div>
                                    <div class="product-price"><ins>$22.00</ins>
                                    </div>
                                    <div class="product-rate">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                    <div class="product-reviews"><a href="#">5 customer reviews</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product">
                                <div class="product-image">
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/5.jpg"></a>
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/11.jpg"></a>
                                    <span class="product-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </span>
                                    <div class="product-overlay">
                                        <a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick View</a>
                                    </div>
                                </div>
                                <div class="product-description">
                                    <div class="product-category">Man</div>
                                    <div class="product-title">
                                        <h3><a href="#">Grey Sweatshirt</a></h3>
                                    </div>
                                    <div class="product-price"><ins>$39.00</ins>
                                    </div>
                                    <div class="product-rate">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <div class="product-reviews"><a href="#">5 customer reviews</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product">
                                <div class="product-image">
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/6.jpg"></a>
                                    <a href="#"><img alt="Shop product image!" src="images/shop/products/2.jpg"></a>
                                    <span class="product-wishlist">
                                        <a href="#"><i class="fa fa-heart"></i></a>
                                    </span>
                                    <div class="product-overlay">
                                        <a href="shop-product-ajax-page.html" data-lightbox="ajax">Quick View</a>
                                    </div>
                                </div>
                                <div class="product-description">
                                    <div class="product-category">Women</div>
                                    <div class="product-title">
                                        <h3><a href="#">Pocket Tshirt</a></h3>
                                    </div>
                                    <div class="product-price">
                                        <del>$19.00</del><ins>$15.00</ins>
                                    </div>
                                    <div class="product-rate">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product-reviews"><a href="#">5 customer reviews</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end: Shop products Carousel -->
                    </div>
                    <!-- Sidebar-->
                    <div class="sidebar col-lg-3">
                        <div class="sidebar-menu">
                            <ul>
                                <label>Elements</label>
                                <li>
                                    <a href="shortcode-according.html">Accordions</a>
                                </li>
                                <li>
                                    <a href="shortcode-alerts.html">Alerts</a>
                                </li>
                                <li><a href="shortcode-animations.html">Animations</a></li>
                                <li><a href="shortcode-avatar.html">Avatar</a></li>
                                <li>
                                    <a href="shortcode-audio-video.html">Audio & Video</a>
                                </li>
                                <li>
                                    <a href="shortcode-blockquotes.html">Blockquotes</a>
                                </li>
                                <li>
                                    <a href="component-bootstrap-switch.html">BS
                                        Switch</a>
                                </li>
                                <li>
                                    <a href="component-bootstrap-notify.html">BS
                                        Notify</a>
                                </li>
                                <li>
                                    <a href="shortcode-breadcrumbs.html">Breadcrumbs</a>
                                </li>
                                <li> <a href="shortcode-buttons.html">Buttons</a> </li>
                                <li><a href="shortcode-background-image.html">Background Image</a></li>
                                <li><a href="shortcode-background-overlays.html">Background Overlays</a></li>

                                <li> <a href="component-charts-chartjs.html">Charts</a> </li>
                                <li> <a href="component-calendar.html">Calendar</a></li>
                                <li><a href="shortcode-client-logo.html">Clients logos</a></li>
                                <li>
                                    <a href="shortcode-calltoaction.html">Call
                                        to action</a>
                                </li>
                                <li>
                                    <a href="shortcode-carousel.html">Carousel</a>
                                </li>
                                <li>
                                    <a href="shortcode-code.html">Code</a>
                                </li>
                                <li>
                                    <a href="shortcode-countdown-timer.html">Countdown Timers</a>
                                </li>
                                <li>
                                    <a href="shortcode-countdown.html">Countdown</a>
                                </li>
                                <li><a href="shortcode-counters.html">Counter Numbers</a></li>
                                <li><a href="component-clipboard.html">Clipboard</a></li>
                                <li> <a href="component-datatable.html">Data Tables</a></li>
                                <li>
                                    <a href="component-daterangepicker.html">Date
                                        & Time Pickers</a>
                                </li>

                                <li>
                                    <a href="shortcode-dropcat-highlight.html">Dropcat & Highlight</a>
                                </li>
                                <li>
                                    <a href="shortcode-dropdowns.html">Dropdown</a>
                                </li>
                                <li>
                                    <a href="shortcode-team-members.html">Team members</a>
                                </li>
                                <li><a href="shortcode-forms.html">Form Controls</a></li>
                                <li><a href="shortcode-form-validation.html">Form Validation</a></li>
                                <li><a href="shortcode-form-layouts.html">Form Layouts</a></li>
                                <li><a href="shortcode-file-upload.html">File upload</a></li>
                                <li>
                                    <a href="shortcode-grid.html">Grid System</a></li>
                                <li>
                                    <a href="shortcode-heading-styles.html">Heading Styles</a>
                                </li>
                                <li>
                                    <a href="shortcode-icon-boxes.html">Icon Boxes</a>
                                </li>
                                <li>
                                    <a href="shortcode-icon-lists.html">Icons</a>
                                </li>
                                <li>
                                    <a href="shortcode-images.html">Images</a>
                                </li>

                                <li>
                                    <a href="shortcode-lightbox.html">Lightbox</a>
                                </li>
                                <li><a href="shortcode-lists.html">Lists</a></li>
                                <li><a href="shortcode-labels-badgets.html">Labels & Badges</a></li>
                                <li>
                                    <a href="shortcode-maps.html">Maps</a>
                                </li>
                                <li>
                                    <a href="shortcode-modal.html">Modal</a>
                                </li>
                                <li>
                                    <a href="shortcode-modal-strip.html">Modal Strip</a>
                                </li>
                                <li>
                                    <a href="shortcode-navs.html">Navbar & Navs</a>
                                </li>
                                <li>
                                    <a href="shortcode-paginations.html">Pagination
                                        & Pager</a>
                                </li>
                                <li>
                                    <a href="shortcode-panels.html">Panels</a>
                                </li>
                                <li> <a href="shortcode-pie-chart.html">Pie
                                        charts</a> </li>
                                <li> <a href="shortcode-popover.html">Popover</a> </li>
                                <li> <a href="shortcode-milestone-stats.html">Milestone & Stats</a> </li>

                                <li> <a href="shortcode-pricing-table.html">Pricing
                                        tables</a> </li>
                                <li>
                                    <a href="shortcode-progress-bar.html">Progress bars</a>
                                </li>
                                <li>
                                    <a href="shortcode-parallax.html">Parallax</a>
                                </li>
                                <li>
                                    <a href="shortcode-particles.html">Particles</a>
                                </li>
                                <li>
                                    <a href="shortcode-responsive-utilities.html">Responsive
                                        utilities</a>
                                </li>
                                <li>
                                    <a href="component-ion-range-slider.html">Range
                                        Slider</a>
                                </li>
                                <li>
                                    <a href="shortcode-sections.html">Sections</a>
                                </li>
                                <li>
                                    <a href="shortcode-smooth-scrolling.html">Smooth
                                        Scrolling</a>
                                </li>
                                <li><a href="shortcode-social-icons.html">Social Icons</a></li>
                                <li><a href="shortcode-spinners.html">Spinners</a></li>
                                <li><a href="component-toggles-radio-checkboxes.html">Switch Toggle</a></li>
                                <li><a href="shortcode-shape-dividers.html">Shape Dividers</a></li>

                                <li><a href="shortcode-ratings.html">Ratings</a></li>
                                <li><a href="shortcode-tables.html">Tables</a></li>
                                <li>
                                    <a href="shortcode-textbox.html">Text
                                        Boxes</a>
                                </li>
                                <li><a href="shortcode-tabs.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="shortcode-testimonial.html">Testimonials</a>
                                </li>
                                <li><a href="shortcode-toggles.html">Toggles</a></li>
                                <li><a href="shortcode-tooltips.html">Tooltips</a></li>
                                <li>
                                    <a href="shortcode-typography.html">Typography</a>
                                </li>
                                <li><a href="shortcode-text-rotator.html">Text Rotator</a></li>
                                <li><a href="shortcode-timeline.html">Timeline</a></li>
                                <li><a href="shortcode-video-background.html">Video Background</a></li>
                                <li><a href="shortcode-wizard.html">Wizard</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- end: sidebar-->
                </div>
            </div>
        </section>
        <!-- end: Page Content -->
        <!-- Footer -->
        <footer id="footer">
            <div class="footer-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="widget">
                                <div class="widget-title">Polo HTML5 Template</div>
                                <p class="mb-5">Built with love in Fort Worth, Texas, USA<br>
                                    All rights reserved. Copyright © 2019. INSPIRO.</p>
                                <a href="https://themeforest.net/item/polo-responsive-multipurpose-html5-template/13708923" class="btn btn-inverted">Purchase Now</a>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Discover</div>
                                        <ul class="list">
                                            <li><a href="#">Features</a></li>
                                            <li><a href="#">Layouts</a></li>
                                            <li><a href="#">Corporate</a></li>
                                            <li><a href="#">Updates</a></li>
                                            <li><a href="#">Pricing</a></li>
                                            <li><a href="#">Customers</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Features</div>
                                        <ul class="list">
                                            <li><a href="#">Layouts</a></li>
                                            <li><a href="#">Headers</a></li>
                                            <li><a href="#">Widgets</a></li>
                                            <li><a href="#">Footers</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Pages</div>
                                        <ul class="list">
                                            <li><a href="#">Portfolio</a></li>
                                            <li><a href="#">Blog</a></li>
                                            <li><a href="#">Shop</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="widget">
                                        <div class="widget-title">Support</div>
                                        <ul class="list">
                                            <li><a href="#">Help Desk</a></li>
                                            <li><a href="#">Documentation</a></li>
                                            <li><a href="#">Contact Us</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-content">
                <div class="container">
                    <div class="copyright-text text-center">&copy; 2019 POLO - Responsive Multi-Purpose HTML5 Template.
                        All Rights Reserved.<a href="http://www.inspiro-media.com" target="_blank"> INSPIRO</a> </div>
                </div>
            </div>
        </footer>
        <!-- end: Footer -->
    </div>
    <!-- end: Body Inner -->
    <!-- Scroll top -->
    <a id="scrollTop"><i class="icon-chevron-up"></i><i class="icon-chevron-up"></i></a>
    <!--Plugins-->
    <script src="js/jquery.js"></script>
    <script src="js/plugins.js"></script>
    <!--Template functions-->
    <script src="js/functions.js"></script>
</body>
</html>