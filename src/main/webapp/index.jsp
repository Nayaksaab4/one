 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes">
  <title>NexusShop · playful UI</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700&family=Fredoka+One&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- reset & base (playful, colorful) ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Quicksand', system-ui, sans-serif;
      background: #faf0f5;
      color: #1e1a2b;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    img { max-width: 100%; display: block; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; }
    ul { list-style: none; }

    .container { max-width: 1280px; margin: 0 auto; padding: 0 24px; }

    /* ----- header (bubbly, playful) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 248, 250, 0.88);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 4px solid #ffd6e0;
      box-shadow: 0 8px 30px rgba(255, 107, 157, 0.08);
    }
    .header-grid {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 10px 0;
      gap: 12px;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Fredoka One', cursive;
      font-size: 2rem;
      letter-spacing: 0.02em;
      display: flex;
      align-items: center;
      gap: 8px;
      color: #ff6b9d;
      text-shadow: 2px 2px 0 #ffe2ec;
    }
    .brand i { color: #ffb347; font-size: 2rem; text-shadow: 2px 2px 0 #ffe0b5; }

    .nav-links {
      display: flex;
      gap: 6px;
      align-items: center;
      flex-wrap: wrap;
    }
    .nav-links a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.95rem;
      color: #2d1b3d;
      transition: 0.2s;
      background: rgba(255, 255, 255, 0.3);
      border: 2px solid transparent;
    }
    .nav-links a i { margin-right: 6px; }
    .nav-links a:hover {
      background: #ffd6e0;
      border-color: #ff6b9d;
      transform: scale(1.04) rotate(-1deg);
      color: #b3416b;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: #ffffff;
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      border: 3px solid #ffb3c6;
      transition: 0.2s;
      box-shadow: 0 4px 12px rgba(255, 107, 157, 0.08);
    }
    .search-wrap:focus-within {
      border-color: #ff6b9d;
      box-shadow: 0 0 0 8px rgba(255, 107, 157, 0.12);
      background: #ffffff;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.95rem;
      width: 150px;
      outline: none;
      color: #1e1a2b;
      font-weight: 600;
    }
    .search-wrap button {
      background: linear-gradient(145deg, #ff6b9d, #ffb347);
      color: white;
      padding: 10px 20px;
      border-radius: 60px;
      font-weight: 700;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
      box-shadow: 0 4px 14px rgba(255, 107, 157, 0.3);
      border: 2px solid white;
    }
    .search-wrap button:hover { transform: scale(1.05) rotate(1deg); box-shadow: 0 6px 20px rgba(255, 107, 157, 0.4); }

    .cart-btn {
      position: relative;
      font-size: 1.5rem;
      padding: 10px 16px;
      border-radius: 60px;
      background: #ffffff;
      border: 3px solid #ffb3c6;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
      color: #2d1b3d;
      box-shadow: 0 4px 12px rgba(255, 107, 157, 0.06);
    }
    .cart-btn:hover { background: #ffd6e0; border-color: #ff6b9d; transform: scale(1.04); }
    .cart-badge {
      position: absolute;
      top: -10px;
      right: -10px;
      background: #ff6b9d;
      color: white;
      font-size: 0.7rem;
      font-weight: 800;
      width: 26px;
      height: 26px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 3px solid white;
      box-shadow: 0 2px 10px rgba(255, 107, 157, 0.3);
    }
    .mobile-toggle {
      display: none;
      font-size: 1.8rem;
      padding: 0 6px;
      color: #ff6b9d;
    }

    /* ----- hero (fun, gradient with illustration) ----- */
    .hero {
      background: linear-gradient(145deg, #ffd6e0, #ffe2b5, #ffd6f0, #b5d9ff);
      background-size: 300% 300%;
      animation: wiggleGrad 10s ease infinite;
      border-radius: 60px 60px 60px 12px;
      margin: 24px 0 20px;
      padding: 44px 36px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      box-shadow: 0 16px 48px rgba(255, 107, 157, 0.08);
      border: 4px solid rgba(255, 255, 255, 0.5);
    }
    @keyframes wiggleGrad {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }
    .hero-content { flex: 1 1 260px; }
    .hero-content h1 {
      font-family: 'Fredoka One', cursive;
      font-size: 3rem;
      line-height: 1.1;
      letter-spacing: 0.02em;
      color: #1e1a2b;
      text-shadow: 4px 4px 0 rgba(255, 255, 255, 0.6);
    }
    .hero-content h1 span { color: #ff6b9d; }
    .hero-content p {
      font-size: 1.1rem;
      color: #2d1b3d;
      max-width: 440px;
      margin-bottom: 24px;
      font-weight: 600;
      background: rgba(255,255,255,0.4);
      padding: 8px 16px;
      border-radius: 40px;
      display: inline-block;
      backdrop-filter: blur(4px);
    }
    .hero-actions { display: flex; gap: 14px; flex-wrap: wrap; }
    .btn {
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 700;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      border: 3px solid transparent;
    }
    .btn-primary {
      background: #1e1a2b;
      color: white;
      box-shadow: 0 6px 20px rgba(30, 26, 43, 0.15);
      border-color: white;
    }
    .btn-primary:hover { background: #ff6b9d; transform: scale(1.04) rotate(-2deg); border-color: #ff6b9d; }
    .btn-outline {
      background: rgba(255,255,255,0.5);
      backdrop-filter: blur(8px);
      border: 3px solid #1e1a2b;
      color: #1e1a2b;
    }
    .btn-outline:hover { background: #1e1a2b; color: white; transform: scale(1.04) rotate(2deg); }
    .hero-image {
      flex: 0 0 160px;
      text-align: center;
      font-size: 7rem;
      color: #ff6b9d;
      filter: drop-shadow(0 8px 30px rgba(255, 107, 157, 0.2));
      transform: rotate(-6deg);
    }

    /* ----- section headings (fun) ----- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 44px 0 18px;
      flex-wrap: wrap;
      gap: 8px;
    }
    .section-head h2 {
      font-family: 'Fredoka One', cursive;
      font-size: 2.2rem;
      color: #1e1a2b;
      background: linear-gradient(145deg, #ff6b9d, #ffb347);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      text-shadow: 2px 2px 0 #ffe2ec;
    }
    .section-head a {
      background: #ffd6e0;
      padding: 6px 20px;
      border-radius: 40px;
      font-weight: 700;
      color: #b3416b;
      transition: 0.15s;
      border: 2px solid transparent;
    }
    .section-head a:hover { background: #ff6b9d; color: white; border-color: white; transform: scale(1.04); }

    /* ----- categories (bubble tiles) ----- */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: white;
      padding: 24px 12px;
      border-radius: 60px 60px 60px 12px;
      text-align: center;
      transition: 0.25s;
      border: 4px solid #ffb3c6;
      box-shadow: 0 8px 24px rgba(255, 107, 157, 0.06);
      cursor: default;
      background: linear-gradient(145deg, #ffffff, #fff5f8);
    }
    .cat-card:nth-child(1) { border-color: #ffb3b3; }
    .cat-card:nth-child(2) { border-color: #ffd9b3; }
    .cat-card:nth-child(3) { border-color: #ffe6b3; }
    .cat-card:nth-child(4) { border-color: #b3d9ff; }
    .cat-card:nth-child(5) { border-color: #d4b3ff; }
    .cat-card:nth-child(6) { border-color: #ffb3e6; }
    .cat-card:hover {
      transform: translateY(-8px) scale(1.03) rotate(-2deg);
      box-shadow: 0 20px 48px rgba(255, 107, 157, 0.12);
    }
    .cat-card i { font-size: 2.6rem; margin-bottom: 4px; }
    .cat-card:nth-child(1) i { color: #ff6b6b; }
    .cat-card:nth-child(2) i { color: #ff9f43; }
    .cat-card:nth-child(3) i { color: #feca57; }
    .cat-card:nth-child(4) i { color: #4ea8de; }
    .cat-card:nth-child(5) i { color: #9b5de5; }
    .cat-card:nth-child(6) i { color: #ff6b9d; }
    .cat-card h4 { font-weight: 700; font-size: 1.1rem; color: #1e1a2b; }
    .cat-card span { font-size: 0.75rem; color: #a58ab5; font-weight: 600; }

    /* ----- product grid (playful cards) ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 26px;
    }
    .product-card {
      background: white;
      border-radius: 40px 40px 40px 12px;
      overflow: hidden;
      transition: 0.25s ease;
      border: 4px solid #ffd6e0;
      box-shadow: 0 6px 20px rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-10px) rotate(1deg);
      box-shadow: 0 24px 56px rgba(255, 107, 157, 0.08);
      border-color: #ff6b9d;
    }
    .product-card img {
      height: 190px;
      object-fit: cover;
      width: 100%;
      background: #f5edff;
      border-bottom: 4px solid #ffd6e0;
    }
    .product-body {
      padding: 14px 16px 8px;
      flex: 1;
      display: flex;
      flex-direction: column;
    }
    .product-body h5 {
      font-weight: 700;
      font-size: 1.05rem;
      color: #1e1a2b;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      color: #ff6b9d;
      background: #ffe2ec;
      padding: 2px 14px;
      border-radius: 40px;
      align-self: flex-start;
      margin: 4px 0 6px;
      border: 2px solid #ffb3c6;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 8px 0 4px;
    }
    .price { font-weight: 800; font-size: 1.3rem; color: #1e1a2b; }
    .old-price { text-decoration: line-through; color: #a58ab5; font-weight: 600; }
    .rating { color: #f5b342; font-size: 0.9rem; letter-spacing: 2px; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: linear-gradient(145deg, #ff6b9d, #ffb347);
      color: white;
      padding: 10px 0;
      border-radius: 60px;
      font-weight: 800;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      border: 3px solid white;
      box-shadow: 0 4px 14px rgba(255, 107, 157, 0.2);
    }
    .add-btn:hover { transform: scale(1.04) rotate(-2deg); box-shadow: 0 8px 24px rgba(255, 107, 157, 0.3); }
    .wish-btn {
      background: #ffe2ec;
      border-radius: 60px;
      padding: 0 18px;
      transition: 0.15s;
      display: flex;
      align-items: center;
      font-size: 1.3rem;
      color: #ff6b9d;
      border: 3px solid #ffb3c6;
    }
    .wish-btn:hover { background: #ff6b9d; color: white; border-color: white; transform: scale(1.08); }

    /* ----- flash sale (bold, bubbly) ----- */
    .deal-card {
      background: linear-gradient(145deg, #ffffff, #fff5f8);
      border-radius: 60px 60px 60px 12px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 24px;
      padding: 28px 32px;
      border: 4px solid #ffb3c6;
      box-shadow: 0 12px 40px rgba(255, 107, 157, 0.06);
      margin: 16px 0 8px;
    }
    .deal-card img {
      width: 170px;
      height: 170px;
      object-fit: cover;
      border-radius: 40px 40px 40px 8px;
      background: #ffd6e0;
      border: 4px solid #ff6b9d;
      transform: rotate(-4deg);
    }
    .deal-content { flex: 1; }
    .deal-content h3 {
      font-family: 'Fredoka One', cursive;
      font-size: 2.2rem;
      color: #1e1a2b;
    }
    .deal-content h3 i { color: #ff6b9d; }
    .timer {
      display: flex;
      gap: 14px;
      margin: 14px 0;
    }
    .time-box {
      background: #1e1a2b;
      color: white;
      padding: 8px 16px;
      border-radius: 30px;
      min-width: 64px;
      text-align: center;
      border: 3px solid #ffb347;
      box-shadow: 0 4px 16px rgba(30, 26, 43, 0.15);
    }
    .time-box div:first-child { font-weight: 800; font-size: 1.6rem; color: #ffb347; }
    .time-box span { font-size: 0.7rem; opacity: 0.8; font-weight: 600; }
    .deal-price { font-size: 2rem; font-weight: 800; color: #ff6b9d; }
    .deal-discount { background: #ff6b9d; color: white; padding: 4px 18px; border-radius: 40px; font-weight: 700; border: 3px solid white; }

    /* ----- testimonials (colorful) ----- */
    .testimonial-scroll {
      display: flex;
      gap: 22px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      background: white;
      border-radius: 40px 40px 40px 8px;
      padding: 20px 24px;
      min-width: 270px;
      flex: 0 0 auto;
      scroll-snap-align: start;
      border: 4px solid #ffd6e0;
      box-shadow: 0 8px 28px rgba(255, 107, 157, 0.04);
    }
    .testimonial-card .rating { font-size: 1.2rem; margin-bottom: 4px; }
    .testimonial-card p { font-weight: 600; color: #2d1b3d; }
    .testimonial-card .avatar {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 12px;
    }
    .testimonial-card .avatar img {
      width: 50px;
      height: 50px;
      border-radius: 60px;
      object-fit: cover;
      border: 4px solid #ffb3c6;
    }

    /* ----- newsletter (fun gradient) ----- */
    .newsletter-box {
      background: linear-gradient(145deg, #ffd6e0, #ffe2b5, #b5d9ff);
      background-size: 200% 200%;
      animation: wiggleGrad 8s ease infinite;
      color: #1e1a2b;
      border-radius: 60px 60px 60px 12px;
      padding: 40px 28px;
      text-align: center;
      margin: 20px 0 10px;
      border: 4px solid rgba(255,255,255,0.6);
      box-shadow: 0 8px 32px rgba(255, 107, 157, 0.06);
    }
    .newsletter-box h3 {
      font-family: 'Fredoka One', cursive;
      font-size: 2.2rem;
    }
    .newsletter-box p { font-weight: 600; opacity: 0.8; margin-bottom: 14px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 24px;
      border-radius: 60px;
      border: 4px solid #ffffff;
      flex: 1 1 240px;
      font-size: 1rem;
      background: rgba(255,255,255,0.7);
      backdrop-filter: blur(4px);
      font-weight: 600;
    }
    .newsletter-form input:focus { outline: none; border-color: #ff6b9d; background: white; }
    .newsletter-form button {
      background: #1e1a2b;
      color: white;
      padding: 14px 38px;
      border-radius: 60px;
      font-weight: 800;
      transition: 0.15s;
      border: 4px solid white;
      box-shadow: 0 4px 16px rgba(30, 26, 43, 0.1);
    }
    .newsletter-form button:hover { background: #ff6b9d; transform: scale(1.04) rotate(-2deg); }

    /* ----- footer (playful) ----- */
    footer {
      padding: 36px 0 20px;
      border-top: 6px solid #ffd6e0;
      margin-top: 24px;
      background: #fff5f8;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 28px;
    }
    .footer-brand {
      font-family: 'Fredoka One', cursive;
      font-size: 1.8rem;
      color: #ff6b9d;
      text-shadow: 2px 2px 0 #ffe2ec;
    }
    .footer-links { display: flex; gap: 40px; flex-wrap: wrap; }
    .footer-links div { line-height: 2.2; }
    .footer-links div strong { display: block; font-weight: 800; color: #1e1a2b; }
    .footer-links a { color: #6b5a7a; font-weight: 600; }
    .footer-links a:hover { color: #ff6b9d; }

    /* responsive */
    @media (max-width: 800px) {
      .nav-links { display: none; }
      .mobile-toggle { display: block; }
      .search-wrap input { width: 100px; }
      .hero { flex-direction: column; text-align: center; padding: 32px 20px; border-radius: 40px; }
      .hero-content p { max-width: 100%; }
      .deal-card { flex-direction: column; text-align: center; }
      .deal-card img { width: 100%; height: auto; max-height: 200px; }
      .product-grid { grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); }
    }
    @media (max-width: 480px) {
      .header-grid { flex-wrap: wrap; }
      .search-wrap input { width: 70px; }
      .product-grid { grid-template-columns: 1fr 1fr; gap: 14px; }
      .hero-content h1 { font-size: 2.2rem; }
    }
    /* mobile nav */
    .mobile-nav {
      display: none;
      background: #fff5f8;
      padding: 16px 24px 24px;
      border-top: 4px solid #ffd6e0;
    }
    .mobile-nav.open { display: block; }
    .mobile-nav a {
      display: block;
      padding: 12px 0;
      border-bottom: 2px solid #ffe2ec;
      font-weight: 700;
      color: #2d1b3d;
    }
    .mobile-nav a i { margin-right: 12px; color: #ff6b9d; }
  </style>
</head>
<body>

<header>
  <div class="container header-grid">
    <div style="display:flex;align-items:center;gap:8px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <div class="brand"><i class="fas fa-crown"></i> NexusShop</div>
    </div>

    <nav class="nav-links">
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#products"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
    </nav>

    <div class="header-actions">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search..." aria-label="search">
        <button id="searchBtn"><i class="fas fa-search"></i> Find</button>
      </div>
      <button class="cart-btn" id="cartBtn" aria-label="cart">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </div>
  <!-- mobile nav -->
  <div class="mobile-nav" id="mobileMenu">
    <a href="#"><i class="fas fa-home"></i> Home</a>
    <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
    <a href="#products"><i class="fas fa-fire"></i> Trending</a>
    <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
    <a href="#"><i class="fas fa-user"></i> Account</a>
  </div>
</header>

<main class="container">
  <!-- Hero (playful) -->
  <section class="hero">
    <div class="hero-content">
      <h1>Shop <span>happy</span> <br>vibes only</h1>
      <p>✨ Fresh picks in tech, style & accessories — curated with joy.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore</button>
        <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-gift"></i> Deals</button>
      </div>
    </div>
    <div class="hero-image">
      <i class="fas fa-smile-wink"></i>
    </div>
  </section>

  <!-- Categories -->
  <section id="categories">
    <div class="section-head">
      <h2>Shop by category</h2>
      <a href="#">See all <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="cat-grid" id="categoriesGrid"></div>
  </section>

  <!-- Products -->
  <section id="products">
    <div class="section-head">
      <h2>Trending now</h2>
      <a href="#">View all</a>
    </div>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- Deal / flash sale -->
  <section id="deals">
    <div class="section-head">
      <h2>Flash sale</h2>
      <span style="font-weight:800;color:#ff6b9d;background:#ffe2ec;padding:4px 20px;border-radius:40px;border:3px solid white;"><i class="fas fa-clock"></i> Limited</span>
    </div>
    <div class="deal-card" id="dealCard">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80" alt="MacBook Air">
      <div class="deal-content">
        <h3><i class="fas fa-star"></i> MacBook Air M2</h3>
        <p style="color:#6b5a7a;font-weight:600;">Thin, light, and incredibly fast.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><span>days</span></div>
          <div class="time-box"><div id="dealHours">00</div><span>hrs</span></div>
          <div class="time-box"><div id="dealMinutes">00</div><span>min</span></div>
          <div class="time-box"><div id="dealSeconds">00</div><span>sec</span></div>
        </div>
        <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
          <span class="deal-price">$999</span>
          <span style="font-size:1.1rem;text-decoration:line-through;color:#a58ab5;font-weight:600;">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:12px;background:#ff6b9d;color:white;border-color:white;"><i class="fas fa-bolt"></i> Grab deal</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section>
    <div class="section-head">
      <h2>What customers say</h2>
    </div>
    <div class="testimonial-scroll" id="testimonialsContainer"></div>
  </section>

  <!-- Newsletter -->
  <section>
    <div class="newsletter-box">
      <h3><i class="fas fa-envelope-open-text"></i> Stay in the loop</h3>
      <p>Get early access to sales and new arrivals.</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Your email address" required>
        <button type="submit">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:10px;font-weight:700;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div class="footer-brand"><i class="fas fa-crown"></i> NexusShop</div>
      <p style="color:#6b5a7a;max-width:260px;margin-top:6px;font-weight:600;">Modern e‑commerce — playful & colorful.</p>
      <div style="display:flex;gap:14px;margin-top:12px;">
        <a href="#" style="color:#ff6b9d;font-size:1.4rem;"><i class="fab fa-twitter"></i></a>
        <a href="#" style="color:#ffb347;font-size:1.4rem;"><i class="fab fa-instagram"></i></a>
        <a href="#" style="color:#4ea8de;font-size:1.4rem;"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Shop</strong> <a href="#">New arrivals</a> <a href="#">Best sellers</a> <a href="#">Gifts</a></div>
      <div><strong>Support</strong> <a href="#">Help center</a> <a href="#">Returns</a> <a href="#">Contact</a></div>
      <div><strong>Company</strong> <a href="#">About</a> <a href="#">Careers</a> <a href="#">Press</a></div>
    </div>
  </div>
  <div style="text-align:center;color:#a58ab5;font-weight:600;font-size:0.8rem;padding-top:24px;">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Phones', icon: 'fa-mobile-screen' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS =
