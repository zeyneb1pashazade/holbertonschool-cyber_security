# Active Reconnaissance – Cyber Security Part 1

This README file explains the purpose, core concepts, tools, and methodology used in the **Active Reconnaissance** project. The project targets the machine **cyber_netsec_0x02** and is part of the Cyber Security specialization.

---

## Project Objective

The main goal of this project is to understand and practice **active reconnaissance** techniques used during the early stages of a cyber attack or penetration test. By the end of this project, you should be able to explain the following concepts without external help:

* What is active reconnaissance?
* Why is active reconnaissance important in cyber security?
* How can Wappalyzer be used for active reconnaissance?
* What is DNS enumeration?
* How to enumerate SMTP services using command-line tools?
* How to perform OS fingerprinting?
* What is SQLMap and how is it used?

---

## What is Active Reconnaissance?

**Active reconnaissance** is the process of directly interacting with a target system to gather information. Unlike passive reconnaissance, it involves sending packets or requests to the target, which may be logged or detected.

Information commonly gathered includes:

* Open ports
* Running services
* Operating system details
* Web technologies and frameworks

---

## Why is Active Reconnaissance Important?

Active reconnaissance helps to:

* Identify the attack surface
* Discover exposed services and vulnerabilities
* Choose appropriate attack vectors
* Understand the target environment

It is a critical step in both offensive security (penetration testing) and defensive security (hardening systems).

---

## Tools Used

### Ping

Used to verify network connectivity and host availability.

### Traceroute

Displays the path packets take to reach the target host.

### Nmap

A powerful network scanning tool used to:

* Discover open ports
* Detect running services
* Perform OS fingerprinting

### Telnet & Netcat

Used for:

* Manual service interaction
* Banner grabbing
* SMTP enumeration

### Wappalyzer

A web technology fingerprinting tool used to identify:

* Web servers
* Frameworks
* CMS platforms
* Client-side libraries

### SQLMap

**SQLMap** is an automated SQL injection tool.

Capabilities include:

* Detecting SQL injection vulnerabilities
* Enumerating databases
* Dumping tables and data

---

## DNS Enumeration

DNS enumeration is the process of gathering DNS-related information about a domain, such as:

* Subdomains
* Name servers
* Mail servers (MX records)

This information can reveal additional attack vectors.

---

## SMTP Enumeration

SMTP enumeration is used to:

* Identify valid users
* Analyze mail server behavior

Command-line tools like **telnet** and **netcat** are commonly used for this purpose.

---

## OS Fingerprinting

OS fingerprinting is the technique used to determine the operating system running on the target machine.

This is typically done by analyzing:

* TCP/IP stack behavior
* TTL values
* Nmap scan results

---

## Tasks Overview

The project tasks are designed to be completed sequentially and include:

1. Discovering open ports
2. Inspecting web applications
3. Performing manual analysis
4. Identifying injection points
5. Using SQLMap for automated attacks
6. Discovering hidden pages and endpoints

---

## Technical Requirements

* Operating System: Kali Linux
* Allowed editors: vi, vim, emacs
* All scripts must be exactly one line long
* All files must end with a newline
* A README.md file is mandatory

---

## Conclusion

This project provides hands-on experience with active reconnaissance techniques commonly used in real-world cyber security scenarios. The knowledge gained here forms a strong foundation for penetration testing and network security analysis.

---

✍️ **Author:** Zeyneb Pashazade
