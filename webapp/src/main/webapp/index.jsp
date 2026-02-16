<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Deployment Dashboard | Valaxy Technologies</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #1a73e8;
            --secondary: #34a853;
            --accent: #ea4335;
            --dark: #202124;
            --light: #f8f9fa;
            --gradient: linear-gradient(135deg, #1a73e8, #34a853);
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f172a, #1e293b);
            color: var(--light);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            max-width: 1200px;
            width: 100%;
        }
        
        .dashboard {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            position: relative;
            overflow: hidden;
        }
        
        .dashboard::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: var(--gradient);
        }
        
        .header {
            text-align: center;
            margin-bottom: 50px;
        }
        
        .logo {
            font-size: 3rem;
            color: var(--primary);
            margin-bottom: 20px;
            animation: pulse 2s infinite;
        }
        
        h1 {
            font-size: 3.5rem;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 20px;
            font-weight: 800;
            letter-spacing: -0.5px;
        }
        
        .tagline {
            font-size: 1.2rem;
            color: #94a3b8;
            max-width: 600px;
            margin: 0 auto 40px;
            line-height: 1.6;
        }
        
        .deployment-info {
            background: rgba(255, 255, 255, 0.08);
            border-radius: 15px;
            padding: 30px;
            margin: 40px 0;
            border-left: 4px solid var(--secondary);
        }
        
        h2 {
            font-size: 2.2rem;
            color: #e2e8f0;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 15px;
        }
        
        h2 i {
            color: var(--secondary);
        }
        
        .tech-stack {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            margin: 40px 0;
        }
        
        .tech-item {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px 30px;
            border-radius: 12px;
            text-align: center;
            min-width: 150px;
            transition: transform 0.3s, background 0.3s;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .tech-item:hover {
            transform: translateY(-5px);
            background: rgba(255, 255, 255, 0.15);
            border-color: var(--primary);
        }
        
        .tech-icon {
            font-size: 2.5rem;
            margin-bottom: 10px;
            display: block;
        }
        
        .kubernetes .tech-icon { color: #326ce5; }
        .ansible .tech-icon { color: #e00; }
        .jenkins .tech-icon { color: #d24939; }
        .docker .tech-icon { color: #2496ed; }
        
        .status-indicator {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 10px 20px;
            background: rgba(52, 168, 83, 0.2);
            border-radius: 50px;
            margin-top: 20px;
            border: 1px solid rgba(52, 168, 83, 0.3);
        }
        
        .status-dot {
            width: 10px;
            height: 10px;
            background: var(--secondary);
            border-radius: 50%;
            animation: blink 2s infinite;
        }
        
        .metrics {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin: 40px 0;
        }
        
        .metric-card {
            background: rgba(255, 255, 255, 0.05);
            padding: 25px;
            border-radius: 15px;
            text-align: center;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .metric-value {
            font-size: 2.5rem;
            font-weight: 700;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin: 10px 0;
        }
        
        .welcome-message {
            text-align: center;
            font-size: 1.5rem;
            color: #cbd5e1;
            margin: 40px 0;
            padding: 30px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 15px;
            border: 1px dashed rgba(255, 255, 255, 0.2);
        }
        
        .cta-button {
            display: inline-block;
            background: var(--gradient);
            color: white;
            padding: 16px 40px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
            margin: 20px 0;
            border: none;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(26, 115, 232, 0.3);
        }
        
        .footer {
            text-align: center;
            margin-top: 50px;
            padding-top: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #94a3b8;
            font-size: 0.9rem;
        }
        
        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.7; }
        }
        
        @keyframes blink {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.5; }
        }
        
        @media (max-width: 768px) {
            h1 { font-size: 2.5rem; }
            h2 { font-size: 1.8rem; }
            .dashboard { padding: 25px; }
            .tech-stack { gap: 15px; }
            .tech-item { min-width: 120px; padding: 15px; }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="dashboard">
            <div class="header">
                <div class="logo">
                    <i class="fas fa-cloud"></i>
                </div>
                <h1>Hello, ****Welcome to DevOps Universe****</h1>
                <p class="tagline">Streamlined CI/CD pipeline with automated Kubernetes deployment using Ansible</p>
            </div>
            
            <div class="deployment-info">
                <h2>
                    <i class="fas fa-rocket"></i>
                    Deploying on Kubernetes using Ansible
                </h2>
                <p>Valaxy Technologies | Production Environment</p>
                <div class="status-indicator">
                    <div class="status-dot"></div>
                    <span>Deployment Status: Active</span>
                </div>
            </div>
            
            <div class="tech-stack">
                <div class="tech-item kubernetes">
                    <i class="fab fa-kubernetes tech-icon"></i>
                    <h3>Kubernetes</h3>
                    <p>Container Orchestration</p>
                </div>
                <div class="tech-item ansible">
                    <i class="fas fa-robot tech-icon"></i>
                    <h3>Ansible</h3>
                    <p>Configuration Management</p>
                </div>
                <div class="tech-item jenkins">
                    <i class="fab fa-jenkins tech-icon"></i>
                    <h3>Jenkins</h3>
                    <p>CI/CD Pipeline</p>
                </div>
                <div class="tech-item docker">
                    <i class="fab fa-docker tech-icon"></i>
                    <h3>Docker</h3>
                    <p>Containerization</p>
                </div>
            </div>
            
            <div class="metrics">
                <div class="metric-card">
                    <i class="fas fa-server"></i>
                    <h3>Cluster Nodes</h3>
                    <div class="metric-value">5</div>
                    <p>Active Kubernetes Nodes</p>
                </div>
                <div class="metric-card">
                    <i class="fas fa-cube"></i>
                    <h3>Running Pods</h3>
                    <div class="metric-value">12</div>
                    <p>Deployed Containers</p>
                </div>
                <div class="metric-card">
                    <i class="fas fa-bolt"></i>
                    <h3>Deployment Speed</h3>
                    <div class="metric-value">2.4s</div>
                    <p>Average Build Time</p>
                </div>
                <div class="metric-card">
                    <i class="fas fa-chart-line"></i>
                    <h3>Uptime</h3>
                    <div class="metric-value">99.9%</div>
                    <p>Service Availability</p>
                </div>
            </div>
            
            <div class="welcome-message">
                <i class="fas fa-hand-sparkles" style="font-size: 2rem; margin-bottom: 15px;"></i>
                <h2>Glad to see you here!</h2>
                <p>This automated deployment pipeline demonstrates modern DevOps practices with seamless integration of multiple technologies.</p>
                <button class="cta-button" onclick="showDeploymentLogs()">
                    <i class="fas fa-play-circle"></i> View Deployment Logs
                </button>
            </div>
            
            <div class="footer">
                <p>Valaxy Technologies DevOps Team | © 2024 Automated Deployment System</p>
                <p>Last Deployment: <span id="deployment-time">Just now</span></p>
            </div>
        </div>
    </div>

    <script>
        function showDeploymentLogs() {
            alert("Deployment logs are being fetched...\n\n" +
                  "✓ Kubernetes cluster connected\n" +
                  "✓ Ansible playbook executed\n" +
                  "✓ Docker images built\n" +
                  "✓ Services deployed\n" +
                  "✓ Health checks passed\n\n" +
                  "Status: SUCCESS");
        }
        
        // Update deployment time
        function updateDeploymentTime() {
            const now = new Date();
            const options = { 
                year: 'numeric', 
                month: 'long', 
                day: 'numeric',
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit'
            };
            document.getElementById('deployment-time').textContent = 
                now.toLocaleDateString('en-US', options);
        }
        
        // Initialize
        updateDeploymentTime();
        setInterval(updateDeploymentTime, 60000); // Update every minute
    </script>
</body>
</html>
