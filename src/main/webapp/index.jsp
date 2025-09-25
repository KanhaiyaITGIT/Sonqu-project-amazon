<html>
<body>
<h2><%= "!
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Kanhaiya's Demo Site</title>
  <style>
    :root{
      --bg:#0f1724;
      --card:#0b1220;
      --accent:#06b6d4;
      --muted:#94a3b8;
      --white:#ffffff;
      --maxw:900px;
    }
    *{box-sizing:border-box}
    body{
      margin:0;
      font-family:Inter,system-ui,Segoe UI,Helvetica,Arial;
      background: linear-gradient(180deg,#071227 0%, #0b1220 100%);
      color:var(--white);
      -webkit-font-smoothing:antialiased;
    }
    .container{max-width:var(--maxw);margin:0 auto;padding:28px;}
    .site-header{background:rgba(255,255,255,0.02);backdrop-filter: blur(4px);position:sticky;top:0;z-index:10}
    .site-header .container{display:flex;align-items:center;justify-content:space-between;}
    .site-header h1{font-size:18px;margin:0}
    .site-header nav a{color:var(--muted);text-decoration:none;margin-left:16px;font-size:14px}
    .hero{padding:60px 0;text-align:center}
    .hero-inner h2{font-size:34px;margin:0 0 12px}
    .hero-inner p{color:var(--muted);margin:0 0 18px}
    .btn{display:inline-block;background:linear-gradient(90deg,var(--accent),#7c3aed);color:#001; padding:10px 18px;border-radius:8px;font-weight:600;text-decoration:none}
    .section{background:rgba(255,255,255,0.02);margin:18px 0;padding:20px;border-radius:10px}
    .services-grid{list-style:none;padding:0;margin:12px 0;display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:12px}
    .services-grid li{background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);padding:14px;border-radius:8px}
    .contact-section form{display:grid;gap:10px;max-width:640px}
    .contact-section label{display:block;font-size:13px;color:var(--muted)}
    .contact-section input, .contact-section textarea{width:100%;padding:10px;border-radius:6px;border:1px solid rgba(255,255,255,0.06);background:transparent;color:var(--white)}
    .form-status{color:var(--muted);margin-top:6px}
    .site-footer{padding:18px 0;text-align:center;color:var(--muted)}
    @media (max-width:600px){
      .hero-inner h2{font-size:24px}
      .site-header nav a{display:none}
    }
  </style>
</head>
<body>
  <header class="site-header">
    <div class="container">
      <h1>Har Har Mahadev 🔱</h1>
      <nav>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#services">Services</a>
        <a href="#contact">Contact</a>
      </nav>
    </div>
  </header>

  <main id="home" class="hero">
    <div class="container hero-inner">
      <h2>Simple, Fast & Deployable</h2>
      <p>Demo static site to practice hosting on EC2 / Docker / Nginx.</p>
      <a class="btn" href="#contact">Get in touch</a>
    </div>
  </main>

  <section id="about" class="container section">
    <h3>About</h3>
    <p>This is a minimal static website made for demo and practice. Use it to learn deployment on AWS EC2 or Docker.</p>
  </section>

  <section id="services" class="container section">
    <h3>Services</h3>
    <ul class="services-grid">
      <li><strong>Linux</strong><br/>Sysadmin & automation</li>
      <li><strong>AWS</strong><br/>EC2, VPC, S3</li>
      <li><strong>DevOps</strong><br/>Docker, CI/CD</li>
    </ul>
  </section>

  <section id="contact" class="container section contact-section">
    <h3>Contact</h3>
    <form id="contactForm" onsubmit="return submitForm(event)">
      <label>
        Name
        <input type="text" id="name" placeholder="Your name" required />
      </label>
      <label>
        Email
        <input type="email" id="email" placeholder="kanhaiyagupta99108@example.com" required />
      </label>
      <label>
        Message
        <textarea id="message" placeholder="Write message" rows="4" required></textarea>
      </label>
      <button type="submit" class="btn">Send</button>
      <p id="formStatus" class="form-status" aria-live="polite"></p>
    </form>
  </section>

  <footer class="site-footer">
    <div class="container">
      <small>&copy; <span id="year"></span> Kanhaiya Gupta — Demo site</small>
    </div>
  </footer>

  <script>
    document.getElementById('year').textContent = new Date().getFullYear();

    function submitForm(e){
      e.preventDefault();
      const name = document.getElementById('name').value.trim();
      const email = document.getElementById('email').value.trim();
      const message = document.getElementById('message').value.trim();
      const status = document.getElementById('formStatus');

      if(!name || !email || !message){
        status.textContent = 'Please fill all fields.';
        return false;
      }

      status.style.color = '#a7f3d0';
      status.textContent = 'Thanks ' + name + '! This is a demo form — integrate a backend to receive messages.';
      setTimeout(()=> status.textContent = '', 6000);
      document.getElementById('contactForm').reset();
      return false;
    }
  </script>
</body>
</html>


git " %></h2>
</body>
</html>
