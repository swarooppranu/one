<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #f9fafb;
      color: #111827;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    :root {
      --primary: #0b3b3c;
      --primary-light: #1e5f60;
      --accent: #e07a5f;
      --accent-soft: #fae6df;
      --surface: #ffffff;
      --muted: #6b7280;
      --muted-light: #9ca3af;
      --shadow-sm: 0 1px 3px rgba(0,0,0,0.04), 0 1px 2px rgba(0,0,0,0.06);
      --shadow-md: 0 8px 24px rgba(0,0,0,0.05);
      --shadow-lg: 0 16px 48px rgba(0,0,0,0.08);
      --radius: 20px;
      --radius-sm: 12px;
      --radius-full: 9999px;
      --transition: 0.2s ease;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 20px;
    }

    /* ---- header ---- */
    header {
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
      position: sticky;
      top: 0;
      z-index: 60;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 10px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 20px;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .brand i {
      color: var(--accent);
      font-size: 24px;
    }
    .brand span.accent {
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: var(--radius-full);
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
      text-decoration: none;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: var(--accent-soft);
      color: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      background: transparent;
      border: none;
      cursor: pointer;
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--primary);
    }

    .cart-badge {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -4px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: #f1f3f4;
      border-radius: var(--radius-full);
      padding: 0 14px 0 18px;
      border: 2px solid transparent;
      transition: var(--transition);
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 4px rgba(224,122,95,0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 10px 0;
      width: 100%;
      font-size: 14px;
      outline: none;
    }
    .search-wrap button {
      background: none;
      border: none;
      color: var(--muted);
      padding: 8px 0 8px 8px;
      cursor: pointer;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 20px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--accent-soft);
      color: var(--primary);
      cursor: pointer;
    }

    #mobileMenu {
      display: none;
      background: #fff;
      padding: 12px 0 20px;
      border-top: 1px solid rgba(0,0,0,0.03);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
      text-decoration: none;
    }
    #mobileMenu ul li a:hover {
      background: var(--accent-soft);
    }

    /* ---- hero ---- */
    .hero {
      background: linear-gradient(145deg, #0b3b3c 0%, #1a5d5e 100%);
      border-radius: var(--radius);
      margin: 16px 20px 0;
      padding: 56px 48px;
      color: #fff;
      display: flex;
      align-items: center;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -10%;
      top: -20%;
      width: 400px;
      height: 400px;
      background: rgba(224,122,95,0.15);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 600px;
    }
    .hero-badge {
      display: inline-block;
      background: rgba(224,122,95,0.2);
      padding: 4px 18px;
      border-radius: var(--radius-full);
      font-size: 13px;
      font-weight: 600;
      color: var(--accent);
      letter-spacing: 0.3px;
      margin-bottom: 12px;
    }
    .hero h1 {
      font-size: 40px;
      font-weight: 700;
      line-height: 1.1;
      margin-bottom: 12px;
    }
    .hero p {
      opacity: 0.85;
      font-size: 16px;
      max-width: 420px;
      margin-bottom: 24px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: var(--radius-full);
      font-weight: 600;
      font-size: 15px;
      border: 2px solid transparent;
      transition: var(--transition);
      cursor: pointer;
      text-decoration: none;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: #c95f44;
      border-color: #c95f44;
      transform: translateY(-2px);
      box-shadow: 0 8px 24px rgba(224,122,95,0.3);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      color: #fff;
      border-color: rgba(255,255,255,0.2);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.18);
      border-color: rgba(255,255,255,0.3);
      transform: translateY(-2px);
    }

    /* ---- section ---- */
    .section {
      padding: 48px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-size: 26px;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header p {
      color: var(--muted);
      font-size: 15px;
      margin-top: 2px;
    }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
      font-size: 14px;
      text-decoration: none;
    }
    .view-all:hover {
      gap: 12px;
      color: #c95f44;
    }

    /* ---- categories ---- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      padding: 20px 12px;
      border-radius: var(--radius);
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow-md);
      border-color: var(--accent-soft);
    }
    .cat-card .icon {
      width: 52px;
      height: 52px;
      border-radius: 50%;
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 22px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon {
      background: var(--accent);
      color: #fff;
    }
    .cat-card h4 {
      font-size: 14px;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--muted-light);
    }

    /* ---- products ---- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-lg);
      border-color: var(--accent-soft);
    }
    .product-card .img-wrap {
      position: relative;
      background: #f2f3f5;
      aspect-ratio: 1/1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.04);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 4px 12px;
      border-radius: var(--radius-full);
      font-size: 11px;
      font-weight: 700;
    }
    .product-card .badge.sale {
      background: #f5b342;
      color: #1a1a2e;
    }
    .product-card .wishlist-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: 50%;
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(4px);
      border: none;
      display: grid;
      place-items: center;
      color: var(--muted);
      font-size: 15px;
      transition: var(--transition);
      cursor: pointer;
    }
    .product-card .wishlist-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.08);
    }
    .product-card .body {
      padding: 14px 16px 8px;
      flex: 1;
    }
    .product-card .body .category {
      font-size: 12px;
      color: var(--muted-light);
      text-transform: uppercase;
      font-weight: 600;
      letter-spacing: 0.3px;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      margin: 4px 0 2px;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #f5b342;
      margin-top: 4px;
    }
    .product-card .body .rating span {
      color: var(--muted);
    }
    .product-card .footer {
      padding: 0 16px 16px;
      display: flex;
      gap: 8px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px 0;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      border: none;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      cursor: pointer;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
    }
    .product-card .footer .add-btn.added {
      background: #2a9d8f;
    }

    /* ---- deal ---- */
    .deal-wrap {
      display: flex;
      background: var(--surface);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
    }
    .deal-wrap .deal-img {
      flex: 0 0 46%;
      background: #e9ecf0;
      min-height: 260px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      padding: 36px 40px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      flex: 1;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: #f5b342;
      color: #1a1a2e;
      padding: 4px 14px;
      border-radius: var(--radius-full);
      font-size: 12px;
      font-weight: 700;
      align-self: flex-start;
      margin-bottom: 10px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 26px;
      font-weight: 700;
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin: 4px 0 12px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 30px;
      font-weight: 800;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 18px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--muted);
      margin: 2px 0 12px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
    }
    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 6px 0 16px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 8px 12px;
      border-radius: var(--radius-sm);
      min-width: 60px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 24px;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.7;
      text-transform: uppercase;
    }

    /* ---- testimonials ---- */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 4px 0 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-soft);
      border-radius: 999px;
    }
    .testimonial-card {
      flex: 0 0 300px;
      background: var(--surface);
      border-radius: var(--radius);
      padding: 20px 22px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-md);
    }
    .testimonial-card .stars {
      color: #f5b342;
      letter-spacing: 2px;
      margin-bottom: 8px;
    }
    .testimonial-card blockquote {
      font-style: italic;
      font-size: 14px;
      line-height: 1.6;
      color: #1f2937;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 14px;
    }
    .testimonial-card .author img {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      object-fit: cover;
      background: #ddd;
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 14px;
    }
    .testimonial-card .author .role {
      font-size: 12px;
      color: var(--muted);
    }

    /* ---- newsletter ---- */
    .newsletter-wrap {
      background: linear-gradient(145deg, #0b3b3c, #1a5d5e);
      border-radius: var(--radius);
      padding: 40px 48px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }
    .newsletter-wrap h3 {
      font-size: 24px;
      font-weight: 700;
    }
    .newsletter-wrap p {
      opacity: 0.8;
      font-size: 15px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 460px;
    }
    .newsletter-wrap input {
      flex: 1;
      padding: 14px 20px;
      border-radius: var(--radius-full);
      border: 0;
      background: rgba(255,255,255,0.12);
      color: #fff;
      font-size: 15px;
      outline: 2px solid transparent;
      transition: var(--transition);
      min-width: 180px;
    }
    .newsletter-wrap input::placeholder {
      color: rgba(255,255,255,0.5);
    }
    .newsletter-wrap input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.18);
    }
    .newsletter-wrap .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .newsletter-wrap .btn:hover {
      background: #c95f44;
      border-color: #c95f44;
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 8px;
      font-size: 14px;
    }

    /* ---- footer ---- */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.04);
      margin-top: 8px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 24px;
    }
    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 6px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 260px;
    }
    .footer-grid .socials {
      display: flex;
      gap: 10px;
      margin-top: 12px;
    }
    .footer-grid .socials a {
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: #f1f3f4;
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      text-decoration: none;
    }
    .footer-grid .socials a:hover {
      background: var(--accent);
      color: #fff;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 10px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 14px;
      text-decoration: none;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 16px;
      border-top: 1px solid rgba(0,0,0,0.04);
      color: var(--muted-light);
      font-size: 13px;
    }

    /* ---- responsive ---- */
    @media (max-width: 1024px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .deal-wrap .deal-img { flex: 0 0 40%; }
    }
    @media (max-width: 820px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .hero { padding: 40px 28px; margin: 12px 12px 0; }
      .hero h1 { font-size: 32px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .newsletter-wrap { padding: 28px 24px; flex-direction: column; text-align: center; }
    }
    @media (max-width: 640px) {
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .hero h1 { font-size: 26px; }
      .search-wrap { min-width: 120px; padding: 0 10px 0 14px; }
      .search-wrap input { font-size: 13px; padding: 8px 0; }
      .header-inner { flex-wrap: nowrap; }
      .deal-wrap .deal-content { padding: 24px 20px; }
      .timer-box { min-width: 48px; padding: 6px 8px; }
      .timer-box .num { font-size: 18px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i> <span>Nexus<span class="accent">Shop</span></span></a>
    </div>

    <ul class="nav-links">
      <li><a href="#" class="active">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#products">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
      <li><a href="#testimonials">Reviews</a></li>
    </ul>

    <div style="display:flex;align-items:center;gap:8px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-badge">
          <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="hero">
    <div class="hero-content">
      <span class="hero-badge"><i class="fas fa-sparkles"></i> New collection 2026</span>
      <h1>Modern essentials,<br> effortless style</h1>
      <p>Curated fashion, tech & accessories — with free shipping on your first order.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
      </div>
    </div>
  </section>

  <!-- categories -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Shop by category</h2><p>Find what you love</p></div>
        <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- products -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>Trending now</h2><p>Popular picks from our community</p></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- deal -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header">
        <div><h2>⚡ Flash deal</h2><p>Limited stock — grab it fast</p></div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header">
        <div><h2>Customer love</h2><p>Real reviews from real people</p></div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div>
          <h3>Stay in the loop</h3>
          <p>Exclusive offers, early access & new arrivals</p>
        </div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i> <span>Nexus<span class="accent">Shop</span></span></div>
        <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // data
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'Smartphones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'Laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'Footwear' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' },
    { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' }
  ];

  const TESTIMONIALS = [
    { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
    { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
    { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
    { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
  ];

  let cartCount = 0;

  // DOM refs
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const searchBtn = document.getElementById('searchBtn');
  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  const testimonialsList = document.getElementById('testimonialsList');
  const newsletterForm = document.getElementById('newsletterForm');
  const newsletterEmail = document.getElementById('newsletterEmail');
  const newsletterMsg = document.getElementById('newsletterMsg');

  function escapeHtml(text) {
    return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'})[s]);
  }

  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const el = document.createElement('div');
      el.className = 'cat-card';
      el.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="count">${c.count} items</div>`;
      el.addEventListener('click', () => {
        searchInput.value = c.name;
        filterProducts(c.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesGrid.appendChild(el);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    if (!list.length) {
      productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:32px;color:var(--muted);">No products found.</p>`;
      return;
    }
    list.forEach(p => {
      const el = document.createElement('article');
      el.className = 'product-card';
      const badgeClass = p.badge === 'Sale' ? 'sale' : '';
      const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
      const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      el.innerHTML = `
        <div class="img-wrap">
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
          ${badgeHtml}
          <button class="wishlist-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        </div>
        <div class="body">
          <div class="category">${p.category}</div>
          <h5>${escapeHtml(p.title)}</h5>
          <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span> ${oldPriceHtml}</div>
          <div class="rating">${stars} <span>(${p.reviews})</span></div>
        </div>
        <div class="footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
        </div>
      `;
      productsGrid.appendChild(el);
    });
    productsGrid.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', function(e) {
        e.stopPropagation();
        addToCart(Number(this.dataset.id), this);
      });
    });
  }

  function renderTestimonials() {
    testimonialsList.innerHTML = '';
    TESTIMONIALS.forEach(t => {
      const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
      const el = document.createElement('div');
      el.className = 'testimonial-card';
      el.innerHTML = `
        <div class="stars">${stars}</div>
        <blockquote>“${escapeHtml(t.text)}”</blockquote>
        <div class="author">
          <img src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
          <div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div>
        </div>
      `;
      testimonialsList.appendChild(el);
    });
  }

  function updateCartCount() {
    cartCountEl.textContent = cartCount;
    cartCountEl.style.transform = 'scale(1.3)';
    setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
  }

  function addToCart(id, btnEl) {
    cartCount++;
    updateCartCount();
    if (btnEl) {
      const orig = btnEl.innerHTML;
      btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
      btnEl.classList.add('added');
      setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1500);
    }
    document.getElementById('cartBtn').style.color = 'var(--accent)';
    setTimeout(() => document.getElementById('cartBtn').style.color = '', 400);
  }

  function filterProducts(query) {
    const q = String(query || '').trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // deal timer
  (function() {
    const now = new Date();
    const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) {
        document.getElementById('dealDays').textContent = '0';
        document.getElementById('dealHours').textContent = '00';
        document.getElementById('dealMinutes').textContent = '00';
        document.getElementById('dealSeconds').textContent = '00';
        return;
      }
      document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
      document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
    }
    tick();
    setInterval(tick, 1000);
  })();

  // events
  searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

  mobileToggle.addEventListener('click', () => {
    const isOpen = mobileMenu.style.display === 'block';
    mobileMenu.style.display = isOpen ? 'none' : 'block';
    mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
  });
  mobileMenu.querySelectorAll('a').forEach(link => link.addEventListener('click', () => {
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  }));

  document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' }));
  document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' }));

  document.getElementById('buyDeal').addEventListener('click', function() {
    cartCount++;
    updateCartCount();
    const orig = this.innerHTML;
    this.innerHTML = '<i class="fas fa-check"></i> Added!';
    this.style.background = '#2a9d8f';
    setTimeout(() => { this.innerHTML = orig; this.style.background = ''; }, 1600);
  });

  document.getElementById('cartBtn').addEventListener('click', () => alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`));

  newsletterForm.addEventListener('submit', (e) => {
    e.preventDefault();
    const email = newsletterEmail.value.trim();
    if (!email || !email.includes('@')) {
      newsletterMsg.textContent = 'Please enter a valid email address.';
      newsletterMsg.style.color = '#ffb3b3';
      newsletterMsg.style.display = 'block';
      return;
    }
    newsletterMsg.textContent = '🎉 Thanks for subscribing!';
    newsletterMsg.style.color = '#a8e6cf';
    newsletterMsg.style.display = 'block';
    newsletterEmail.value = '';
    setTimeout(() => newsletterMsg.style.display = 'none', 3500);
  });

  document.getElementById('year').textContent = new Date().getFullYear();

  // init
  renderCategories();
  renderProducts(PRODUCTS);
  renderTestimonials();
  updateCartCount();

  window.addEventListener('resize', () => {
    if (window.innerWidth > 820) {
      mobileMenu.style.display = 'none';
      mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
    }
  });

  console.log('✨ NexusShop — friendly e‑commerce ready.');
</script>
</body>
</html>
