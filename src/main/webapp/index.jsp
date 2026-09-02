<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes">
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Syne:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ----- reset & base ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafcff;
      color: #0b1e33;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    img { max-width: 100%; display: block; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; }
    ul { list-style: none; }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- header (friendly & clean) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.88);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
      box-shadow: 0 2px 12px rgba(0,20,40,0.02);
    }
    .header-grid {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 12px;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Syne', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .brand i { color: #2b7aff; font-size: 1.7rem; }
    .brand span { color: #0b1e33; }
    .brand .light { font-weight: 400; color: #3c5a7d; }

    .nav-links {
      display: flex;
      gap: 6px;
      align-items: center;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: #1f3a57;
      transition: 0.15s;
    }
    .nav-links a i { margin-right: 6px; opacity: 0.7; }
    .nav-links a:hover {
      background: #eef3fc;
      color: #0057e0;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: #f2f6fd;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .search-wrap:focus-within {
      background: #ffffff;
      border-color: #2b7aff;
      box-shadow: 0 0 0 4px rgba(43,122,255,0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 0.95rem;
      width: 170px;
      outline: none;
    }
    .search-wrap button {
      background: #2b7aff;
      color: white;
      padding: 10px 16px;
      border-radius: 40px;
      font-weight: 500;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-wrap button:hover { background: #1b5fd9; }

    .cart-btn {
      position: relative;
      font-size: 1.3rem;
      padding: 8px 10px;
      border-radius: 40px;
      background: #f2f6fd;
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .cart-btn:hover { background: #e5edf9; }
    .cart-badge {
      position: absolute;
      top: -6px;
      right: -6px;
      background: #ff4d6d;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .mobile-toggle {
      display: none;
      font-size: 1.6rem;
      padding: 0 6px;
    }

    /* ----- hero (warm, inviting) ----- */
    .hero {
      background: linear-gradient(145deg, #e8f0fe 0%, #d6e4ff 100%);
      border-radius: 32px;
      margin: 24px 0 20px;
      padding: 48px 40px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }
    .hero-content { flex: 1 1 300px; }
    .hero-content h1 {
      font-family: 'Syne', sans-serif;
      font-size: 2.6rem;
      line-height: 1.2;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }
    .hero-content p {
      font-size: 1.05rem;
      color: #1f3a57;
      max-width: 480px;
      margin-bottom: 22px;
    }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      transition: 0.15s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn-primary {
      background: #0b1e33;
      color: white;
      box-shadow: 0 4px 10px rgba(11,30,51,0.1);
    }
    .btn-primary:hover { background: #1d3855; transform: scale(1.02); }
    .btn-outline {
      background: transparent;
      border: 2px solid #0b1e33;
      color: #0b1e33;
    }
    .btn-outline:hover { background: #0b1e33; color: white; }
    .hero-image {
      flex: 0 0 200px;
      text-align: center;
      font-size: 6rem;
      color: #2b7aff;
      opacity: 0.8;
    }

    /* ----- section headings ----- */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 40px 0 18px;
      flex-wrap: wrap;
      gap: 8px;
    }
    .section-head h2 {
      font-family: 'Syne', sans-serif;
      font-size: 1.8rem;
      font-weight: 600;
    }
    .section-head a { color: #2b7aff; font-weight: 500; }

    /* ----- categories (friendly tiles) ----- */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
      gap: 14px;
    }
    .cat-card {
      background: white;
      padding: 20px 12px;
      border-radius: 24px;
      text-align: center;
      box-shadow: 0 4px 14px rgba(0,0,0,0.02);
      transition: 0.2s;
      border: 1px solid rgba(0,0,0,0.02);
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 28px rgba(43,122,255,0.06);
      border-color: #d6e4ff;
    }
    .cat-card i { font-size: 2.2rem; color: #2b7aff; margin-bottom: 6px; }
    .cat-card h4 { font-weight: 600; font-size: 0.95rem; }
    .cat-card span { font-size: 0.8rem; color: #56759b; }

    /* ----- product grid (user friendly) ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 22px;
    }
    .product-card {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      transition: 0.25s ease;
      border: 1px solid rgba(0,0,0,0.02);
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 18px 36px rgba(11,30,51,0.04);
      border-color: #e0ebf9;
    }
    .product-card img {
      height: 180px;
      object-fit: cover;
      width: 100%;
      background: #f0f5fe;
    }
    .product-body {
      padding: 14px 16px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.75rem;
      color: #56759b;
      text-transform: uppercase;
      letter-spacing: 0.02em;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 10px 0 6px;
    }
    .price { font-weight: 700; font-size: 1.2rem; }
    .old-price { text-decoration: line-through; color: #8a9eb3; font-size: 0.9rem; }
    .rating { color: #f5b342; font-size: 0.85rem; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .add-btn {
      flex: 1;
      background: #0b1e33;
      color: white;
      padding: 10px 0;
      border-radius: 60px;
      font-weight: 600;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .add-btn:hover { background: #1d3855; }
    .wish-btn {
      background: #f2f6fd;
      border-radius: 40px;
      padding: 0 14px;
      transition: 0.15s;
      display: flex;
      align-items: center;
      font-size: 1.1rem;
    }
    .wish-btn:hover { background: #e5edf9; color: #ff4d6d; }

    /* ----- flash sale (deal) ----- */
    .deal-card {
      background: white;
      border-radius: 32px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 20px;
      padding: 20px 28px;
      box-shadow: 0 8px 28px rgba(0,0,0,0.02);
      border: 1px solid #eef3fc;
      margin: 16px 0 8px;
    }
    .deal-card img {
      width: 160px;
      height: 160px;
      object-fit: cover;
      border-radius: 20px;
      background: #e8f0fe;
    }
    .deal-content { flex: 1; }
    .deal-content h3 { font-family: 'Syne', sans-serif; font-size: 1.8rem; }
    .timer {
      display: flex;
      gap: 10px;
      margin: 14px 0;
    }
    .time-box {
      background: #0b1e33;
      color: white;
      padding: 6px 10px;
      border-radius: 16px;
      min-width: 56px;
      text-align: center;
    }
    .time-box div:first-child { font-weight: 700; font-size: 1.4rem; }
    .time-box span { font-size: 0.7rem; opacity: 0.7; }
    .deal-price { font-size: 1.8rem; font-weight: 700; }
    .deal-discount { background: #ff4d6d; color: white; padding: 4px 12px; border-radius: 40px; font-weight: 600; }

    /* ----- testimonials (friendly) ----- */
    .testimonial-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 8px 2px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      background: white;
      border-radius: 24px;
      padding: 18px 20px;
      min-width: 260px;
      flex: 0 0 auto;
      scroll-snap-align: start;
      border: 1px solid #eef3fc;
      box-shadow: 0 4px 10px rgba(0,0,0,0.01);
    }
    .testimonial-card .rating { font-size: 1rem; margin-bottom: 6px; }
    .testimonial-card p { font-size: 0.95rem; color: #1f3a57; }
    .testimonial-card .avatar {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 12px;
    }
    .testimonial-card .avatar img {
      width: 44px;
      height: 44px;
      border-radius: 40px;
      object-fit: cover;
      background: #d6e4ff;
    }

    /* ----- newsletter (friendly) ----- */
    .newsletter-box {
      background: #0b1e33;
      color: white;
      border-radius: 40px;
      padding: 36px 28px;
      text-align: center;
      margin: 20px 0 10px;
    }
    .newsletter-box h3 { font-family: 'Syne', sans-serif; font-size: 1.8rem; }
    .newsletter-box p { opacity: 0.75; margin-bottom: 14px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 8px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 22px;
      border-radius: 60px;
      border: none;
      flex: 1 1 240px;
      font-size: 1rem;
    }
    .newsletter-form button {
      background: #2b7aff;
      color: white;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      transition: 0.15s;
    }
    .newsletter-form button:hover { background: #1b5fd9; }

    /* ----- footer ----- */
    footer {
      padding: 32px 0 20px;
      border-top: 1px solid #eef3fc;
      margin-top: 20px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 28px;
    }
    .footer-brand { font-family: 'Syne', sans-serif; font-weight: 700; font-size: 1.4rem; }
    .footer-links { display: flex; gap: 32px; flex-wrap: wrap; }
    .footer-links div { line-height: 2; }
    .footer-links div strong { display: block; font-weight: 600; }
    .footer-links a { color: #3c5a7d; font-size: 0.95rem; }
    .footer-links a:hover { color: #0b1e33; }

    /* responsive */
    @media (max-width: 800px) {
      .nav-links { display: none; }
      .mobile-toggle { display: block; }
      .search-wrap input { width: 120px; }
      .hero { flex-direction: column; text-align: center; padding: 32px 20px; }
      .hero-content p { max-width: 100%; }
      .deal-card { flex-direction: column; text-align: center; }
      .deal-card img { width: 100%; height: auto; max-height: 200px; }
      .product-grid { grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); }
    }
    @media (max-width: 480px) {
      .header-grid { flex-wrap: wrap; }
      .search-wrap input { width: 100px; }
      .product-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
    }
    /* mobile menu (simple) */
    .mobile-nav {
      display: none;
      background: white;
      padding: 12px 20px 20px;
      border-top: 1px solid #eef3fc;
    }
    .mobile-nav.open { display: block; }
    .mobile-nav a {
      display: block;
      padding: 10px 0;
      border-bottom: 1px solid #f0f5fe;
      font-weight: 500;
    }
  </style>
</head>
<body>

<header>
  <div class="container header-grid">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="light">Shop</span></span></div>
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
  <!-- Hero -->
  <section class="hero">
    <div class="hero-content">
      <h1>New season, <br>fresh finds</h1>
      <p>Discover curated picks in tech, style & more. Free delivery on first order.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Start shopping</button>
        <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-image">
      <i class="fas fa-bag-shopping"></i>
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
      <span style="font-weight:500;color:#2b7aff;"><i class="fas fa-clock"></i> Limited time</span>
    </div>
    <div class="deal-card" id="dealCard">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80" alt="MacBook Air">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p style="color:#3c5a7d;">Thin, light, and incredibly fast.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><span>days</span></div>
          <div class="time-box"><div id="dealHours">00</div><span>hrs</span></div>
          <div class="time-box"><div id="dealMinutes">00</div><span>min</span></div>
          <div class="time-box"><div id="dealSeconds">00</div><span>sec</span></div>
        </div>
        <div style="display:flex;align-items:center;gap:14px;flex-wrap:wrap;">
          <span class="deal-price">$999</span>
          <span class="old-price" style="font-size:1.1rem;text-decoration:line-through;color:#8a9eb3;">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:12px;"><i class="fas fa-bolt"></i> Grab deal</button>
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
      <div id="newsletterMsg" style="margin-top:10px;font-size:0.95rem;display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div class="footer-brand"><i class="fas fa-store-alt" style="color:#2b7aff;"></i> NexusShop</div>
      <p style="color:#3c5a7d;max-width:260px;margin-top:6px;">Modern e‑commerce demo — built with care.</p>
      <div style="display:flex;gap:12px;margin-top:10px;">
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Shop</strong> <a href="#">New arrivals</a> <a href="#">Best sellers</a> <a href="#">Gifts</a></div>
      <div><strong>Support</strong> <a href="#">Help center</a> <a href="#">Returns</a> <a href="#">Contact</a></div>
      <div><strong>Company</strong> <a href="#">About</a> <a href="#">Careers</a> <a href="#">Press</a></div>
    </div>
  </div>
  <div style="text-align:center;color:#8a9eb3;font-size:0.8rem;padding-top:24px;">© <span id="year"></span> NexusShop. All rights reserved.</div>
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
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
  ];

  const TESTIMONIALS = [
    { name: 'Ava Martin', text: 'Fast shipping and excellent support. The product exceeded my expectations!', rating: 5, avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80' },
    { name: 'Michael Lee', text: 'Great selection and smooth checkout. Will shop again.', rating: 4, avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80' },
    { name: 'Sophie Chen', text: 'Love the quality and the prices. Highly recommend!', rating: 5, avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80' }
  ];

  // ----- state -----
  let cartCount = 0;

  // ----- render functions -----
  function renderCategories() {
    const grid = document.getElementById('categoriesGrid');
    grid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const card = document.createElement('div');
      card.className = 'cat-card';
      card.innerHTML = `<i class="fas ${cat.icon}"></i><h4>${cat.name}</h4><span>shop now</span>`;
      card.addEventListener('click', () => {
        document.getElementById('searchInput').value = cat.name;
        filterProducts(cat.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      grid.appendChild(card);
    });
  }

  function renderProducts(list) {
    const grid = document.getElementById('productsGrid');
    grid.innerHTML = '';
    list.forEach(p => {
      const card = document.createElement('div');
      card.className = 'product-card';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      card.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <h5>${p.title}</h5>
          <span class="category-tag">${p.category}</span>
          <div class="price-row">
            <span class="price">$${p.price}</span>
            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
          </div>
          <div class="rating">${stars} <span style="color:#56759b;font-size:0.75rem;">(${p.reviews})</span></div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
          <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
        </div>
      `;
      grid.appendChild(card);
    });
    // attach add listeners
    grid.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = Number(btn.dataset.id);
        addToCart(id);
      });
    });
  }

  function renderTestimonials() {
    const container = document.getElementById('testimonialsContainer');
    container.innerHTML = '';
    TESTIMONIALS.forEach(t => {
      const card = document.createElement('div');
      card.className = 'testimonial-card';
      const stars = '★'.repeat(t.rating) + '☆'.repeat(5 - t.rating);
      card.innerHTML = `
        <div class="rating">${stars}</div>
        <p>"${t.text}"</p>
        <div class="avatar">
          <img src="${t.avatar}" alt="${t.name}">
          <div><strong>${t.name}</strong><br><span style="color:#56759b;font-size:0.8rem;">verified</span></div>
        </div>
      `;
      container.appendChild(card);
    });
  }

  // ----- helpers -----
  function addToCart(productId) {
    const p = PRODUCTS.find(x => x.id === productId);
    if (!p) return;
    cartCount++;
    document.getElementById('cartCount').textContent = cartCount;
    const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
    if (btn) {
      const orig = btn.innerHTML;
      btn.innerHTML = '<i class="fas fa-check"></i> Added';
      btn.disabled = true;
      setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
    }
  }

  function filterProducts(query) {
    const q = query.trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // ----- init -----
  renderCategories();
  renderProducts(PRODUCTS);
  renderTestimonials();
  document.getElementById('cartCount').textContent = cartCount;
  document.getElementById('year').textContent = new Date().getFullYear();

  // -----
