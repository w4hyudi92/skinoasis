<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>SKINOASIS</title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="SKINOASIS">
    <meta name="author" content="p-themes">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="{{ staticAsset('frontend/skinoasis/assets/images/icons/apple-touch-icon.png') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ staticAsset('frontend/skinoasis/assets/images/icons/favicon-32x32.png') }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ staticAsset('frontend/skinoasis/assets/images/icons/favicon-16x16.png') }}">
    <!-- <link rel="manifest" href="{{ staticAsset('frontend/skinoasis') }}/assets/images/icons/site.webmanifest"> -->
    <link rel="mask-icon" href="{{ staticAsset('frontend/skinoasis/assets/images/icons/safari-pinned-tab.svg') }}" color="#666666">
    <link rel="shortcut icon" href="{{ staticAsset('frontend/skinoasis/assets/images/icons/favicon.ico') }}">
    <meta name="apple-mobile-web-app-title" content="Skinoasis">
    <meta name="application-name" content="Skinoasis">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="{{ staticAsset('frontend/skinoasis/assets/images/icons/browserconfig.xml') }}">
    <meta name="theme-color" content="#ffffff">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="{{ staticAsset('frontend/skinoasis/assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ staticAsset('frontend/skinoasis/assets/css/plugins/owl-carousel/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ staticAsset('frontend/skinoasis/assets/css/plugins/magnific-popup/magnific-popup.css') }}">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="{{ staticAsset('frontend/skinoasis/assets/css/style.css') }}">
    <link rel="stylesheet" href="{{ staticAsset('frontend/skinoasis/assets/css/demos/demo-18.css') }}">

    <script>
        WebFontConfig = {
            google: { families: [ 'Open+Sans:300,400,600,700','Poppins:300,400,500,600,700' ] }
        };
        (function(d) {
            var wf = d.createElement('script'), s = d.scripts[0];
            var url = {{ staticAsset('frontend/skinoasis') }};
            wf.src = url + '/assets/js/webfont.js';
            wf.async = true;
            s.parentNode.insertBefore(wf, s);
        })(document);
    </script>
</head>

<body>
    <div class="page-wrapper">
        <header class="header header-11">
            <div class="header-middle ">
                <div class="container">
                    <div class="header-center">
                        <a href="index.html" class="logo">
                            <img src="{{ staticAsset('frontend/skinoasis/assets/images/logo.png') }}" alt="SKINOASIS Logo" width="200" height="25">
                        </a>
                    </div><!-- End .header-center -->
                </div><!-- End .container -->
            </div><!-- End .header-middle -->

            <div class="header-middle sticky-header">
                <div class="container">
                    <div class="header-left">
                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="active">
                                    <a href="index.html">HOME</a>
                                </li>
                                <li>
                                    <a href="category.html">PRODUCT</a>
                                </li>

                                <li>
                                    <a href="category.html">ABOUT US</a>
                                </li>

                                <li>
                                    <a href="category.html">PARTNER</a>
                                </li>

                                <li>
                                    <a href="category.html">HALO BEAUTY</a>
                                </li>

                                <li><a href="#">BLOG</a></li>

                                <li><a href="#">EUTERRIA NANO ACADEMY</a></li>
                            </ul><!-- End .menu -->
                        </nav><!-- End .main-nav -->

                        <button class="mobile-menu-toggler">
                            <span class="sr-only">Toggle mobile menu</span>
                            <i class="icon-bars"></i>
                        </button>
                    </div><!-- End .header-left -->

                    <div class="header-right">

                        <div class="dropdown cart-dropdown">
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                                <i class="icon-shopping-cart"></i>
                                <span class="cart-count">2</span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right">
                                <div class="dropdown-cart-products">
                                    <div class="product">
                                        <div class="product-cart-details">
                                            <h4 class="product-title">
                                                <a href="product.html">Beige knitted elastic runner shoes</a>
                                            </h4>

                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span>
                                                x $84.00
                                            </span>
                                        </div><!-- End .product-cart-details -->

                                        <figure class="product-image-container">
                                            <a href="product.html" class="product-image">
                                                <img src="{{ staticAsset('frontend/skinoasis/assets/images/products/cart/product-1.jpg') }}" alt="product">
                                            </a>
                                        </figure>
                                        <a href="#" class="btn-remove" title="Remove Product"><i class="icon-close"></i></a>
                                    </div><!-- End .product -->

                                    <div class="product">
                                        <div class="product-cart-details">
                                            <h4 class="product-title">
                                                <a href="product.html">Blue utility pinafore denim dress</a>
                                            </h4>

                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span>
                                                x $76.00
                                            </span>
                                        </div><!-- End .product-cart-details -->

                                        <figure class="product-image-container">
                                            <a href="product.html" class="product-image">
                                                <img src="{{ staticAsset('frontend/skinoasis/assets/images/products/cart/product-2.jpg') }}" alt="product">
                                            </a>
                                        </figure>
                                        <a href="#" class="btn-remove" title="Remove Product"><i class="icon-close"></i></a>
                                    </div><!-- End .product -->
                                </div><!-- End .cart-product -->

                                <div class="dropdown-cart-total">
                                    <span>Total</span>

                                    <span class="cart-total-price">$160.00</span>
                                </div><!-- End .dropdown-cart-total -->

                                <div class="dropdown-cart-action">
                                    <a href="cart.html" class="btn btn-primary">View Cart</a>
                                    <a href="checkout.html" class="btn btn-outline-primary-2"><span>Checkout</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .dropdown-cart-total -->
                            </div><!-- End .dropdown-menu -->
                        </div><!-- End .cart-dropdown -->

                        <a href="wishlist.html" class="wishlist-link">
                            <i class="icon-user"></i>
                            <!-- <span class="wishlist-count">3</span> -->
                        </a>

                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-middle -->
        </header><!-- End .header -->

        <main class="main">
            <div class="intro-slider-container mb-3 mb-lg-5">
                <div class="intro-slider owl-carousel owl-theme owl-nav-inside owl-light" data-toggle="owl" data-owl-options='{"dots": true, "nav": false}'>
                    <div class="intro-slide" style="background-image: url({{ staticAsset('frontend/skinoasis/assets/images/home-bg.png') }});">
                        <div class="container">
                            <div class="intro-content text-center">
                                <h3 class="intro-subtitle cross-txt text-primary">SEASONAL PICKS</h3><!-- End .h3 intro-subtitle -->
                                <h1 class="intro-title text-white">Skin Care Made With The World’s
                                    Finest Plant Oils and Absolutely</h1><!-- End .intro-title -->
                                <div class="intro-text text-white">Skin Care Made With The World’s Finest Plant Oils and Absolutely </div><!-- End .intro-text -->


                                <div class="intro-action cross-txt">
                                    <a href="category.html" class="btn btn-outline-white">
                                        <span>Discover More</span>
                                    </a>
                                </div>
                            </div>
                        </div><!-- End .intro-content -->
                    </div><!-- End .intro-slide -->

                    <div class="intro-slide" style="background-image: url({{ staticAsset('frontend/skinoasis/assets/images/demos/demo-18/slider/slide-2.jpg') }});">
                        <div class="container">
                            <div class="intro-content text-center">
                                <h3 class="intro-subtitle text-primary cross-txt">Women's Accessories</h3><!-- End .h3 intro-subtitle -->
                                <h1 class="intro-title text-white">Save up to</h1><!-- End .intro-title -->
                                <div class="intro-text text-white">30-50% off</div><!-- End .intro-text -->
                                <div class="intro-action cross-txt">
                                    <a href="category.html" class="btn btn-outline-white">
                                        <span>Discover More</span>
                                    </a>
                                </div>
                            </div>
                        </div><!-- End .intro-content -->
                    </div><!-- End .intro-slide -->
                </div><!-- End .intro-slider owl-carousel owl-simple -->

                <span class="slider-loader text-white"></span><!-- End .slider-loader -->
            </div><!-- End .intro-slider-container -->

            <h2 class="title text-center brands">“Skin Oasis product is a high-tech and newest product from Korea”</h2><!-- End .title -->

            <div class="brands-border owl-carousel owl-simple mb-5" data-toggle="owl"
                data-owl-options='{
                    "nav": false,
                    "dots": false,
                    "margin": 10,
                    "loop": false,
                    "responsive": {
                        "0": {
                            "items":2
                        },
                        "420": {
                            "items":3
                        },
                        "600": {
                            "items":4
                        },
                        "900": {
                            "items":5
                        },
                        "1024": {
                            "items":6
                        }
                    }
                }'>

                <a href="#" class="brand">
                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/brands/1.png') }}" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/brands/2.png') }}" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/brands/3.png') }}" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/brands/4.png') }}" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/brands/5.png') }}" alt="Brand Name">
                </a>

                <a href="#" class="brand">
                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/brands/6.png') }}" alt="Brand Name">
                </a>

            </div><!-- End .owl-carousel -->

            <!-- Flyer Home 1 -->
            <section class="gallery pt-5" style="background-image: url({{ staticAsset('frontend/skinoasis/assets/images/demos/demo-30/bg-3.png') }})">
                <div class="container">
                    <div class="row">

                        <div class="col-md-6">
                            <div class="content-right">
                                <figure class="mb-md-12">
                                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/demos/demo-30/banners/banner-2.jpg') }}" alt="Banner">
                                </figure>
                                <figure>
                                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/demos/demo-30/banners/banner-3.jpg') }}" alt="Banner">
                                </figure>
                            </div>
                        </div>

                        <div class="col-md-6 p-md-0">
                            <div class="content-left">
                                <div class="heading mt-3">
                                    <h4 class="subtitle">Discover all your skin needs through time-efficient skin check system. Try it now!</h4>
                                    <h2 class="title mb-2">Product <br>Gallery</h2>
                                    <p class="content mb-6">
                                        Donec nec justo eget felis facilisis fermentum. Aliquam <br>
                                        porttitor mauris sit amet orci. Aenean dignissim <br>
                                        pellentesque felis.
                                    </p>
                                </div>
                                <figure>
                                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/demos/demo-30/banners/banner-1.jpg') }}" alt="Banner">
                                </figure>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <div class="pt-6 pb-6" style="background-color: #fff;">
                <div class="container">
                    <div class="banner-set">
                        <div class="row">

                            <div class="col-lg-6">
                                <div class="banner-set-image banner-border-hover">
                                    <a href="#">
                                        <img src="{{ staticAsset('frontend/skinoasis/assets/images/demos/demo-5/banners/banner-4.jpg') }}" alt="banner">
                                    </a>
                                    <div class="banner-content">
                                        <h3 class="banner-title"><a href="#"><span>Casual basics and<br>trendy key pieces.</span></a></h3><!-- End .banner-title -->
                                        <h4 class="banner-subtitle">in this look</h4>
                                        <!-- End .banner-subtitle -->
                                        <h4 class="banner-detail">• Rib-knit cardigan <br>• Linen-blend paper bag trousers</h4>
                                        <h4 class="banner-price">$19.99 - $48.00</h4>
                                        <a href="#" class="btn btn-outline-primary-2 banner-link">buy all</a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner-set-image -->
                            </div><!-- End .col-lg-6 -->

                            <div class="col-lg-6">
                                <div class="banner-set-content text-center">
                                    <div class="set-content-wrapper">
                                        <h4>Special</h4>
                                        <h2>Refine Your Style.</h2>

                                        <p>Get on our exclusive email list and be the first to hear about sales, coupons, new arrivals and more! </p>

                                        <div class="banner-set-products">
                                            <div class="row">
                                                <div class="products">
                                                    <div class="col-6">
                                                        <div class="product product-2 text-center">
                                                            <figure class="product-media">
                                                                <a href="product.html">
                                                                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/demos/demo-5/products/product-13.jpg') }}" alt="Product image" class="product-image">
                                                                </a>
                                                            </figure><!-- End .product-media -->

                                                            <div class="product-body">
                                                                <h3 class="product-title"><a href="product.html">Rib-knit cardigan</a></h3><!-- End .product-title -->
                                                                <div class="product-price">
                                                                    $24.99
                                                                </div><!-- End .product-price -->
                                                            </div><!-- End .product-body -->
                                                        </div><!-- End .product -->
                                                    </div><!-- End .col-sm-6 -->

                                                    <div class="col-6">
                                                        <div class="product product-2 text-center">
                                                            <figure class="product-media">
                                                                <a href="product.html">
                                                                    <img src="{{ staticAsset('frontend/skinoasis/assets/images/demos/demo-5/products/product-14.jpg') }}" alt="Product image" class="product-image">
                                                                </a>
                                                            </figure><!-- End .product-media -->

                                                            <div class="product-body">
                                                                <h3 class="product-title"><a href="product.html">Linen-blend trousers</a></h3><!-- End .product-title -->
                                                                <div class="product-price">
                                                                    $19.99
                                                                </div><!-- End .product-price -->
                                                            </div><!-- End .product-body -->
                                                        </div><!-- End .product -->
                                                    </div><!-- End .col-sm-6 -->
                                                </div>
                                            </div><!-- End .row -->
                                        </div><!-- End .banner-set-products -->
                                    </div><!-- End .set-content-wrapper -->
                                </div><!-- End .banner-set-content -->
                            </div><!-- End .col-lg-6 -->

                        </div><!-- End .row -->
                    </div><!-- End .banner-set -->
                </div><!-- End .container -->
            </div><!-- End .bg-lighter pt6 pb-6 -->


        </main><!-- End .main -->

        <footer class="footer footer-white">
            
            <div class="footer-middle">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-lg-6">
                            <div class="widget widget-about">
                                <img src="{{ staticAsset('frontend/skinoasis/assets/images/logo-black.png') }}" class="footer-logo" alt="Footer Logo" width="200" height="25">
                                <p>
                                    <ol class="footer-about">
                                        <li> We take the doubt out of whether you need by provide a safe, high quality, high efficacy products</li>
                                        <li> To make a high performance product and the place sharing and make experience together for our legacy.</li>
                                        <li> You can always count on St. Morita Farma support. Service, quality, efficacy and delivery has been our concerning motto</li>
                                        <li> Problem solving, knowledgeable, representative responsive technical service, ready accessible information and comprehensive supports</li>
                                        <li> This is what St. Morita Farma family and its Environment need to survive and grow in today`s competitive world</li>
                                    </ol>
                                </p>

                            </div><!-- End .widget about-widget -->
                        </div><!-- End .col-sm-6 col-lg-4 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="widget">
                                <h4 class="widget-title">Head Office</h4><!-- End .widget-title -->

                                <ul class="widget-list">
                                    <li><a href="about.html">About Skinoasis</a></li>
                                    <li><a href="#">How to shop on Skinoasis</a></li>
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="contact.html">Contact us</a></li>
                                    <li><a href="login.html">Log in</a></li>
                                </ul><!-- End .widget-list -->
                            </div><!-- End .widget -->
                        </div><!-- End .col-sm-6 col-lg-4 -->

                        <div class="col-sm-6 col-lg-3">
                            <div class="widget">
                                <h4 class="widget-title">Factory</h4><!-- End .widget-title -->

                                <ul class="widget-list">
                                    <li><a href="#">Payment Methods</a></li>
                                    <li><a href="#">Money-back guarantee!</a></li>
                                    <li><a href="#">Returns</a></li>
                                    <li><a href="#">Shipping</a></li>
                                    <li><a href="#">Terms and conditions</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul><!-- End .widget-list -->
                            </div><!-- End .widget -->
                        </div><!-- End .col-sm-6 col-lg-4 -->

                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .footer-middle -->

            <div class="footer-bottom mb-5">
                <div class="container">
                    <p class="footer-copyright">Copyright © {{ date('Y') }} Skinoasis. All Rights Reserved.</p><!-- End .footer-copyright -->
                    <ul class="footer-menu">
                        <li><a href="#">Terms Of Use</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul><!-- End .footer-menu -->

                    <div class="social-icons social-icons-color">
                        <span class="social-label">Social Media</span>
                        <a href="#" class="social-icon social-facebook" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                        <a href="#" class="social-icon social-twitter" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                        <a href="#" class="social-icon social-instagram" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                        <a href="#" class="social-icon social-youtube" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
                        <a href="#" class="social-icon social-pinterest" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                    </div><!-- End .soial-icons -->
                </div><!-- End .container -->
            </div><!-- End .footer-bottom -->
        </footer><!-- End .footer -->
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <!-- Mobile Menu -->
    <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

    <div class="mobile-menu-container">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="icon-close"></i></span>

            <form action="#" method="get" class="mobile-search">
                <label for="mobile-search" class="sr-only">Search</label>
                <input type="search" class="form-control" name="mobile-search" id="mobile-search" placeholder="Search in..." required>
                <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
            </form>

            <nav class="mobile-nav">
                <ul class="mobile-menu">
                    <li class="active">
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="category.html">Shop</a>
                        <ul>
                            <li><a href="category-list.html">Shop List</a></li>
                            <li><a href="category-2cols.html">Shop Grid 2 Columns</a></li>
                            <li><a href="category.html">Shop Grid 3 Columns</a></li>
                            <li><a href="category-4cols.html">Shop Grid 4 Columns</a></li>
                            <li><a href="category-boxed.html"><span>Shop Boxed No Sidebar<span class="tip tip-hot">Hot</span></span></a></li>
                            <li><a href="category-fullwidth.html">Shop Fullwidth No Sidebar</a></li>
                            <li><a href="product-category-boxed.html">Product Category Boxed</a></li>
                            <li><a href="product-category-fullwidth.html"><span>Product Category Fullwidth<span class="tip tip-new">New</span></span></a></li>
                            <li><a href="cart.html">Cart</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="wishlist.html">Wishlist</a></li>
                            <li><a href="#">Lookbook</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="product.html" class="sf-with-ul">Product</a>
                        <ul>
                            <li><a href="product.html">Default</a></li>
                            <li><a href="product-centered.html">Centered</a></li>
                            <li><a href="product-extended.html"><span>Extended Info<span class="tip tip-new">New</span></span></a></li>
                            <li><a href="product-gallery.html">Gallery</a></li>
                            <li><a href="product-sticky.html">Sticky Info</a></li>
                            <li><a href="product-sidebar.html">Boxed With Sidebar</a></li>
                            <li><a href="product-fullwidth.html">Full Width</a></li>
                            <li><a href="product-masonry.html">Masonry Sticky Info</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Pages</a>
                        <ul>
                            <li>
                                <a href="about.html">About</a>

                                <ul>
                                    <li><a href="about.html">About 01</a></li>
                                    <li><a href="about-2.html">About 02</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="contact.html">Contact</a>

                                <ul>
                                    <li><a href="contact.html">Contact 01</a></li>
                                    <li><a href="contact-2.html">Contact 02</a></li>
                                </ul>
                            </li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="faq.html">FAQs</a></li>
                            <li><a href="404.html">Error 404</a></li>
                            <li><a href="coming-soon.html">Coming Soon</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="blog.html">Blog</a>

                        <ul>
                            <li><a href="blog.html">Classic</a></li>
                            <li><a href="blog-listing.html">Listing</a></li>
                            <li>
                                <a href="#">Grid</a>
                                <ul>
                                    <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                    <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                    <li><a href="blog-grid-4cols.html">Grid 4 columns</a></li>
                                    <li><a href="blog-grid-sidebar.html">Grid sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Masonry</a>
                                <ul>
                                    <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                    <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                    <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                    <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Mask</a>
                                <ul>
                                    <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                    <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Single Post</a>
                                <ul>
                                    <li><a href="single.html">Default with sidebar</a></li>
                                    <li><a href="single-fullwidth.html">Fullwidth no sidebar</a></li>
                                    <li><a href="single-fullwidth-sidebar.html">Fullwidth with sidebar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="elements-list.html">Elements</a>
                        <ul>
                            <li><a href="elements-products.html">Products</a></li>
                            <li><a href="elements-typography.html">Typography</a></li>
                            <li><a href="elements-titles.html">Titles</a></li>
                            <li><a href="elements-banners.html">Banners</a></li>
                            <li><a href="elements-product-category.html">Product Category</a></li>
                            <li><a href="elements-video-banners.html">Video Banners</a></li>
                            <li><a href="elements-buttons.html">Buttons</a></li>
                            <li><a href="elements-accordions.html">Accordions</a></li>
                            <li><a href="elements-tabs.html">Tabs</a></li>
                            <li><a href="elements-testimonials.html">Testimonials</a></li>
                            <li><a href="elements-blog-posts.html">Blog Posts</a></li>
                            <li><a href="elements-portfolio.html">Portfolio</a></li>
                            <li><a href="elements-cta.html">Call to Action</a></li>
                            <li><a href="elements-icon-boxes.html">Icon Boxes</a></li>
                        </ul>
                    </li>
                </ul>
            </nav><!-- End .mobile-nav -->

            <div class="social-icons">
                <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
            </div><!-- End .social-icons -->
        </div><!-- End .mobile-menu-wrapper -->
    </div><!-- End .mobile-menu-container -->

    <div class="footer-fix-nav shadow">
        <div class="row mx-0">
            <div class="col">
                <a href="https://klbtheme.com/cosmetsy/" title="Cosmetsy – Beauty and Cosmetics Shop">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                </a>
            </div>
            <div class="col">
                <a href="https://klbtheme.com/cosmetsy/shop/"><i class="klb-grid"></i></a>
            </div>
            <div class="col">
                                        <a href="https://klbtheme.com/cosmetsy/cart/"><i class="klb-shop-bag"></i><span class="count">0</span></a>
            </div>
            <div class="col">
                <a href="https://klbtheme.com/cosmetsy/my-account/"><i class="klb-user-profile"></i></a>
            </div>
        </div>
    </div>

    <!-- Sign in / Register Modal -->
    <div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="icon-close"></i></span>
                    </button>

                    <div class="form-box">
                        <div class="form-tab">
                            <ul class="nav nav-pills nav-fill" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="tab-content-5">
                                <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                    <form action="#">
                                        <div class="form-group">
                                            <label for="singin-email">Username or email address *</label>
                                            <input type="text" class="form-control" id="singin-email" name="singin-email" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-group">
                                            <label for="singin-password">Password *</label>
                                            <input type="password" class="form-control" id="singin-password" name="singin-password" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>LOG IN</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="signin-remember">
                                                <label class="custom-control-label" for="signin-remember">Remember Me</label>
                                            </div><!-- End .custom-checkbox -->

                                            <a href="#" class="forgot-link">Forgot Your Password?</a>
                                        </div><!-- End .form-footer -->
                                    </form>
                                    <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .form-choice -->
                                </div><!-- .End .tab-pane -->
                                <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                    <form action="#">
                                        <div class="form-group">
                                            <label for="register-email">Your email address *</label>
                                            <input type="email" class="form-control" id="register-email" name="register-email" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-group">
                                            <label for="register-password">Password *</label>
                                            <input type="password" class="form-control" id="register-password" name="register-password" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>SIGN UP</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="register-policy" required>
                                                <label class="custom-control-label" for="register-policy">I agree to the <a href="#">privacy policy</a> *</label>
                                            </div><!-- End .custom-checkbox -->
                                        </div><!-- End .form-footer -->
                                    </form>
                                    <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login  btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .form-choice -->
                                </div><!-- .End .tab-pane -->
                            </div><!-- End .tab-content -->
                        </div><!-- End .form-tab -->
                    </div><!-- End .form-box -->
                </div><!-- End .modal-body -->
            </div><!-- End .modal-content -->
        </div><!-- End .modal-dialog -->
    </div><!-- End .modal -->

    <div class="container newsletter-popup-container mfp-hide" id="newsletter-popup-form2">
        <div class="row justify-content-center">
            <div class="col-10">
                <div class="row no-gutters bg-white newsletter-popup-content">
                    <div class="col-xl-3-5col col-lg-7 banner-content-wrap">
                        <div class="banner-content text-center">
                            <img src="{{ staticAsset('frontend/skinoasis/assets/images/popup/newsletter/logo.png') }}" class="logo" alt="logo" width="60" height="15">
                            <h2 class="banner-title">get <span>25<light>%</light></span> off</h2>
                            <p>Subscribe to the Skinoasis eCommerce newsletter to receive timely updates from your favorite products.</p>
                            <form action="#">
                                <div class="input-group input-group-round">
                                    <input type="email" class="form-control form-control-white" placeholder="Your Email Address" aria-label="Email Adress" required>
                                    <div class="input-group-append">
                                        <button class="btn" type="submit"><span>go</span></button>
                                    </div><!-- .End .input-group-append -->
                                </div><!-- .End .input-group -->
                            </form>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="register-policy-2" required>
                                <label class="custom-control-label" for="register-policy-2">Do not show this popup again</label>
                            </div><!-- End .custom-checkbox -->
                        </div>
                    </div>
                    <div class="col-xl-2-5col col-lg-5 ">
                        <img src="{{ staticAsset('frontend/skinoasis/assets/images/popup/newsletter/img-1.jpg') }}" class="newsletter-img" alt="newsletter">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Plugins JS File -->
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/jquery.min.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/jquery.hoverIntent.min.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/jquery.waypoints.min.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/superfish.min.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/owl.carousel.min.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/bootstrap-input-spinner.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/jquery.magnific-popup.min.js') }}"></script>
    <!-- Main JS File -->
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/main.js') }}"></script>
    <script src="{{ staticAsset('frontend/skinoasis/assets/js/demos/demo-18.js') }}"></script>
</body>

</html>