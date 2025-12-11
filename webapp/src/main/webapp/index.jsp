<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Deployment | Valaxy</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        
        .card {
            background: white;
            border-radius: 24px;
            padding: 60px;
            max-width: 800px;
            width: 100%;
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.2);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 6px;
            background: linear-gradient(90deg, #667eea, #764ba2, #f093fb);
        }
        
        .icon-container {
            width: 100px;
            height: 100px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 30px;
            color: white;
            font-size: 48px;
            box-shadow: 0 10px 20px rgba(102, 126, 234, 0.3);
        }
        
        h1 {
            font-size: 2.8rem;
            color: #2d3748;
            margin-bottom: 20px;
            font-weight: 800;
            line-height: 1.2;
        }
        
        .highlight {
            background: linear-gradient(120deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        
        .deployment-badge {
            display: inline-block;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            padding: 12px 28px;
            border-radius: 50px;
            font-weight: 600;
            margin: 30px 0;
            font-size: 1.2rem;
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
        }
        
        .tech-icons {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin: 40px 0;
            flex-wrap: wrap;
        }
        
        .tech-icon {
            font-size: 2.5rem;
            color: #4a5568;
            transition: all 0.3s;
        }
        
        .tech-icon:hover {
            transform: scale(1.2);
            color: #667eea;
        }
        
        .welcome-section {
            background: #f7fafc;
            padding: 30px;
            border-radius: 16px;
            margin: 40px 0;
            border: 1px solid #e2e8f0;
        }
        
        .welcome-section h2 {
            color: #4a5568;
            font-size: 1.8rem;
            margin-bottom: 15px;
        }
        
        .welcome-section p {
            color: #718096;
            line-height: 1.6;
        }
        
        .status-container {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 15px;
            margin-top: 30px;
        }
        
        .status-dot {
            width: 12px;
            height: 12px;
            background: #48bb78;
            border-radius: 50%;
            animation: pulse 1.5s infinite;
        }
        
        .company-name {
            color: #667eea;
            font-weight: 700;
        }
        
        @keyframes pulse {
            0%, 100% { opacity: 1; transform: scale(1); }
            50% { opacity: 0.5; transform: scale(0.8); }
        }
        
        @media (max-width: 768px) {
            .card { padding: 40px 25px; }
            h1 { font-size: 2.2rem; }
            .icon-container { width: 80px; height: 80px; font-size: 36px; }
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="icon-container">
            <i class="fas fa-infinity"></i>
        </div>
        
        <h1>
            Hello, Welcome to 
            <span class="highlight">Simple DevOps Project</span>
        </h1>
        
        <div class="deployment-badge">
            <i class="fas fa-rocket"></i>
            Deploying on Kubernetes using Ansible
        </div>
        
        <p style="color: #718096; font-size: 1.2rem; margin-bottom: 20px;">
            For <span class="company-name">Valaxy Technologies</span>
        </p>
        
        <div class="tech-icons">
            <i class="fab fa-kubernetes tech-icon" title="Kubernetes"></i>
            <i class="fab fa-ansible tech-icon" title="Ansible"></i>
            <i class="fab fa-jenkins tech-icon" title="Jenkins"></i>
            <i class="fab fa-docker tech-icon" title="Docker"></i>
            <i class="fab fa-git-alt tech-icon" title="Git"></i>
        </div>
        
        <div class="welcome-section">
            <h2>Glad to see you here! 👋</h2>
            <p>
                This project showcases automated deployment workflows with Kubernetes orchestration 
                and Ansible automation. Experience the power of modern DevOps practices in action.
            </p>
        </div>
        
        <div class="status-container">
            <div class="status-dot"></div>
            <span style="color: #4a5568; font-weight: 500;">
                System Status: <strong style="color: #48bb78;">Operational</strong>
            </span>
        </div>
    </div>
    
    <script>
        // Add some interactive effects
        document.querySelectorAll('.tech-icon').forEach(icon => {
            icon.addEventListener('mouseenter', function() {
                this.style.transform = 'scale(1.2) rotate(5deg)';
            });
            
            icon.addEventListener('mouseleave', function() {
                this.style.transform = 'scale(1) rotate(0deg)';
            });
        });
        
        // Update status message
        const statusMessages = [
            "Deploying containers...",
            "Running health checks...",
            "Scaling services...",
            "Monitoring metrics...",
            "All systems operational ✓"
        ];
        
        let currentStatus = 0;
        function updateStatus() {
            const statusElement = document.querySelector('.status-container span');
            if (currentStatus < statusMessages.length) {
                statusElement.innerHTML = `Status: <strong>${statusMessages[currentStatus]}</strong>`;
                currentStatus++;
                setTimeout(updateStatus, 2000);
            }
        }
        
        // Start status animation after 3 seconds
        setTimeout(updateStatus, 3000);
    </script>
</body>
</html>
