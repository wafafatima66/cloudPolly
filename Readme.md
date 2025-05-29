  <h1>📊 Laravel Admin Dashboard</h1>

  <p>This is a robust, extendable Admin Dashboard built with <strong>Laravel</strong>. It provides comprehensive administrative features including user management, support ticket handling, system-wide settings, and notification broadcasting.</p>

  <h2>🧰 Features</h2>
  <ul>
    <li>🔐 Authenticated User Dashboard</li>
    <li>👥 User List and User Activity Monitoring</li>
    <li>📨 User Support Request Management</li>
    <li>📢 Create and Send Mass Notifications</li>
    <li>🔔 System Notifications</li>
    <li>⚙️ General Settings:
      <ul>
        <li>🌍 Global Settings</li>
        <li>💡 Frontend Configuration</li>
        <li>🎨 Appearance Customization</li>
      </ul>
    </li>
    <li>📝 Blog Manager (Add/Edit/Delete Posts)</li>
    <li>👤 Profile Management</li>
    <li>🧩 Modular, Scalable Laravel Architecture</li>
  </ul>

  <h2>📸 Screenshots</h2>

  <img src="public/screenshots/cloudpolly (1).png" alt="Dashboard Screenshot">



  <h2>🛠 Tech Stack</h2>
  <ul>
    <li>Laravel 10+</li>
    <li>Blade Templating Engine</li>
    <li>Bootstrap 5</li>
    <li>jQuery & Vanilla JS</li>
    <li>MySQL</li>
  </ul>

  <h2>⚙️ Installation Instructions</h2>

  <h3>Step 1: Clone Repository</h3>
  <pre><code>git clone https://github.com/wafafatima66/cloudPolly</code></pre>

  <h3>Step 2: Navigate & Install Dependencies</h3>
  <pre><code>cd laravel-admin-dashboard
composer install
npm install
npm run dev</code></pre>

  <h3>Step 3: Environment Setup</h3>
  <pre><code>cp .env.example .env
php artisan key:generate</code></pre>

  <h3>Step 4: Database Setup</h3>
  <ul>
    <li>Create a new database, e.g., <code>admin_dashboard</code></li>
    <li>Import the provided SQL file:
      <pre><code>database/cloudpolly.sql</code></pre>
    </li>
    <li>Update your `.env` database values:</li>
  </ul>

  <pre><code>DB_DATABASE=admin_dashboard
DB_USERNAME=root
DB_PASSWORD=your_password</code></pre>

  <h3>Step 5: Storage & Caches</h3>
  <pre><code>php artisan storage:link
php artisan config:cache
php artisan migrate --seed</code></pre>

  <h3>Step 6: Serve the Project</h3>
  <pre><code>php artisan serve</code></pre>
  <p>Visit: <a href="http://localhost:8000" target="_blank">http://localhost:8000</a></p>

  <h2>🔐 Default Admin Login</h2>
  <pre><code>Email: admin@example.com
Password: 123456</code></pre>



  <h2>🧩 Notes</h2>
  <ul>
    <li>This project uses Blade + Bootstrap for UI</li>
    <li>All settings are dynamic and editable from the admin panel</li>
    <li>Extendable via Laravel modules/components</li>
    <li>Make sure your system has Composer, PHP 8+, MySQL, and Node.js</li>
  </ul>

<h2>📧 Contact</h2>
  <p>If you want to get in touch, feel free to connect via <a href="https://www.linkedin.com/in/fatimaamir99/" target="_blank">LinkedIn</a></p>

  <h3>⭐ If you like this project, please consider starring it on GitHub!</h3>
