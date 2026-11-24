# PESMP compatibility and performance policy

## Current known baseline
The live host was last reported as Paper 1.21.1, Java 21 and 2 GB RAM. A previous panel reading showed roughly 1.55 GB of 2 GB in use. Treat this as a constrained host, not a large network.

## Version policy
- Do not upgrade production merely because a newer Minecraft version exists.
- First verify the host offers the target Paper build and required Java runtime.
- Verify Geyser, Floodgate, ViaVersion, LuckPerms, EssentialsX, TAB and every gameplay plugin against that exact build.
- Back up worlds, player data and plugin configs; test on a staging copy; then upgrade.
- Never combine a Minecraft major-version upgrade with multiple gameplay changes in one deployment.

## Memory policy
- Start with lobby + SMP only.
- Avoid heavy map packs, multiple large worlds, large view distances and excessive entities.
- Add one plugin at a time and inspect startup logs and memory after each addition.
- Use a conservative simulation/view distance suitable for the host.
- If memory remains near the limit under normal load, reduce features or move to a host with more RAM before adding worlds.

## Cross-play policy
- Paper plugins are server-side. Forge/Fabric client mods are a separate modded-server approach and are not interchangeable.
- Geyser/Floodgate enable Bedrock access but not every Java inventory, GUI or mechanic behaves identically on Bedrock.
- Test menus, combat, resource packs and custom items on both editions.
- Do not claim "every version/device" compatibility; publish the tested Java and Bedrock versions.

## Security
- Use online authentication where the server architecture supports it safely.
- If offline mode is required behind a proxy, secure the backend so it is never publicly reachable and configure forwarding/authentication correctly.
- Disable RCON unless needed; if needed, use a strong unique password and restrict network access.
- Keep backups off-host where possible and periodically test restoration.
