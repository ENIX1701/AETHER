# Release plan (v1.1)

- [x] Further parametrize GHOST payloads -> add severities (no severity -> encrypting a dummy file; max severity -> encrypting the bootloader/system directory/etc.)
- [x] Make CHARON be able to search through exfiltrated files (or save them somewhere sensible). This can also include SHADOW serving them on some endpoint, w/e makes more sense
- [x] make scenarios available in docker compose and charon (when building a ghost)
- [x] add impact level/severity to charon
- [x] exfiltrated files should have more descriptive names (like machine name + readable date + type maybe?). it would be nice if names were created by SHADOW upon getting the payload, and (if possible) separated by dashes or smth (a csv but with dashes - makes sense if these are meant to be filtered later on)
- [ ] prepare the release
