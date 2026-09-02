 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes">
  <title>NexusShop · vibrant e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Syne:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- reset & base (colorful) ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f9f5ff;
      color: #1e1a2b;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    img { max-width: 100%; display: block; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; }
    ul { list-style: none; }

    .container { max-width: 1280px; margin: 0 auto; padding: 0 24px; }

    /* ----- header (gradient, playful) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 248, 245, 0.85);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-bottom: 2px solid #ffe6d5;
      box-shadow: 0 4px 20px rgba(255, 107, 107, 0.08);
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
      font-family: 'Syne', sans-serif;
      font-weight: 800;
      font-size: 1.8rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 8px;
      background: linear-gradient(135deg, #ff6b6b, #ffb347);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i { -webkit-text-fill-color: #ff6b6b; font-size: 1.9rem; }

    .nav-links {
      display: flex;
      gap: 4px;
      align-items: center;
      flex-wrap: wrap;
    }
    .nav-links a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.95rem;
      color: #2d1b3d;
      transition: 0.2s;
      background: transparent;
    }
    .nav-links a i { margin-right: 6px; opacity: 0.8; }
    .nav-links a:hover {
      background: #ffe6d5;
      color: #d4524e;
      transform: scale(1.02);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: #fff3ed;
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      border: 2px solid #ffd5c2;
      transition: 0.2s;
    }
    .search-wrap:focus-within {
      border-color: #ff7a5c;
      box-shadow: 0 0 0 6px rgba(255, 107, 107, 0.15);
      background: #ffffff;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.95rem;
      width: 160px;
      outline: none;
      color: #1e1a2b;
    }
    .search-wrap button {
      background: linear-gradient(135deg, #ff7a5c, #ffb347);
      color: white;
      padding: 10px 18px;
      border-radius: 40px;
      font-weight: 600;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
      box-shadow: 0 4px 10px rgba(255, 107, 107, 0.25);
    }
    .search-wrap button:hover { transform: scale(1.03); box-shadow: 0 6px 14px rgba(255, 107, 107, 0.35); }

    .cart-btn {
      position: relative;
      font-size: 1.4rem;
      padding: 8px 14px;
      border-radius: 40px;
      background: #fff3ed;
      border: 2px solid #ffd5c2;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
      color: #2d1b3d;
    }
    .cart-btn:hover { background: #ffe6d5; border-color: #ff7a5c; }
    .cart-badge {
      position: absolute;
      top: -8px;
      right: -8px;
      background: #ff6b6b;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 24px;
      height: 24px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 2px 8px rgba(255, 107, 107, 0.4);
    }
    .mobile-toggle {
      display: none;
      font-size: 1.7rem;
      padding: 0 6px;
      color: #2d1b3d;
    }

    /* ----- hero (colorful gradient) ----- */
    .hero {
      background: linear-gradient(145deg, #ffdde1, #fad0c4, #fbc2eb, #a18cd1);
      background-size: 300% 300%;
      animation: gradientMove 12s ease infinite;
      border-radius: 40px;
      margin: 24px 0 20px;
      padding: 48px 40px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      box-shadow: 0 12px 40px rgba(161, 140, 209, 0.2);
    }
    @keyframes gradientMove {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }
    .hero-content { flex: 1 1 280px; }
    .hero-content h1 {
      font-family: 'Syne', sans-serif;
      font-size: 2.8rem;
      line-height: 1.2;
      letter-spacing: -0.02em;
      color: #1e1a2b;
      text-shadow: 0 2px 10px rgba(255,255,255,0.3);
    }
    .hero-content p {
      font-size: 1.1rem;
      color: #2d1b3d;
      max-width: 460px;
      margin-bottom: 22px;
      font-weight: 500;
    }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 700;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      border: none;
    }
    .btn-primary {
      background: #1e1a2b;
      color: white;
      box-shadow: 0 6px 16px rgba(30, 26, 43, 0.2);
    }
    .btn-primary:hover { background: #3a2d4a; transform: scale(1.03); }
    .btn-outline {
      background: rgba(255,255,255,0.3);
      backdrop-filter: blur(4px);
      border: 2px solid #1e1a2b;
      color: #1e1a2b;
    }
    .btn-outline:hover { background: #1e1a2b; color: white; }
    .hero-image {
      flex: 0 0 180px;
      text-align: center;
      font-size: 6rem;
      color: #ff6b6b;
      filter: drop-shadow(0 8px 20px rgba(255, 107, 107, 0.3));
    }

    /* ----- section headings (vibrant) ----- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 44px 0 18px;
      flex-wrap: wrap;
      gap: 8px;
    }
    .section-head h2 {
      font-family: 'Syne', sans-serif;
      font-size: 2rem;
      font-weight: 700;
      background: linear-gradient(135deg, #ff6b6b, #a18cd1);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .section-head a {
      color: #d4524e;
      font-weight: 600;
      background: #ffe6d5;
      padding: 6px 18px;
      border-radius: 40px;
      transition: 0.15s;
    }
    .section-head a:hover { background: #ffd5c2; color: #a8322e; }

    /* ----- categories (colorful tiles) ----- */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: white;
      padding: 24px 12px;
      border-radius: 28px;
      text-align: center;
      transition: 0.25s;
      border: 2px solid transparent;
      box-shadow: 0 6px 18px rgba(0,0,0,0.02);
      cursor: default;
      background: linear-gradient(145deg, #ffffff, #fcf6ff);
    }
    .cat-card:nth-child(1) { border-color: #ffb3b3; }
    .cat-card:nth-child(2) { border-color: #ffd9b3; }
    .cat-card:nth-child(3) { border-color: #ffe6b3; }
    .cat-card:nth-child(4) { border-color: #b3e0ff; }
    .cat-card:nth-child(5) { border-color: #d4b3ff; }
    .cat-card:nth-child(6) { border-color: #ffb3e6; }
    .cat-card:hover {
      transform: translateY(-6px) scale(1.02);
      box-shadow: 0 16px 36px rgba(161, 140, 209, 0.12);
    }
    .cat-card i { font-size: 2.4rem; margin-bottom: 6px; }
    .cat-card:nth-child(1) i { color: #ff6b6b; }
    .cat-card:nth-child(2) i { color: #ff9f43; }
    .cat-card:nth-child(3) i { color: #feca57; }
    .cat-card:nth-child(4) i { color: #4ea8de; }
    .cat-card:nth-child(5) i { color: #9b5de5; }
    .cat-card:nth-child(6) i { color: #ff6b9d; }
    .cat-card h4 { font-weight: 700; font-size: 1rem; color: #1e1a2b; }
    .cat-card span { font-size: 0.75rem; color: #6b5a7a; font-weight: 500; }

    /* ----- product grid (colorful cards) ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: 28px;
      overflow: hidden;
      transition: 0.25s ease;
      border: 2px solid #f0e7ff;
      box-shadow: 0 4px 16px rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 44px rgba(161, 140, 209, 0.12);
      border-color: #d4b3ff;
    }
    .product-card img {
      height: 190px;
      object-fit: cover;
      width: 100%;
      background: #f5edff;
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
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      color: #9b5de5;
      background: #f0e7ff;
      padding: 2px 12px;
      border-radius: 40px;
      align-self: flex-start;
      margin: 4px 0 6px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 8px 0 4px;
    }
    .price { font-weight: 700; font-size: 1.3rem; color: #1e1a2b; }
    .old-price { text-decoration: line-through; color: #a58ab5; font-size: 0.9rem; }
    .rating { color: #f5b342; font-size: 0.85rem; letter-spacing: 1px; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: linear-gradient(135deg, #a18cd1, #fbc2eb);
      color: #1e1a2b;
      padding: 10px 0;
      border-radius: 60px;
      font-weight: 700;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      border: none;
    }
    .add-btn:hover { transform: scale(1.03); box-shadow: 0 4px 14px rgba(161, 140, 209, 0.3); }
    .wish-btn {
      background: #f5edff;
      border-radius: 40px;
      padding: 0 16px;
      transition: 0.15s;
      display: flex;
      align-items: center;
      font-size: 1.2rem;
      color: #9b5de5;
      border: 2px solid transparent;
    }
    .wish-btn:hover { background: #ffdde1; color: #ff6b6b; border-color: #ffb3b3; }

    /* ----- flash sale (bold colors) ----- */
    .deal-card {
      background: linear-gradient(145deg, #ffffff, #fcf6ff);
      border-radius: 36px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 24px;
      padding: 24px 32px;
      border: 2px solid #ffd5c2;
      box-shadow: 0 12px 32px rgba(255, 107, 107, 0.06);
      margin: 16px 0 8px;
    }
    .deal-card img {
      width: 170px;
      height: 170px;
      object-fit: cover;
      border-radius: 28px;
      background: #ffdde1;
      border: 3px solid #ffb3b3;
    }
    .deal-content { flex: 1; }
    .deal-content h3 {
      font-family: 'Syne', sans-serif;
      font-size: 2rem;
      background: linear-gradient(135deg, #ff6b6b, #ffb347);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 14px 0;
    }
    .time-box {
      background: #1e1a2b;
      color: white;
      padding: 8px 14px;
      border-radius: 20px;
      min-width: 60px;
      text-align: center;
      box-shadow: 0 4px 12px rgba(30, 26, 43, 0.2);
    }
    .time-box div:first-child { font-weight: 800; font-size: 1.5rem; color: #ffb347; }
    .time-box span { font-size: 0.7rem; opacity: 0.8; }
    .deal-price { font-size: 2rem; font-weight: 800; color: #ff6b6b; }
    .deal-discount { background: #ff6b6b; color: white; padding: 4px 16px; border-radius: 40px; font-weight: 700; }

    /* ----- testimonials (colorful) ----- */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      background: white;
      border-radius: 28px;
      padding: 20px 22px;
      min-width: 270px;
      flex: 0 0 auto;
      scroll-snap-align: start;
      border: 2px solid #f0e7ff;
      box-shadow: 0 4px 16px rgba(161, 140, 209, 0.04);
    }
    .testimonial-card .rating { font-size: 1.1rem; margin-bottom: 4px; }
    .testimonial-card p { font-weight: 500; color: #2d1b3d; }
    .testimonial-card .avatar {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 12px;
    }
    .testimonial-card .avatar img {
      width: 48px;
      height: 48px;
      border-radius: 40px;
      object-fit: cover;
      border: 3px solid #fbc2eb;
    }

    /* ----- newsletter (gradient) ----- */
    .newsletter-box {
      background: linear-gradient(145deg, #a18cd1, #fbc2eb, #ffdde1);
      color: #1e1a2b;
      border-radius: 40px;
      padding: 40px 28px;
      text-align: center;
      margin: 20px 0 10px;
      box-shadow: 0 8px 32px rgba(161, 140, 209, 0.15);
    }
    .newsletter-box h3 {
      font-family: 'Syne', sans-serif;
      font-size: 2rem;
      font-weight: 700;
    }
    .newsletter-box p { opacity: 0.8; font-weight: 500; margin-bottom: 14px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 24px;
      border-radius: 60px;
      border: 2px solid #ffffff;
      flex: 1 1 240px;
      font-size: 1rem;
      background: rgba(255,255,255,0.7);
      backdrop-filter: blur(4px);
    }
    .newsletter-form input:focus { outline: none; border-color: #ff6b6b; background: white; }
    .newsletter-form button {
      background: #1e1a2b;
      color: white;
      padding: 14px 36px;
      border-radius: 60px;
      font-weight: 700;
      transition: 0.15s;
      border: none;
    }
    .newsletter-form button:hover { background: #3a2d4a; transform: scale(1.03); }

    /* ----- footer (colorful) ----- */
    footer {
      padding: 36px 0 20px;
      border-top: 3px solid #ffd5c2;
      margin-top: 24px;
      background: #fcf6ff;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 28px;
    }
    .footer-brand {
      font-family: 'Syne', sans-serif;
      font-weight: 800;
      font-size: 1.6rem;
      background: linear-gradient(135deg, #ff6b6b, #a18cd1);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .footer-links { display: flex; gap: 40px; flex-wrap: wrap; }
    .footer-links div { line-height: 2.2; }
    .footer-links div strong { display: block; font-weight: 700; color: #1e1a2b; }
    .footer-links a { color: #6b5a7a; font-weight: 500; }
    .footer-links a:hover { color: #ff6b6b; }

    /* responsive */
    @media (max-width: 800px) {
      .nav-links { display: none; }
      .mobile-toggle { display: block; }
      .search-wrap input { width: 110px; }
      .hero { flex-direction: column; text-align: center; padding: 32px 20px; }
      .hero-content p { max-width: 100%; }
      .deal-card { flex-direction: column; text-align: center; }
      .deal-card img { width: 100%; height: auto; max-height: 200px; }
      .product-grid { grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); }
    }
    @media (max-width: 480px) {
      .header-grid { flex-wrap: wrap; }
      .search-wrap input { width: 80px; }
      .product-grid { grid-template-columns: 1fr 1fr; gap: 14px; }
    }
    /* mobile nav */
    .mobile-nav {
      display: none;
      background: #fff8f5;
      padding: 16px 24px 24px;
      border-top: 2px solid #ffd5c2;
    }
    .mobile-nav.open { display: block; }
    .mobile-nav a {
      display: block;
      padding: 12px 0;
      border-bottom: 1px solid #f0e7ff;
      font-weight: 600;
      color: #2d1b3d;
    }
    .mobile-nav a i { margin-right: 10px; color: #ff6b6b; }
  </style>
</head>
<body>

<header>
  <div class="container header-grid">
    <div style="display:flex;align-items:center;gap:8px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <div class="brand"><i class="fas fa-store-alt"></i> NexusShop</div>
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
  <!-- Hero (colorful) -->
  <section class="hero">
    <div class="hero-content">
      <h1>Bright finds, <br>bold style</h1>
      <p>Discover vibrant tech, fashion & accessories — curated with love.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-image">
      <i class="fas fa-gem"></i>
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
      <span style="font-weight:700;color:#ff6b6b;background:#ffe6d5;padding:4px 18px;border-radius:40px;"><i class="fas fa-clock"></i> Limited</span>
    </div>
    <div class="deal-card" id="dealCard">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80" alt="MacBook Air">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p style="color:#6b5a7a;">Thin, light, and incredibly fast.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><span>days</span></div>
          <div class="time-box"><div id="dealHours">00</div><span>hrs</span></div>
          <div class="time-box"><div id="dealMinutes">00</div><span>min</span></div>
          <div class="time-box"><div id="dealSeconds">00</div><span>sec</span></div>
        </div>
        <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
          <span class="deal-price">$999</span>
          <span style="font-size:1.1rem;text-decoration:line-through;color:#a58ab5;">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:12px;background:#ff6b6b;color:white;"><i class="fas fa-bolt"></i> Grab deal</button>
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
      <h3>Stay in the loop</h3>
      <p>Get early access to sales and new arrivals.</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Your email address" required>
        <button type="submit">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:10px;font-weight:600;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div class="footer-brand"><i class="fas fa-store-alt" style="color:#ff6b6b; -webkit-text-fill-color:#ff6b6b;"></i> NexusShop</div>
      <p style="color:#6b5a7a;max-width:260px;margin-top:6px;">Modern e‑commerce demo — vibrant & playful.</p>
      <div style="display:flex;gap:14px;margin-top:12px;">
        <a href="#" style="color:#ff6b6b;"><i class="fab fa-twitter"></i></a>
        <a href="#" style="color:#a18cd1;"><i class="fab fa-instagram"></i></a>
        <a href="#" style="color:#ffb347;"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Shop</strong> <a href="#">New arrivals</a> <a href="#">Best sellers</a> <a href="#">Gifts</a></div>
      <div><strong>Support</strong> <a href="#">Help center</a> <a href="#">Returns</a> <a href="#">Contact</a></div>
      <div><strong>Company</strong> <a href="#">About</a> <a href="#">Careers</a> <a href="#">Press</a></div>
    </div>
  </div>
  <div style="text-align:center;color:#a58ab5;font-size:0.8rem;padding-top:24px;">© <span id="year"></span> NexusShop. All rights reserved.</div>
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

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
    { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
    { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
    { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580
