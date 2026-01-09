# The concept

AETHER is a C2 framework written in Rust with implants in C++. Its main goal is to aid red teams in tests and assignments.

## High-level architecture

### 1. GHOST

**Role:** Run on target machine and execute commands remotely  
**Platforms:** Windows, Linux  
**Idea:** Beacons poll the server every X seconds (possibly jittered to [obfuscate](https://attack.mitre.org/techniques/T1001/) the traffic).  
**Capabilities:**
- Establish persistence
- Execute shell commands
- Data exfiltration
- Download (and execute) additional payloads
- (maybe) Inject shellcode

### 2. SHADOW

**Role:** Server side component  
**Platforms:** Linux  
**Idea:** Handles beacon requests and manages GHOSTs  
**Capabilities:**
- Handle multiple concurrent implants
- Send out instructions and tasks
- Manage state (monitor for "dead" ghosts)
- Gather and collect data sent out from implants

### 3. CHARON

**Role:** The TUI   
**Platforms:** Linux  
**Idea:** Makes it possible to manage the SHADOW and generate GHOSTs, all from the terminal  
**Capabilities:**
- Customize, generate (possibly in the future...) and deploy implants
- Manage GHOSTs through SHADOW
