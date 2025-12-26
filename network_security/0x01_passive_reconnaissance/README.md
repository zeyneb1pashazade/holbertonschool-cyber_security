# 🌐 Reconnaissance and DNS Basics – README

This README explains **servers, DNS, and reconnaissance** in a way that after completing the project, you can explain it to anyone **without using Google**.

---

## 1️⃣ What can we learn about a server?

Information you can gather about a server:

* Open ports (e.g., 22, 80, 443)
* Running services (SSH, HTTP, FTP, etc.)
* Service versions
* Server IP address
* Response time (latency)

This information is usually collected during the **reconnaissance** phase.

---

## 2️⃣ What is a DNS server?

A **DNS (Domain Name System) server** converts domain names (e.g., google.com) into **IP addresses**.

Simply put:

> DNS = the internet's phonebook

---

## 3️⃣ What happens when we type [www.holbertonschool.com](http://www.holbertonschool.com) and press ENTER?

Step by step:

1. The browser queries a DNS server for the IP address
2. The DNS server returns the IP
3. The browser sends an HTTP/HTTPS request to the IP
4. The server responds with the webpage
5. The browser displays the webpage to the user

---

## 4️⃣ How can we find the owner information for a domain name?

Use **whois**:

```bash
whois example.com
```

It provides:

* Domain owner
* Registrar
* Registration date
* Technical and administrative contacts

---

## 5️⃣ What is dig?

**dig (Domain Information Groper)** is a tool for getting **detailed DNS information** from DNS servers.

```bash
dig example.com
```

Features:

* Very detailed
* Professional tool
* Passive reconnaissance

---

## 6️⃣ What is nslookup?

**nslookup** is a simpler DNS lookup tool.

```bash
nslookup example.com
```

Difference:

* nslookup → simple
* dig → more detailed

---

## 7️⃣ Types of DNS Records

| Record | Purpose                          |
| ------ | -------------------------------- |
| A      | Domain → IPv4 address            |
| AAAA   | Domain → IPv6 address            |
| MX     | Mail server                      |
| CNAME  | Alias (points to another domain) |
| TXT    | Text / verification information  |
| NS     | Name servers                     |

---

## 8️⃣ What is DNS Dumpster?

**DNSDumpster** is an online passive reconnaissance tool that shows:

* Subdomains
* DNS records
* Host and IP information visually

---

## 9️⃣ What is Shodan.io?

**Shodan** is a search engine for **internet-connected devices** like servers, cameras, routers, and IoT devices.

Shodan can reveal:

* Open ports
* Running services
* OS and versions

📌 Very powerful **passive reconnaissance** tool.

---

## 🔟 How can we find subdomains?

A subdomain is a subdivision of the main domain, e.g.:

* mail.example.com
* dev.example.com

Ways to find subdomains:

* dig / nslookup
* Google dorks
* Online tools
* Specialized tools (e.g., subfinder)

---

## 1️⃣1️⃣ What is subfinder?

**subfinder** is a CLI tool for **subdomain discovery**.

```bash
subfinder -d example.com
```

Features:

* Fast
* Passive reconnaissance
* OSINT-based

---

## 1️⃣2️⃣ Difference between Active and Passive Reconnaissance

### 🟢 Passive Reconnaissance

* No direct interaction with the target
* Leaves no trace
* OSINT-based

Examples:

* whois
* dig
* nslookup
* Google
* Shodan

### 🔴 Active Reconnaissance

* Direct interaction with the target
* Leaves traces
* Higher risk

Examples:

* nmap scans
* Brute-force attacks
* Exploit testing

---

## ✅ Summary

Understanding these topics helps you know:

* How servers work
* How DNS works
* How reconnaissance is performed

These are **fundamental cybersecurity concepts**.

