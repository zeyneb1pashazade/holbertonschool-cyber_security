# 🛰 Passive Reconnaissance Report

---

## 🎯 Target: **holbertonschool.com**

**Tool Used:** Shodan
**Reconnaissance Type:** Passive (OSINT)

---

## 1. Executive Summary

This report documents the findings of a **passive reconnaissance (OSINT)** assessment conducted against the domain **holbertonschool.com** using **Shodan**.
The purpose of this activity was to collect publicly available information without interacting directly with the target infrastructure.

The objectives of this reconnaissance included:

* Identifying publicly exposed IP addresses
* Determining IP ranges associated with the domain
* Discovering subdomains visible through passive sources
* Enumerating technologies, services, and frameworks in use
* Analyzing SSL/TLS configurations

All data presented in this report was gathered using **non-intrusive techniques**, in accordance with passive reconnaissance principles.

---

## 2. Methodology

The following Shodan-based passive reconnaissance techniques were employed:

* Reverse DNS lookups
* SSL/TLS certificate analysis
* HTTP banner and service inspection
* Infrastructure metadata analysis (ASN, cloud provider, geolocation)

### Example Shodan Queries:

```text
hostname:holbertonschool.com
ssl.cert.subject.cn:holbertonschool.com
```

---

## 3. Identified IP Addresses & Infrastructure

### 3.1 Public IP Addresses

| IP Address        | Reverse DNS                                       | Cloud Provider | ASN Owner                   | Location      |
| ----------------- | ------------------------------------------------- | -------------- | --------------------------- | ------------- |
| **35.180.27.154** | ec2-35-180-27-154.eu-west-3.compute.amazonaws.com | Amazon AWS     | Amazon Data Services France | Paris, France |
| **52.47.143.83**  | ec2-52-47-143-83.eu-west-3.compute.amazonaws.com  | Amazon AWS     | Amazon Data Services France | Paris, France |

These IP addresses indicate that the target infrastructure is hosted on **Amazon Web Services (AWS)** within the **eu-west-3 (Paris)** region.

---

### 3.2 IP Ranges (Inferred)

Based on the identified IP addresses and their ASN ownership, the following CIDR ranges are inferred:

```text
35.180.0.0/16
52.47.0.0/16
```

> These IP ranges belong to **AWS EC2** and are commonly used for cloud-hosted web services.

---

## 4. Subdomains Identified

Using SSL certificate analysis and hostname inspection, the following subdomain was identified:

```text
yriry2.holbertonschool.com
```

This subdomain appears to host internal or forum-related content and is publicly accessible over HTTPS.

---

## 5. Services & Technologies Detected

### 5.1 Web Services Overview

| Host                       | Port | Protocol | HTTP Status | Redirect                                                                   |
| -------------------------- | ---- | -------- | ----------- | -------------------------------------------------------------------------- |
| 35.180.27.154              | 80   | HTTP     | 301         | → [http://holbertonschool.com](http://holbertonschool.com)                 |
| 52.47.143.83               | 80   | HTTP     | 301         | → [https://yriry2.holbertonschool.com](https://yriry2.holbertonschool.com) |
| yriry2.holbertonschool.com | 443  | HTTPS    | 200         | None                                                                       |

HTTP traffic is redirected using **301 Moved Permanently**, indicating enforced canonical URLs and HTTPS usage.

---

### 5.2 Web Server & Frameworks

| Component         | Detected Technology |
| ----------------- | ------------------- |
| Web Server        | nginx               |
| nginx Versions    | 1.18.0, 1.21.6      |
| Operating System  | Ubuntu              |
| Hosting Platform  | AWS EC2             |
| Redirect Handling | HTTP 301            |

---

## 6. SSL / TLS Analysis

### SSL Certificate Details

| Field                  | Value                      |
| ---------------------- | -------------------------- |
| Issuer                 | Let’s Encrypt              |
| Certificate Type       | Domain Validated (DV)      |
| Common Name (CN)       | yriry2.holbertonschool.com |
| Supported TLS Versions | TLSv1.2, TLSv1.3           |

The use of **Let’s Encrypt** certificates and support for **modern TLS versions** demonstrates adherence to current encryption standards.

---

## 7. HTTP Security Headers Observed

Observed on `yriry2.holbertonschool.com`:

| Header                 | Value      |
| ---------------------- | ---------- |
| X-Frame-Options        | SAMEORIGIN |
| X-XSS-Protection       | 0          |
| X-Content-Type-Options | nosniff    |
| X-Download-Options     | noopen     |

> ⚠ The `X-XSS-Protection: 0` header disables browser-based XSS filtering and may warrant further review.

---

## 8. Observations & Analysis

* The infrastructure of Holberton School is hosted on **AWS EC2 (eu-west-3 / Paris)**.
* **nginx** is consistently used as the primary web server.
* HTTP traffic is properly redirected to HTTPS using permanent redirects.
* TLS configuration supports modern and secure encryption protocols.
* At least one publicly accessible subdomain appears to serve internal or community-related content.

---

## 9. Security Posture Assessment

### Positive Findings

✅ HTTPS enforced
✅ TLS 1.2 and TLS 1.3 supported
✅ Reputable cloud provider (AWS)
✅ Proper HTTP redirection practices

### Potential Improvements

⚠ Review and adjust XSS protection headers
⚠ Assess necessity and exposure of discovered subdomains
⚠ Reduce informational disclosure in HTTP banners where possible

---

## 10. Conclusion

This passive reconnaissance assessment indicates that **holbertonschool.com** operates a modern, cloud-based infrastructure with strong transport-layer security practices.
All observations were made using publicly available data, without active probing or exploitation, in line with passive reconnaissance methodologies.

---

## 11. References

* Shodan Search Engine — [https://www.shodan.io](https://www.shodan.io)
* Amazon Web Services (AWS) EC2 Documentation
* Let’s Encrypt Documentation

---

**Prepared by:**
**Zeyneb Pashazade**
