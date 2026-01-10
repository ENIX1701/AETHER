<!-- ![AETHER](aether-ascii.png) -->
<img src="aether-ascii.png" alt="AETHER" style="width: 100%;">


AETHER is a C2 framework written in Rust with implants in C or C++. It's main goal is to aid red teams in tests and assignments.

## TODO:
- [ ] (GHOST) Design GHOST MVP functionality
- [ ] (GHOST) Persistence mechanisms
- [ ] (GHOST) Basic connectivity
- [x] (SHADOW) Think through the SHADOW component
- [x] (SHADOW) Basic connectivity (and keepalive/status probe) -> done other way around: GHOSTs send heartbeats to SHADOW to let it know they're still alive
- [ ] (SHADOW) nginx with user-agent filtering
- [x] (CHARON) Create a moodboard of TUI designs -> kind of done, TUI done with ratatui, which is a moodboard itself kinda..
- [x] (CHARON) Basic menu panel 
- [ ] (CHARON) Modular architecture schema -> ?
- [x] (AETHER) Create an interface guide for all communication interfaces (will make maintenance so much easier) -> SHADOW endpoints documented in its README, since SHADOW is central to the system, they basically dictate the whole AETHER communication
- [ ] Improve READMEs in all modules, so that they link to each other (for people who stumble upon one of them, to easily navigate the entire thing hopefully)
- [ ] Make the everything prettyyy -> use ASCII art for READMEs

## Definition of done

I'll consider the first release version of AETHER done, when the following criteria are met:
1. All CHARON, GHOST and SHADOW are done on their own (CHARON - done, not fully tested; GHOST - pivot in progress; SHADOW - done, with complete test-suite)
2. CHARON is fully integrated with SHADOW (done)
3. SHADOW can send commands and receive data from GHOSTs
4. GHOSTs are deployable to Linux machines and are not instantly deleted
5. ~~All the modules~~ SHADOW has at least 60% unit test coverage (preferably >90%, but we know how those kinds of wishes end) -> (done)
6. The communication interfaces are thoroughly documented (basic documentation in place in SHADOW repository, I consider this done)
7. The whole project is deployable with a single Docker compose file (server with compiled implant download + CHARON in another container with GHOST builder fully implemented) with step-by-step instructions of how to deploy and use it
