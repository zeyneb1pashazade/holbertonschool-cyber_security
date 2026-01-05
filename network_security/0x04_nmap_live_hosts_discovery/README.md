# Nmap (Network Mapper) – Linux README

## 📌 Overview

**Nmap (Network Mapper)** is a powerful open-source tool used for **network discovery**, **port scanning**, **service detection**, and **security auditing**.
It is widely used by system administrators, penetration testers, and cybersecurity professionals.

Nmap works on most Linux distributions and supports both simple and advanced scanning techniques.

---

## 🐧 Installation on Linux

### Debian / Ubuntu

```bash
sudo apt update
sudo apt install nmap
```

### Arch Linux

```bash
sudo pacman -S nmap
```

### Red Hat / CentOS / Rocky

```bash
sudo dnf install nmap
```

### Verify installation

```bash
nmap --version
```

---

## ⚙️ Core Features

* Host discovery (find live hosts)
* Port scanning (TCP/UDP)
* Service & version detection
* Operating system detection
* Firewall & IDS evasion
* Scriptable scans using NSE (Nmap Scripting Engine)
* IPv4 & IPv6 support

---

## 🔍 Basic Usage

```bash
nmap <target>
```

Examples:

```bash
nmap 192.168.1.1
nmap example.com
```

---

## 🧠 Scan Types (`-s` options)

### TCP Scan Types

| Option | Name             | Description                    |
| ------ | ---------------- | ------------------------------ |
| `-sS`  | TCP SYN Scan     | Stealth scan, default for root |
| `-sT`  | TCP Connect Scan | Full TCP connection            |
| `-sA`  | ACK Scan         | Firewall rule detection        |
| `-sW`  | Window Scan      | Advanced ACK-based scan        |
| `-sM`  | Maimon Scan      | Rare, firewall analysis        |

Example:

```bash
sudo nmap -sS 192.168.1.1
```

---

### UDP Scan

| Option | Description    |
| ------ | -------------- |
| `-sU`  | Scan UDP ports |

Example:

```bash
sudo nmap -sU 192.168.1.1
```

---

### Other Scan Types

| Option | Description   |
| ------ | ------------- |
| `-sN`  | TCP Null scan |
| `-sF`  | TCP FIN scan  |
| `-sX`  | Xmas scan     |

Example:

```bash
sudo nmap -sX target.com
```

---

## 🎯 Port Selection Arguments

| Option            | Description          |
| ----------------- | -------------------- |
| `-p 80`           | Scan specific port   |
| `-p 1-1000`       | Scan port range      |
| `-p-`             | Scan all 65535 ports |
| `--top-ports 100` | Scan top 100 ports   |

Example:

```bash
nmap -p 22,80,443 target.com
```

---

## 🧪 Service & Version Detection

```bash
nmap -sV target.com
```

Detects:

* Running service
* Service version
* Application name

---

## 🖥️ OS Detection

```bash
sudo nmap -O target.com
```

---

## 📜 NSE Scripts

Run default scripts:

```bash
nmap -sC target.com
```

Run specific script:

```bash
nmap --script=http-enum target.com
```

List scripts:

```bash
ls /usr/share/nmap/scripts/
```

---

## 🧰 Useful Arguments

| Option   | Description                            |
| -------- | -------------------------------------- |
| `-A`     | Aggressive scan (OS, version, scripts) |
| `-Pn`    | Skip host discovery                    |
| `-n`     | Disable DNS resolution                 |
| `-v`     | Verbose output                         |
| `-vv`    | Very verbose                           |
| `--open` | Show only open ports                   |

Example:

```bash
nmap -A -Pn target.com
```

---

## 📤 Output Formats

| Option | Format      |
| ------ | ----------- |
| `-oN`  | Normal      |
| `-oX`  | XML         |
| `-oG`  | Grepable    |
| `-oA`  | All formats |

Example:

```bash
nmap -oA scan_results target.com
```

---

## ⚠️ Legal Notice

Only scan systems **you own** or **have explicit permission** to test. Unauthorized scanning may be illegal.

---

## 📚 Resources

* Official website: [https://nmap.org](https://nmap.org)
* Documentation: [https://nmap.org/docs.html](https://nmap.org/docs.html)


