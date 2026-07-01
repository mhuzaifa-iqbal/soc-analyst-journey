# Day 52 - Splunk SIEM Investigation Lab

## What I Did
- Installed Splunk Enterprise on Windows
- Uploaded sample authentication log file
- Ran SPL queries to investigate suspicious activity
- Detected a confirmed brute force attack using log analysis

## SPL Queries Used
index=main action=failed_login
index=main action=failed_login | stats count by src_ip
index=main src_ip="10.0.0.5"

## What I Found
- IP 10.0.0.5 had 5 failed logins between 03:00:01 and 03:00:05
- Same IP had a successful login at 03:00:06
- Verdict: Confirmed brute force attack, attacker gained access

## Escalation
- Block IP 10.0.0.5
- Lock admin account immediately
- Escalate to L2 analyst for deeper investigation

## Tools Used
- Splunk Enterprise (free trial)
- Sample authentication log file

## Difficulty
Medium
