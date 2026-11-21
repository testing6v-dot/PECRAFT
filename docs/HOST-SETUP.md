# Host setup checklist

## Java server
1. Select Paper in the host panel.
2. Pick a Minecraft version supported by the host and required plugins.
3. Select the Java runtime required by that Paper build. Recent Geyser builds require Java 21 or newer.
4. Upload the files and install plugins into the plugins directory.
5. Start once to generate plugin configs, then stop before editing them.

## Bedrock networking
1. Install Geyser and Floodgate.
2. Set the Geyser listener to a separate port allocated by the host.
3. Confirm the host supports the transport/protocols required by the current Geyser version.
4. Do not assume the Java port alone is enough.
5. If the host cannot provide a reachable Bedrock port, Bedrock players cannot connect directly.

## First boot checks
- Paper starts without errors.
- Expected plugins are enabled.
- A Java player can join.
- A Bedrock player can join with the host-provided Bedrock address and port.
- Ranks, claims, shops, and rollback work.
- Backups are configured and a restore has been tested.

## Maintenance
- Keep online authentication enabled on a standalone server.
- Give OP only to trusted owners.
- Back up worlds, player data, and plugin configs before updates.
- Test updates on a staging copy when possible.