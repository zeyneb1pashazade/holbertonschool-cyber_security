# Advanced Port Scanning with Nmap

## 📌 Overview
This project focuses on understanding and applying **advanced port scanning techniques** using Nmap. Port scanning is a fundamental skill in cybersecurity used to discover open ports, services, and potential vulnerabilities in a target system.

The goal is to move beyond basic scans and explore **stealth, evasion, and firewall analysis techniques**.

---

## 🎯 Learning Objectives

By completing this project, you should be able to:

- Use Nmap for advanced port scanning
- Understand different types of advanced scans
- Explain how advanced scans work internally
- Identify what information can be extracted from scans
- Understand real-world use cases of port scanning
- Compare standard vs advanced scanning techniques
- Analyze firewall behavior using scans
- Secure systems by identifying exposed ports

---

## 🔍 What is Port Scanning?

Port scanning is the process of sending packets to a target system to discover:
- Open ports
- Running services
- System responses
- Security configurations

---

## ⚙️ Standard vs Advanced Nmap Scans

| Feature | Standard Scan | Advanced Scan |
|--------|-------------|--------------|
| Complexity | Low | High |
| Detection Risk | High | Lower (stealth techniques) |
| Firewall Evasion | No | Yes |
| Information Depth | Basic | Detailed |

---

## 🚀 How to Use Nmap for Advanced Port Scans

Common advanced Nmap commands:

```bash
nmap -sS target        # SYN Scan (stealth scan)
nmap -sT target        # TCP Connect Scan
nmap -sA target        # ACK Scan (firewall analysis)
nmap -sF target        # FIN Scan
nmap -sN target        # NULL Scan
nmap -sX target        # Xmas Scan
nmap -f target         # Fragmented packets
nmap -p- target        # Scan all ports
