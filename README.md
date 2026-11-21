# PECRAFT

A Paper-based Minecraft server starter for Java + Bedrock cross-play.

This repository contains configuration templates, plugin planning, and setup guidance. It does not bundle third-party plugin JARs. Download plugins only from official project pages and check version compatibility.

## Features planned
- Paper server
- Geyser + Floodgate cross-play
- ViaVersion compatibility for supported Java clients
- Survival SMP, economy, shops, ranks, claims, PvP, crates, quests
- Moderation, backups, and performance tools

## Install
1. Create a fresh Paper server in your host panel.
2. Choose a Minecraft/Paper build supported by your host and plugins.
3. Use the Java runtime required by that Paper build and Geyser.
4. Upload these files into the server root.
5. Follow docs/PLUGIN-STACK.md and docs/HOST-SETUP.md.

## Cross-play notes
- Geyser bridges Bedrock clients to a Java server; not every Java GUI or mechanic behaves identically on Bedrock.
- Floodgate is the companion plugin for Bedrock authentication without requiring a Java account.
- Bedrock requires a separate reachable listener port. Confirm the host supports the protocols required by your Geyser version.
- ViaVersion does not guarantee every historical client version.
- Paper uses plugins, not Forge/Fabric client-side modpacks.

## Important security
Keep online-mode enabled on a standalone server. Never expose an offline-mode backend directly to the public internet. Back up worlds and plugin data before updates.

## Official references
- Paper: https://papermc.io/
- Geyser setup: https://geysermc.org/wiki/geyser/setup/
- Geyser supported versions: https://geysermc.org/wiki/geyser/supported-versions/
- Floodgate: https://geysermc.org/wiki/floodgate/
- ViaVersion: https://viaversion.com/

Logo: assets/pecraft-logo.svg