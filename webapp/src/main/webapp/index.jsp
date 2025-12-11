<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Terminal | Valaxy</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Monaco', 'Consolas', monospace;
            background: #1a1a1a;
            color: #00ff00;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        
        .terminal {
            background: #000;
            border-radius: 8px;
            width: 100%;
            max-width: 900px;
            box-shadow: 0 0 40px rgba(0, 255, 0, 0.1);
            overflow: hidden;
            border: 1px solid #333;
        }
        
        .terminal-header {
            background: #222;
            padding: 15px;
            display: flex;
            align-items: center;
            border-bottom: 1px solid #333;
        }
        
        .terminal-buttons {
            display: flex;
            gap: 8px;
        }
        
        .terminal-button {
            width: 12px;
            height: 12px;
            border-radius: 50%;
        }
        
        .button-red { background: #ff5f56; }
        .button-yellow { background: #ffbd2e; }
        .button-green { background: #27c93f; }
        
        .terminal-title {
            flex: 1;
            text-align: center;
            color: #888;
            font-size: 14px;
        }
        
        .terminal-body {
            padding: 30px;
            min-height: 500px;
        }
        
        .command-line {
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .prompt {
            color: #00ff00;
        }
        
        .command {
            color: #fff;
            animation: typing 2s steps(40);
        }
        
        .output {
            margin-left: 40px;
            line-height: 1.6;
        }
        
        .output-line {
            margin: 10px 0;
            opacity: 0;
            animation: fadeIn 0.5s forwards;
        }
        
        .output-line:nth-child(1) { animation-delay: 2.5s; }
        .output-line:nth-child(2) { animation-delay: 3s; }
        .output-line:nth-child(3) { animation-delay: 3.5s; }
        .output-line:nth-child(4) { animation-delay: 4s; }
        .output-line:nth-child(5) { animation-delay: 4.5s; }
        .output-line:nth-child(6) { animation-delay: 5s; }
        
        .highlight {
            color: #ffff00;
        }
        
        .success {
            color: #00ff00;
        }
        
        .info {
            color: #00ffff;
        }
        
        .warning {
            color: #ffaa00;
        }
        
        .ascii-art {
            color: #00ff00;
            font-size: 12px;
            line-height: 1.2;
            margin: 20px 0;
        }
        
        .cursor {
            display: inline-block;
            width: 8px;
            height: 16px;
            background: #00ff00;
            margin-left: 5px;
            animation: blink 1s infinite;
        }
        
        @keyframes typing {
            from { width: 0; }
            to { width: 100%; }
        }
        
        @keyframes fadeIn {
            to { opacity: 1; }
        }
        
        @keyframes blink {
            0%, 100% { opacity: 1; }
            50% { opacity: 0; }
        }
        
        .footer {
            text-align: center;
            margin-top: 30px;
            color: #666;
            font-size: 12px;
            border-top: 1px solid #333;
            padding-top: 15px;
        }
    </style>
</head>
<body>
    <div class="terminal">
        <div class="terminal-header">
            <div class="terminal-buttons">
                <div class="terminal-button button-red"></div>
                <div class="terminal-button button-yellow"></div>
                <div class="terminal-button button-green"></div>
            </div>
            <div class="terminal-title">
                devops-deployment@valaxy: ~/project
            </div>
        </div>
        
        <div class="terminal-body">
            <div class="command-line">
                <span class="prompt">$</span>
                <span class="command">echo "DevOps Deployment Status"</span>
            </div>
            
            <div class="output">
                <div class="output-line">
                    <span class="info">=== DevOps Deployment Dashboard ===</span>
                </div>
                
                <div class="output-line">
                    <span class="highlight">Hello, Welcome to Simple DevOps Project !!</span>
                </div>
                
                <div class="output-line">
                    <span class="warning">» Deploying on Kubernetes using Ansible</span>
                </div>
                
                <div class="output-line">
                    <span class="info">Client: Valaxy Technologies</span>
                </div>
                
                <div class="output-line">
                    <span class="success">✓ Glad to see you here !</span>
                </div>
                
                <div class="output-line">
                    <span class="info">=========================================</span>
                </div>
            </div>
            
            <div class="ascii-art">
 ██████╗ ███████╗██╗   ██╗ ██████╗ ██████╗ ███████╗<br>
██╔═══██╗██╔════╝██║   ██║██╔═══██╗██╔══██╗██╔════╝<br>
██║   ██║█████╗  ██║   ██║██║   ██║██████╔╝███████╗<br>
██║   ██║██╔══╝  ╚██╗ ██╔╝██║   ██║██╔═══╝ ╚════██║<br>
╚██████╔╝███████╗ ╚████╔╝ ╚██████╔╝██║     ███████║<br>
 ╚═════╝ ╚══════╝  ╚═══╝   ╚═════╝ ╚═╝     ╚══════╝
            </div>
            
            <div class="command-line">
                <span class="prompt">$</span>
                <span class="command">system_status --check</span>
                <div class="cursor"></div>
            </div>
            
            <div class="output">
                <div class="output-line">
                    <span class="success">✓ Kubernetes Cluster: ONLINE</span>
                </div>
                <div class="output-line">
                    <span class="success">✓ Ansible Controller: ACTIVE</span>
                </div>
                <div class="output-line">
                    <span class="success">✓ Deployment Pipeline: RUNNING</span>
                </div>
                <div class="output-line">
                    <span class="success">✓ All Services: HEALTHY</span>
                </div>
            </div>
            
            <div class="footer">
                Automated DevOps Pipeline | Valaxy Technologies | Type 'help' for commands
            </div>
        </div>
    </div>
    
    <script>
        // Simulate typing effect for commands
        document.addEventListener('DOMContentLoaded', function() {
            const commands = document.querySelectorAll('.command');
            commands.forEach((cmd, index) => {
                const text = cmd.textContent;
                cmd.textContent = '';
                let i = 0;
                
                function typeWriter() {
                    if (i < text.length) {
                        cmd.textContent += text.charAt(i);
                        i++;
                        setTimeout(typeWriter, 50);
                    }
                }
                
                setTimeout(typeWriter, index * 2500);
            });
        });
    </script>
</body>
</html>
