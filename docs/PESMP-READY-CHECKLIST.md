# PESMP readiness checklist

## Files prepared in this repository
- Lobby map generator datapack: `datapacks/PESMP-Lobby/`
- Lobby design: `docs/PESMP-LOBBY-MAP-BLUEPRINT.md`
- NPC/hologram instructions: `setup/lobby-npcs-holograms.txt`
- World and startup sequence: `setup/worlds-and-startup.txt`
- Recommended server properties: `setup/pesmp-server.properties`
- Owner/rank command plan: `setup/luckperms-owner-and-ranks.txt`
- Core plugin source: `plugins/PESMPCore/`

## Before public launch
- [ ] Back up the host files.
- [ ] Confirm Paper 1.21.1 and Java 21.
- [ ] Install the datapack in the intended lobby world.
- [ ] Run `/function pesmp:lobby` in a clean build area.
- [ ] Set spawn and protect the lobby.
- [ ] Confirm EssentialsX, Citizens, and DecentHolograms load cleanly.
- [ ] Create each destination world and warp before attaching its NPC.
- [ ] Test NPC clicks using a non-operator Java account.
- [ ] Test Bedrock tap interaction through Geyser/Floodgate.
- [ ] Verify XDM_GAMERX is the only Owner.
- [ ] Confirm RCON is disabled and no secrets are in Git.
- [ ] Test restart persistence and monitor RAM/TPS.
- [ ] Do not open all worlds on the 2 GB plan until capacity is proven.

## Not yet done automatically
This repository cannot upload files to the MCFreeHost panel by itself. The datapack, plugins, and worlds are not installed on the live server until the host panel receives them and the server is restarted.
