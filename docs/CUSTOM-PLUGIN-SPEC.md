# PESMP custom plugin architecture

Status: specification only. No compiled JAR is included and no feature is marked deployed until it is built and tested in-game.

## Module 1: PESMPCore
Commands:
- `/hub`, `/spawn`, `/rules`, `/server`
- `/pesmp reload` restricted to a dedicated permission
Features:
- Safe join routing to lobby
- Per-world spawn locations
- First-join welcome and help hints
- Configurable messages and command aliases
- No hard-coded player names or secrets

## Module 2: PESMPProfiles
- Player profile summary: playtime, kills, deaths, balance placeholder, current mode
- GUI profile menu with pagination
- Store only required data; provide admin export/delete controls
- Never expose private player data to other users

## Module 3: PESMPMissions
- Daily and weekly objectives from YAML configuration
- Progress tracking for safe, ordinary gameplay events
- Reward integration through a documented economy hook
- Anti-duplication checks and idempotent reward claims
- No pay-to-win rewards

## Module 4: PESMPModes
- Explicit mode routing and per-mode spawn
- Hooks for inventory separation only after selecting a tested compatible solution
- Block cross-mode item/economy transfer
- Admin diagnostics for current mode and world

## Engineering requirements
- Target the exact Paper API build selected for production; do not compile against an assumed "latest" version.
- Java runtime must match the selected Paper release.
- Use Adventure components, asynchronous database/file I/O where appropriate, and safe main-thread Bukkit API access.
- Configuration validation, graceful shutdown, structured logs and migration-safe data storage.
- No NMS or reflection unless absolutely necessary.
- Unit tests for parsing/configuration and integration tests on a disposable test server.
- Permissions must be least-privilege and documented per command.
- Every module must be independently disableable.

## Build and release gate
1. Compile against the selected Paper API.
2. Run static checks and tests.
3. Start a clean test server and inspect logs.
4. Test Java and Bedrock client behavior.
5. Test backup/restore and upgrade migration.
6. Only then publish a versioned JAR and install it on production.
