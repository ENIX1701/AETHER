# AETHER

AETHER is a C2 framework written in Rust with implants in C or C++. It's main goal is to aid red teams in tests and assignments.

## TODO:
- [ ] (GHOST) Design GHOST MVP functionality
- [ ] (GHOST) Persistence mechanisms
- [ ] (GHOST) Basic connectivity
- [ ] (SHADOW) Think through the SHADOW component
- [ ] (SHADOW) Basic connectivity (and keepalive/status probe)
- [ ] (SHADOW) nginx with user-agent filtering
- [ ] (CHARON) Create a moodboard of TUI designs
- [ ] (CHARON) Basic menu panel
- [ ] (CHARON) Modular architecture schema
- [ ] (AETHER) Create an interface guide for all communication interfaces (will make maintenance so much easier) 
- [ ] Improve READMEs in all modules, so that they link to each other (for people who stumble upon one of them, to easily navigate the entire thing hopefully)

## Definition of done

I'll consider the first release version of AETHER done, when the following criteria are met:
1. All CHARON, GHOST and SHADOW are done on their own (CHARON - in progress, GHOST - in progress, SHADOW - done)
2. CHARON is fully integrated with SHADOW
3. SHADOW can send commands and receive data from GHOSTs
4. GHOSTs are deployable to Windows machines and are not instantly deleted by Defender
5. All the modules have at least 60% unit test coverage (preferably >90%, but we know how those kinds of wishes end)
6. The communication interfaces are thoroughly documented (basic documentation in place in SHADOW repository)
7. The whole project is deployable with a single Docker compose file (server with compiled implant download + CHARON in another container) with step-by-step instructions of how to deploy and use it
