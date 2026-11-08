# TEST-004 — Live ICMP rate detection

**Objective:** Confirm the Snort 3 sensor can inspect live ICMP traffic and alert on both individual echo requests and elevated request rates.

## Environment

| Component | Configuration |
|---|---|
| LAB-CLIENT-1 | Docker, `10.10.10.10` |
| WEB-SERVER-1 | Docker/Nginx, `10.10.10.20` |
| IDS sensor | Ubuntu VM, Snort 3.12.4.0 |
| Monitoring interface | `enp0s8` |
| Rules | `1000001` rev 1 and `1000002` rev 2 |

## Test procedure

1. Verify ping and HTTP connectivity.
2. Verify the sensor's tcpdump capture sees client-to-server requests and replies.
3. Start Snort with the local rules, live `enp0s8`, `alert_fast`, and file logging.
4. Run `ping -c 30 -i 0.1 10.10.10.20` from LAB-CLIENT-1.
5. Stop Snort and count signature IDs in the saved alert file.

## Verified observations

| Measurement | Value |
|---|---:|
| Requests / replies | 30 / 30 |
| Packet loss | 0% |
| LAB-001 alerts | 30 |
| LAB-002 alerts | 25 |
| Combined logged alerts | 55 |

The counts were confirmed in the original screenshots showing `grep -c` against `alert_fast.txt`. The actual raw alert file and PCAP are **not yet published**.

## Interpretation and limitations

Both live signatures triggered, and the rate alert counted 25 matching events in the controlled 30-request run. This is evidence of **rate-based detection**, not a successful denial-of-service or an asserted number of distinct attacks. No production false-positive evaluation, server degradation measurement, or mitigation test was performed.
