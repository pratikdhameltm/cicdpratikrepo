<%@ taglib prefix="tagfiles" tagdir="/WEB-INF/tags" %>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/snakes.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet"/>

    <title>Pratik Dhame | DevOps Trainee</title>

    <style>
      /* ===== Override & Page Styles (scoped to this page) ===== */
      body, html {
        margin: 0;
        padding: 0;
        height: 100%;
        font-family: 'Poppins', sans-serif !important;
        background: #0f0f1a !important;
        color: #e0e0e0 !important;
        text-align: center;
        overflow-x: hidden;
      }

      /* ---------- HERO SECTION ---------- */
      .hero {
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #0f0f1a 0%, #1a1a2e 40%, #16213e 100%);
        position: relative;
        padding: 40px 20px;
      }

      .hero::before {
        content: '';
        position: absolute;
        top: -50%;
        left: -50%;
        width: 200%;
        height: 200%;
        background: radial-gradient(circle at 30% 50%, rgba(0, 210, 255, 0.06) 0%, transparent 50%),
                    radial-gradient(circle at 70% 50%, rgba(114, 9, 183, 0.06) 0%, transparent 50%);
        animation: bgShift 10s ease-in-out infinite alternate;
      }

      @keyframes bgShift {
        0%   { transform: translate(0, 0); }
        100% { transform: translate(30px, -20px); }
      }

      .hero-content {
        position: relative;
        z-index: 2;
      }

      .greeting {
        font-size: 18px;
        font-weight: 300;
        letter-spacing: 4px;
        text-transform: uppercase;
        color: #00d2ff;
        margin-bottom: 10px;
      }

      .hero-name {
        font-size: 52px;
        font-weight: 700;
        color: #ffffff;
        margin: 10px 0;
      }

      .hero-name span {
        background: linear-gradient(90deg, #00d2ff, #7209b7);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
      }

      .hero-role {
        font-size: 22px;
        font-weight: 400;
        color: #b0b0b0;
        margin-bottom: 30px;
      }

      .hero-role strong {
        color: #00d2ff;
        font-weight: 600;
      }

      .tagline {
        font-size: 16px;
        color: #888;
        max-width: 550px;
        margin: 0 auto 40px;
        line-height: 1.7;
      }

      .cta-btn {
        display: inline-block;
        padding: 14px 40px;
        border: 2px solid #00d2ff;
        border-radius: 50px;
        color: #00d2ff !important;
        font-size: 15px;
        font-weight: 600;
        text-decoration: none !important;
        text-transform: uppercase;
        letter-spacing: 2px;
        transition: all 0.3s ease;
        background: transparent;
      }

      .cta-btn:hover {
        background: #00d2ff;
        color: #0f0f1a !important;
        box-shadow: 0 0 25px rgba(0, 210, 255, 0.4);
      }

      /* ---------- SECTION STYLES ---------- */
      .section {
        padding: 80px 20px;
        max-width: 900px;
        margin: 0 auto;
      }

      .section-title {
        font-size: 32px;
        font-weight: 700;
        color: #ffffff;
        margin-bottom: 50px;
        position: relative;
      }

      .section-title::after {
        content: '';
        display: block;
        width: 60px;
        height: 3px;
        background: linear-gradient(90deg, #00d2ff, #7209b7);
        margin: 15px auto 0;
        border-radius: 2px;
      }

      /* ---------- ABOUT ---------- */
      .about-text {
        font-size: 17px;
        line-height: 1.8;
        color: #b0b0b0;
        max-width: 700px;
        margin: 0 auto;
      }

      /* ---------- TOOLS / SKILLS GRID ---------- */
      .tools-grid {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 25px;
        margin-top: 10px;
      }

      .tool-card {
        background: rgba(255, 255, 255, 0.04);
        border: 1px solid rgba(255, 255, 255, 0.08);
        border-radius: 16px;
        padding: 30px 25px;
        width: 160px;
        transition: all 0.3s ease;
      }

      .tool-card:hover {
        transform: translateY(-6px);
        border-color: #00d2ff;
        box-shadow: 0 8px 30px rgba(0, 210, 255, 0.12);
      }

      .tool-card i {
        font-size: 36px;
        margin-bottom: 14px;
        background: linear-gradient(135deg, #00d2ff, #7209b7);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
      }

      .tool-card h4 {
        font-size: 15px;
        font-weight: 600;
        color: #ffffff;
        margin: 0;
      }

      .tool-card p {
        font-size: 12px;
        color: #888;
        margin-top: 6px;
      }

      /* ---------- JOURNEY TIMELINE ---------- */
      .timeline {
        text-align: left;
        max-width: 600px;
        margin: 0 auto;
        position: relative;
        padding-left: 40px;
      }

      .timeline::before {
        content: '';
        position: absolute;
        left: 12px;
        top: 0;
        bottom: 0;
        width: 2px;
        background: linear-gradient(180deg, #00d2ff, #7209b7);
      }

      .timeline-item {
        margin-bottom: 40px;
        position: relative;
      }

      .timeline-item::before {
        content: '';
        position: absolute;
        left: -34px;
        top: 6px;
        width: 14px;
        height: 14px;
        background: #00d2ff;
        border-radius: 50%;
        border: 3px solid #0f0f1a;
      }

      .timeline-item h4 {
        font-size: 18px;
        color: #ffffff;
        margin: 0 0 4px;
      }

      .timeline-item .meta {
        font-size: 13px;
        color: #00d2ff;
        margin-bottom: 8px;
      }

      .timeline-item p {
        font-size: 14px;
        color: #999;
        line-height: 1.6;
        margin: 0;
      }

      /* ---------- FOOTER ---------- */
      .page-footer {
        padding: 40px 20px;
        border-top: 1px solid rgba(255,255,255,0.06);
        color: #555;
        font-size: 14px;
      }

      .page-footer a {
        color: #00d2ff !important;
        text-decoration: none;
        margin: 0 10px;
        font-size: 20px;
        transition: color 0.3s;
      }

      .page-footer a:hover {
        color: #7209b7 !important;
      }

      /* ---------- RESPONSIVE ---------- */
      @media (max-width: 600px) {
        .hero-name { font-size: 34px; }
        .hero-role { font-size: 18px; }
        .tool-card { width: 130px; padding: 20px 15px; }
        .section-title { font-size: 26px; }
      }
    </style>
  </head>

  <body>

    <!-- ===== HERO ===== -->
    <div class="hero">
      <div class="hero-content">
        <p class="greeting">Welcome to my space</p>
        <h1 class="hero-name">Hello, I'm <span>Pratik Dhame</span></h1>
        <p class="hero-role">Associate Trainee at <strong>LTIM</strong></p>
        <p class="tagline">
          Passionate about building scalable infrastructure and automating everything.
          Currently exploring the world of <strong style="color:#00d2ff;">DevOps</strong> &mdash;
          from CI/CD pipelines to container orchestration and cloud-native technologies.
        </p>
        <a href="#about" class="cta-btn">Know More</a>
      </div>
    </div>

    <!-- ===== ABOUT ===== -->
    <div class="section" id="about">
      <h2 class="section-title">About Me</h2>
      <p class="about-text">
        I'm a Graduate Apprentice currently undergoing intensive DevOps training.
        I enjoy getting hands-on with cloud infrastructure, automating deployments,
        and understanding how modern software delivery works end-to-end.
        Every day is a new opportunity to learn, break things, and fix them better.
      </p>
    </div>

    <!-- ===== TOOLS & TECHNOLOGIES ===== -->
    <div class="section" id="tools">
      <h2 class="section-title">Tools & Technologies</h2>
      <div class="tools-grid">

        <div class="tool-card">
          <i class="fab fa-linux"></i>
          <h4>Linux</h4>
          <p>Ubuntu &middot; Amazon Linux</p>
        </div>

        <div class="tool-card">
          <i class="fab fa-docker"></i>
          <h4>Docker</h4>
          <p>Containers &middot; Compose</p>
        </div>

        <div class="tool-card">
          <i class="fas fa-dharmachakra"></i>
          <h4>Kubernetes</h4>
          <p>Pods &middot; Ingress &middot; RBAC</p>
        </div>

        <div class="tool-card">
          <i class="fab fa-jenkins"></i>
          <h4>Jenkins</h4>
          <p>CI/CD &middot; Master-Slave</p>
        </div>

        <div class="tool-card">
          <i class="fab fa-aws"></i>
          <h4>AWS</h4>
          <p>EC2 &middot; S3 &middot; VPC &middot; IAM</p>
        </div>

        <div class="tool-card">
          <i class="fas fa-cogs"></i>
          <h4>Ansible</h4>
          <p>Automation &middot; Config Mgmt</p>
        </div>

        <div class="tool-card">
          <i class="fab fa-git-alt"></i>
          <h4>Git</h4>
          <p>Version Control &middot; CodeCommit</p>
        </div>

        <div class="tool-card">
          <i class="fas fa-terminal"></i>
          <h4>Shell Scripting</h4>
          <p>Bash &middot; Automation</p>
        </div>

      </div>
    </div>

    <!-- ===== MY JOURNEY ===== -->
    <div class="section" id="journey">
      <h2 class="section-title">My Journey</h2>
      <div class="timeline">

        <div class="timeline-item">
          <h4>DevOps Training</h4>
          <div class="meta">2026 &mdash; Present</div>
          <p>Hands-on training in Docker, Kubernetes, Jenkins CI/CD pipelines,
             AWS cloud services, Ansible automation, and Linux administration.</p>
        </div>

        <div class="timeline-item">
          <h4>Associate Trainee &mdash; LTIM</h4>
          <div class="meta">2026 &mdash; Present</div>
          <p>Working as a Graduate Apprentice, building real-world skills in
             cloud infrastructure and DevOps practices.</p>
        </div>

        <div class="timeline-item">
          <h4>The Beginning</h4>
          <div class="meta">Curiosity &rarr; Code</div>
          <p>Started with a curiosity for how software gets built, deployed,
             and scaled &mdash; and never looked back.</p>
        </div>

      </div>
    </div>

    <!-- ===== FOOTER ===== -->
    <div class="page-footer">
      <p>
        <a href="https://github.com/" title="GitHub"><i class="fab fa-github"></i></a>
        <a href="https://linkedin.com/" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
        <a href="mailto:pratik@example.com" title="Email"><i class="fas fa-envelope"></i></a>
      </p>
      <p>&copy; 2026 Pratik Dhame &middot; Built with passion & DevOps spirit</p>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
