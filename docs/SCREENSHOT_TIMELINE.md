# GNS3 / Snort 3 Lab — Screenshot Timeline and Publication Audit

**Scope:** 151 screenshot files extracted from the archived lab conversation. Entries describe the visible state of each screenshot and the immediate troubleshooting or validation purpose. The screenshot filename time stamp is used to order events; it is not independent proof of the date/time the underlying task was completed.

## Security review

**Two screenshots originally exposed plaintext VirtualBox setup passwords:** screenshot **030** and **031**. Their password and confirmation fields have been permanently obscured in this PUBLICATION copy. Do not publish the original unredacted archive. Change any credentials that are still in use or reused elsewhere.

Other screenshots contain **internal/private lab IP addresses**, machine/user names and local file paths. These are useful for context but may reveal personal workstation metadata. A visual review cannot guarantee that every tiny on-screen detail has been identified; perform a final manual review before posting publicly. No raw credentials, certificates, access tokens, or API keys were otherwise evident at the reviewed contact-sheet scale.

**Scope disclaimer:** No external accounts, live systems, network services or local files beyond these screenshots were checked. This is a screenshot-only security review, not a formal security audit.

## Overall lab timeline

| Screenshot range | Phase | What changed |
|---|---|---|
| 001–026 | GNS3 network foundation | Docker client and Nginx server, IP configuration, initial traffic |
| 027–045 | Ubuntu VM installation | VirtualBox guest build, installer, first boot |
| 046–067 | Snort build | Dependencies, compilation, verified executable |
| 068–082 | Rules and baseline | Rule editing, SSH/PCAP transfer, baseline detection |
| 083–101 | Networking resilience | Restart errors, persistent network settings, retesting |
| 102–115 | Host capture recovery | Wireshark/Npcap repair and Dynamips verification |
| 116–124 | Offline high-rate detection | Rule validation, PCAP replay, threshold tuning |
| 125–140 | Sensor integration | GNS3 VirtualBox template, hub, promiscuous NIC |
| 141–151 | Live test | tcpdump, live Snort, 30/25 alert counts |

## Every screenshot — annotated chronology

> **Image upload status:** 141 of the 151 reviewed PNG files are published under `screenshots/` in date-based folders. The 10 missing screenshots are entries **005–014** from October 15, 2026. Their entries remain documented here but their images are not yet available on GitHub.



### 01 — GNS3 network foundation

**001 — `image(20261015-203545).png`** — Docker engine version check on the GNS3 VM. **Why:** Verify container support before choosing Docker-backed test endpoints.

**002 — `image(20261015-230423).png`** — GNS3 Docker template creation error. **Why:** Capture the initial failure to register a Docker image in GNS3.

**003 — `image(20261015-230648).png`** — GNS3 VM preferences. **Why:** Review VM resources and integration settings while troubleshooting Docker templates.

**004 — `image(20261015-230902).png`** — PowerShell reachability test of GNS3 VM port 80. **Why:** Distinguish host-to-VM connectivity from application/API failures.

**005 — `image(20261015-230942).png`** — HTTP request returning Not Found. **Why:** Confirm basic reachability while discovering that the requested API route is wrong.

**006 — `image(20261015-231152).png`** — GNS3 API version request. **Why:** Check server API response to narrow down endpoint troubleshooting.

**007 — `image(20261015-231257).png`** — GNS3 application version dialog. **Why:** Document the precise GNS3 release used in the lab.

**008 — `image(20261015-231408).png`** — GNS3 local server settings. **Why:** Inspect local host and port settings for server communication.

**009 — `image(20261015-231503).png`** — Unauthorized local API response. **Why:** Identify an authentication or server-context mismatch.

**010 — `image(20261015-231542).png`** — GNS3 server status indicator. **Why:** Verify both the local machine and GNS3 VM compute servers are connected.

**011 — `image(20261015-231827).png`** — Alpine Docker image selection. **Why:** Choose a lightweight Linux client container template.

**012 — `image(20261015-232708).png`** — LAB-CLIENT interface inspection. **Why:** Check container interfaces before assigning the lab IPv4 subnet.

**013 — `image(20261015-232828).png`** — LAB-CLIENT static IP assignment. **Why:** Configure client eth0 as 10.10.10.10/24 and verify its address.

**014 — `image(20261015-233233).png`** — Node placement server selector. **Why:** Choose the appropriate GNS3 compute server when adding nodes.

**015 — `image(20261016-003600).png`** — Initial client-to-server ping result. **Why:** Confirm packets can traverse the initial virtual network path.

**016 — `image(20261016-003830).png`** — Docker process listing on GNS3 VM. **Why:** Check that the client and web server containers exist and are running.

**017 — `image(20261016-004113).png`** — Nginx container shell inspection. **Why:** Inspect the web-server image and identify available network commands.

**018 — `image(20261016-004232).png`** — Web-server static IP assignment. **Why:** Configure WEB-SERVER eth0 with 10.10.10.20/24.

**019 — `image(20261016-004415).png`** — Nginx configuration and BusyBox wget usage. **Why:** Check the HTTP service and learn the container's available client commands.

**020 — `image(20261016-004747).png`** — ICMP success with HTTP initially unreachable. **Why:** Identify that layer-3 reachability does not yet guarantee an HTTP connection.

**021 — `image(20261016-004914).png`** — Original switch-based GNS3 topology. **Why:** Document the first working client–switch–server network architecture.

**022 — `image(20261016-005110).png`** — Additional web-server console checks. **Why:** Investigate the HTTP test and network settings before continuing.

**023 — `image(20261016-012845).png`** — Wireshark capture from the initial lab. **Why:** Inspect packets between Docker endpoints before adding the dedicated IDS.

**024 — `image(20261016-013738).png`** — Nginx container runtime checks. **Why:** Review web-service and container runtime output during service troubleshooting.

**025 — `image(20261016-014016).png`** — VirtualBox nested-virtualization setting. **Why:** Inspect VM CPU virtualization support for the GNS3 environment.

**026 — `image(20261016-014307).png`** — Windows hypervisor/VBS system checks. **Why:** Troubleshoot nested virtualization and security settings on the Windows host.


### 02 — Ubuntu VM installation

**027 — `Screenshot 2026-11-02 220946.png`** — PCAP transfer from Windows to Ubuntu via SCP. **Why:** Move captured evidence into the sensor system for offline analysis.

**028 — `image(20261102-175007).png`** — Ubuntu Server download page. **Why:** Select the operating system image for the Snort VM.
**029 — `image(20261102-221351).png`** — VirtualBox new-VM configuration. **Why:** Define the Snort VM name, operating system, and installation image.

**030 — `image(20261102-221628).png`** — VirtualBox unattended-setup credentials screen. **Why:** Document an early VM setup screen; password fields are redacted for publication. **Publication:** password redacted.

**031 — `image(20261102-223057).png`** — Revised VirtualBox guest-setup credentials screen. **Why:** Document the corrected VM setup values; password fields are redacted for publication. **Publication:** password redacted.

**032 — `image(20261102-223106).png`** — VirtualBox CPU and memory allocation. **Why:** Choose hardware resources for the Ubuntu sensor VM.

**033 — `image(20261102-223114).png`** — VirtualBox virtual disk allocation. **Why:** Set up the VM's storage before installation.

**034 — `image(20261102-224857).png`** — Ubuntu installer installation-method screen. **Why:** Begin installing Ubuntu Server in the virtual machine.

**035 — `image(20261102-224925).png`** — Ubuntu installer network interface configuration. **Why:** Review the guest NIC detected by Ubuntu during initial setup.

**036 — `image(20261102-225009).png`** — Ubuntu installer proxy configuration. **Why:** Leave or inspect outbound package proxy settings.

**037 — `image(20261102-225128).png`** — Ubuntu package mirror selection. **Why:** Configure the mirror used to install Ubuntu packages.

**038 — `image(20261102-225209).png`** — Ubuntu installer disk-layout selection. **Why:** Choose a virtual disk layout for Ubuntu Server.

**039 — `image(20261102-225348).png`** — Ubuntu storage layout summary. **Why:** Review partitions and filesystem changes.

**040 — `image(20261102-225507).png`** — Ubuntu storage confirmation prompt. **Why:** Confirm formatting of the new isolated virtual disk.

**041 — `image(20261102-225539).png`** — Ubuntu profile configuration form. **Why:** Reach the account and hostname setup stage; fields are blank in this capture.

**042 — `image(20261102-225912).png`** — Ubuntu SSH server option. **Why:** Inspect optional OpenSSH installation during setup.

**043 — `image(20261102-230047).png`** — Ubuntu installer SSH options review. **Why:** Review the SSH-access settings before proceeding.

**044 — `image(20261102-230116).png`** — Ubuntu optional-server package selection. **Why:** Inspect add-on workloads; keep the sensor installation focused.

**045 — `image(20261102-230232).png`** — Ubuntu installer featured snaps selection. **Why:** Review optional Ubuntu services without assuming they were installed.


### 03 — Snort 3 build and dependencies

**046 — `image(20261102-231721).png`** — Ubuntu installation terminal output. **Why:** Check post-install setup and first-boot environment.

**047 — `image(20261102-231943).png`** — Ubuntu package/command inspection. **Why:** Troubleshoot commands and dependency availability after installation.

**048 — `image(20261102-232223).png`** — Ubuntu server setup and administrative commands. **Why:** Verify initial Ubuntu configuration after first boot.

**049 — `image(20261102-232429).png`** — Ubuntu package installation progress. **Why:** Install prerequisite packages used by the Snort build workflow.

**050 — `image(20261102-232630).png`** — Ubuntu dependency troubleshooting output. **Why:** Inspect missing build dependencies during installation.

**051 — `image(20261102-233001).png`** — Ubuntu command output during compilation setup. **Why:** Diagnose library prerequisites for Snort source compilation.

**052 — `image(20261102-233236).png`** — VirtualBox snapshot manager for Ubuntu baseline. **Why:** Document a restore point before major Snort software changes.

**053 — `image(20261102-233915).png`** — Ubuntu build dependencies and package checks. **Why:** Inspect installed libraries needed to compile Snort 3.

**054 — `image(20261102-234509).png`** — APT update and missing package name. **Why:** Identify an unavailable libpcre package variant and adjust prerequisites.

**055 — `image(20261102-235526).png`** — CMake version and library discovery checks. **Why:** Validate the build system and discover missing libpcre2 development metadata.

**056 — `image(20261103-000056).png`** — Snort build prerequisite terminal output. **Why:** Continue diagnosing missing libraries and source dependencies.

**057 — `image(20261103-000342).png`** — Ubuntu compilation setup commands. **Why:** Run prerequisite checks before building the source code.

**058 — `image(20261103-000823).png`** — Dependency build output and errors. **Why:** Identify compilation obstacles during the first build attempt.

**059 — `image(20261103-001159).png`** — Revised dependency build output. **Why:** Confirm progress on resolving prerequisite library issues.

**060 — `image(20261103-001210).png`** — Repeated build configuration diagnostic. **Why:** Inspect continuing configure or linker errors.

**061 — `image(20261103-001444).png`** — Detailed configure output. **Why:** Find the cause of the source build failure.

**062 — `image(20261103-001853).png`** — Build log highlighting failed prerequisite. **Why:** Locate the failure in the build stage before retrying.

**063 — `image(20261103-002038).png`** — APT package verification for a dependency. **Why:** Re-check installed development headers and libraries.

**064 — `image(20261103-002512).png`** — Snort source configure summary. **Why:** Review the configured build options and dependencies.

**065 — `image(20261103-002543).png`** — Snort source compilation progress. **Why:** Observe source files compiling after prerequisite fixes.

**066 — `image(20261103-003415).png`** — Extended compilation output. **Why:** Track successful progression through the Snort build.

**067 — `image(20261103-003655).png`** — Snort version confirmation. **Why:** Verify that the compiled Snort 3 executable runs.


### 04 — Rules, SSH and offline baseline

**068 — `image(20261103-003729).png`** — Snort CLI options and mode overview. **Why:** Inspect supported commands and options for later testing.

**069 — `image(20261103-003823).png`** — Initial local ICMP rule configuration. **Why:** Begin building custom signature content for the isolated lab.

**070 — `image(20261103-004408).png`** — Nano editor with the local rule file. **Why:** Review rule syntax before attempting configuration validation.
**071 — `image(20261103-004519).png`** — Snort rule file output in terminal. **Why:** Confirm custom detection rules were saved to disk.

**072 — `image(20261103-004706).png`** — Snort rule/configuration validation result. **Why:** Check that the configured rules can be loaded successfully.

**073 — `image(20261103-004936).png`** — VirtualBox Adapter 1 NAT networking settings. **Why:** Review management-network access to the Ubuntu VM.

**074 — `image(20261103-005031).png`** — VirtualBox NAT port-forward rule. **Why:** Set local SSH forwarding from Windows port 2222 to Ubuntu port 22.

**075 — `image(20261103-005412).png`** — Ubuntu interface and package state. **Why:** Verify network addressing and guest package availability.

**076 — `image(20261103-005635).png`** — Windows SCP command and file-transfer troubleshooting. **Why:** Resolve a missing local PCAP path and confirm copy syntax.

**077 — `image(20261103-005752).png`** — Windows-to-Ubuntu SCP transfer retry. **Why:** Diagnose path quoting and protocol arguments during capture transfer.

**078 — `image(20261103-005921).png`** — Ubuntu SSH session after transfer. **Why:** Confirm the transferred baseline PCAP is present in the guest home directory.

**079 — `image(20261103-010115).png`** — Wireshark package configuration prompt. **Why:** Review capture permissions during a Wireshark/tshark installation.

**080 — `image(20261103-012055).png`** — PCAP conversion utility verification. **Why:** Confirm editcap is available for capture format conversion.

**081 — `image(20261103-012235).png`** — Wireshark/Snort baseline validation results. **Why:** Review baseline ICMP rule output from packet-capture replay.

**082 — `image(20261103-012733).png`** — Snort baseline offline alert output. **Why:** Observe individual ICMP echo request alerts from saved traffic.


### 05 — Network persistence troubleshooting

**083 — `image(20261103-012950).png`** — GNS3 missing-node error after restart. **Why:** Identify lost or mismatched Docker node references following a restart.

**084 — `image(20261103-013358).png`** — GNS3 project topology after restart. **Why:** Inspect the surviving nodes and layout after the project error.

**085 — `image(20261103-013437).png`** — Second GNS3 topology view following node-recovery warning. **Why:** Confirm whether the client and server nodes remain visible after the warning.

**086 — `image(20261103-013629).png`** — LAB-CLIENT interface command output. **Why:** Verify whether the client retained its expected IP settings.

**087 — `image(20261103-013739).png`** — LAB-CLIENT restored static address. **Why:** Reconfigure or verify eth0 as 10.10.10.10/24.

**088 — `image(20261103-013932).png`** — GNS3 VM Docker process inventory. **Why:** Inspect container state and determine which nodes are active.

**089 — `image(20261103-014234).png`** — Further Docker inventory and client state. **Why:** Investigate persistence of the lab containers and addresses.

**090 — `image(20261103-014356).png`** — Re-established client-to-server connectivity and wget checks. **Why:** Verify basic functionality after the restart.

**091 — `image(20261103-014454).png`** — Client console network inspection. **Why:** Review the client network state while validating the rebuild.

**092 — `image(20261103-014703).png`** — GNS3 LAB-CLIENT node general settings. **Why:** Inspect the Docker template properties and node settings.

**093 — `image(20261103-014748).png`** — GNS3 LAB-CLIENT startup configuration. **Why:** Review the persistent network configuration field.

**094 — `image(20261103-014815).png`** — LAB-CLIENT network configuration editor. **Why:** Record the configuration used to persist static addressing.

**095 — `image(20261103-015116).png`** — Repeated LAB-CLIENT startup configuration review. **Why:** Check corrected configuration before saving.

**096 — `image(20261103-015153).png`** — Saved LAB-CLIENT network configuration. **Why:** Confirm the intended startup network parameters are present.

**097 — `image(20261103-015344).png`** — LAB-CLIENT reconnection console check. **Why:** Validate addressing after node restarts.

**098 — `image(20261103-015553).png`** — Docker process command error. **Why:** Correct command syntax when inspecting running containers.

**099 — `image(20261103-015945).png`** — Docker process list and exec troubleshooting. **Why:** Check container identifiers and run diagnostic commands.

**100 — `image(20261103-020126).png`** — GNS3 VM ping and wget syntax errors. **Why:** Identify that tests from the compute VM need different command syntax.

**101 — `image(20261103-020324).png`** — LAB-CLIENT network and HTTP diagnosis. **Why:** Compare client-to-server connectivity with service reachability.


### 06 — Packet capture recovery

**102 — `image(20261103-020423).png`** — GNS3 packet capture configuration dialog. **Why:** Configure packet capture on the Docker client’s Ethernet link.

**103 — `image(20261103-021837).png`** — Wireshark installation component choices. **Why:** Review required capture tools during Wireshark setup.

**104 — `image(20261103-023040).png`** — GNS3 restart in progress. **Why:** Document the restart prompted by packet-capture tooling changes.

**105 — `image(20261103-023228).png`** — Missing wpcap.dll error. **Why:** Identify the missing Windows packet-capture compatibility library.

**106 — `image(20261103-023349).png`** — GNS3 Dynamips version failure. **Why:** Trace a related GNS3 error to the broken packet-capture installation.

**107 — `image(20261103-023430).png`** — Windows Npcap service and DLL checks. **Why:** Check whether Npcap and WinPcap compatibility files are present.

**108 — `image(20261103-023444).png`** — PowerShell Npcap service diagnostics. **Why:** Confirm driver service status and missing compatibility files.

**109 — `image(20261103-023522).png`** — Windows Npcap compatibility setting check. **Why:** Inspect the WinPcap-compatible mode setting before repair.

**110 — `image(20261103-024739).png`** — Repeated GNS3 Dynamips error. **Why:** Document that Dynamips still cannot initialize prior to the fix.

**111 — `image(20261103-024853).png`** — Windows Npcap registry and DLL verification. **Why:** Confirm the compatibility flag and expected files after changing settings.

**112 — `image(20261103-025038).png`** — Npcap installation options. **Why:** Enable WinPcap API-compatible mode during Npcap repair.
**113 — `image(20261103-025338).png`** — Dynamips successful version check. **Why:** Verify the packet-capture compatibility repair restored Dynamips.

**114 — `image(20261103-025853).png`** — Recovered GNS3 project topology. **Why:** Confirm that GNS3 opens again with the lab nodes intact.

**115 — `image(20261103-030046).png`** — Client connectivity after recovery. **Why:** Validate that the virtual network functions after the Windows repair.


### 07 — Offline high-rate detection

**116 — `image(20261103-030337).png`** — Ubuntu Snort version and replay output. **Why:** Check Snort functionality after the host-side recovery.

**117 — `image(20261103-030452).png`** — Snort configuration validation summary. **Why:** Verify loaded rules and zero configuration warnings.

**118 — `image(20261103-030736).png`** — Wireshark high-rate ICMP packet view. **Why:** Examine the captured 30-request traffic in Wireshark.

**119 — `image(20261103-031032).png`** — Converted TEST-003 PCAP inspection. **Why:** Confirm editcap produced a standard PCAP containing the expected packets.

**120 — `image(20261103-032235).png`** — Snort replay command against TEST-003 capture. **Why:** Run the high-rate packet capture through the IDS rules.

**121 — `image(20261103-032318).png`** — Threshold rule test command. **Why:** Test a candidate detection_filter threshold for elevated ICMP.

**122 — `image(20261103-032331).png`** — Isolated LAB-002 threshold test rule. **Why:** Inspect a draft detection_filter rule used during tuning.

**123 — `image(20261103-032728).png`** — Nano rule editing during threshold tuning. **Why:** Adjust detection thresholds when early tests do not trigger.

**124 — `image(20261103-032852).png`** — Snort offline alerts after rule adjustment. **Why:** Confirm baseline echo-request alerts and evaluate rate-rule behavior.


### 08 — Snort sensor integration

**125 — `image(20261103-035831).png`** — VirtualBox sensor VM snapshot. **Why:** Preserve the validated Ubuntu/Snort environment before integration.

**126 — `image(20261103-035937).png`** — VirtualBox second adapter initial state. **Why:** Inspect whether the dedicated monitoring NIC is attached.

**127 — `image(20261103-035952).png`** — VirtualBox monitoring-adapter configuration. **Why:** Review changes to the dedicated sensor interface attachment.

**128 — `image(20261103-040152).png`** — GNS3 VirtualBox VM template creation. **Why:** Add the existing Snort VM as a GNS3 VirtualBox node.

**129 — `image(20261103-040240).png`** — GNS3 Snort VM template overview. **Why:** Inspect the imported VM template before using it.

**130 — `image(20261103-040408).png`** — GNS3 VirtualBox template network adapter settings. **Why:** Configure the sensor node with two virtual interfaces.

**131 — `image(20261103-040600).png`** — GNS3 sensor adapter mapping. **Why:** Verify Ethernet0 and Ethernet1 map to expected VirtualBox NICs.

**132 — `image(20261103-040639).png`** — GNS3 topology including disconnected Snort sensor. **Why:** Add the sensor VM without disrupting the client–server link yet.

**133 — `image(20261103-040738).png`** — GNS3 Snort VM node configuration. **Why:** Review how the sensor VM will be managed by the local GNS3 server.

**134 — `image(20261103-040805).png`** — GNS3 sensor network adapter assignments. **Why:** Confirm the two GNS3 interfaces for management and monitoring.

**135 — `image(20261103-041122).png`** — GNS3 compute-server selection. **Why:** Choose Victus as the host for the VirtualBox Snort node.

**136 — `image(20261103-041137).png`** — GNS3 server selection options. **Why:** Distinguish the local VirtualBox compute host from the GNS3 VM.

**137 — `image(20261103-041223).png`** — GNS3 hub and Snort sensor staged in topology. **Why:** Prepare the Ethernet hub and sensor while retaining the old data path.

**138 — `image(20261103-041628).png`** — GNS3 hub interface selection. **Why:** Attach the sensor monitoring interface to an available hub port.

**139 — `image(20261103-041747).png`** — Ubuntu guest interface inspection. **Why:** Confirm enp0s3 management and enp0s8 monitoring interfaces exist.

**140 — `image(20261103-041900).png`** — Ubuntu promiscuous-mode status. **Why:** Verify enp0s8 is UP, LOWER_UP, and PROMISC for passive capture.


### 09 — Live capture and TEST-004

**141 — `image(20261103-042008).png`** — Ubuntu tcpdump installation and idle capture test. **Why:** Confirm tcpdump opens enp0s8; no packets are captured before traffic is generated.

**142 — `image(20261103-042319).png`** — GNS3 three-node hub topology. **Why:** Place the client, web server, and Snort sensor on the monitoring hub.

**143 — `image(20261103-042339).png`** — Client reachability and HTTP through hub. **Why:** Verify the new hub carries normal ICMP and Nginx traffic.

**144 — `image(20261103-042504).png`** — Initial timed tcpdump with no packet matches. **Why:** Recognize that the capture may have ended before traffic was sent.

**145 — `image(20261103-042522).png`** — Further successful ping test. **Why:** Confirm client–server connectivity persisted while capture timing was investigated.

**146 — `image(20261103-042647).png`** — Simultaneous tcpdump and client ping. **Why:** Prove live echo requests, replies, and ARP reach the sensor NIC.

**147 — `image(20261103-042830).png`** — Start Snort 3 live with local rules. **Why:** Launch the IDS against enp0s8 following tcpdump verification.

**148 — `image(20261103-042911).png`** — Live LAB-001 and LAB-002 alert output. **Why:** Observe both custom rule signatures during a 30-request ICMP test.

**149 — `image(20261103-043119).png`** — Restart Snort with file logging. **Why:** Run the live test again, saving alert_fast evidence to TEST-004.

**150 — `image(20261103-043132).png`** — Snort file-logging process stopped. **Why:** Return to the shell after the logged test so outputs can be counted.

**151 — `image(20261103-043146).png`** — TEST-004 final alert counts. **Why:** Confirm 30 basic ICMP alerts and 25 elevated-rate alerts in alert_fast.txt.

## Publish-ready interpretation

At the end of TEST-004 the client sent 30 echo requests to 10.10.10.20; ping received 30 replies (0% loss). The locally recorded Snort event file contained **30 LAB-001 ICMP echo alerts** and **25 LAB-002 elevated-rate alerts**, giving **55 alert records**. These are detections of configured signatures, not proof of a successful denial-of-service attack.
## Recommended GitHub presentation

- Display a small curated set of screenshots (topology, rules, successful packet capture, final alert count) directly in README.
- Link the complete screenshot index for readers who want a detailed troubleshooting history.
- Avoid embedding all 151 full-resolution images on the main README; link them using the filename and caption instead.
- Review the original timestamps before claiming a precise experiment chronology across machines or timezones.