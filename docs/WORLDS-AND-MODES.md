# PESMP world and game-mode plan

This document is a deployment plan, not a claim that these worlds are already installed.

## Network layout

- `lobby`: small protected hub, selector NPCs/menus, rules, tutorials and portals.
- `smp`: primary persistent survival world with economy, claims and player shops.
- `lifesteal`: separate competitive world with its own inventory/economy rules and reset policy.
- `pvp`: arena world for duels and events; keep it separate from SMP inventory.
- `resource`: optional resource-gathering world, reset on a published schedule.
- `creative`: optional plots/build world, only if RAM and storage allow it.
- Nether and End: per-mode dimensions, not shared across unrelated game modes.

## Important design rules

1. Each mode must have isolated inventories, ender chests, permissions and economy balances. Do not let Lifesteal items or money leak into SMP.
2. Never promise popular copyrighted maps as bundled downloads. Use original builds or maps with an explicit license that allows server use; credit the author.
3. Use Multiverse only for world routing. Add protection and rollback before opening a world to players.
4. Keep the first release small: lobby + SMP + one PvP arena. Add Lifesteal after isolation is tested. Creative/resource worlds are later phases.
5. Do not pre-generate huge worlds on a 2 GB host. Set a conservative world border and pregenerate only a small area during maintenance.
6. Every world needs a documented owner, backup, border, spawn, game rules and reset policy.

## Release phases

### Phase 0 — safe baseline
- Verify a restorable backup of the current world and plugin folder.
- Verify Java and Bedrock can both join.
- Verify Geyser/Floodgate and authentication configuration.
- Fix exposed RCON configuration before public launch.

### Phase 1 — SMP launch
- Lobby + SMP + Nether + End.
- LuckPerms ranks, TAB display, EssentialsX spawn/warps, one economy provider, claims, CoreProtect and WorldGuard.
- Test join, death, respawn, teleport, claims, shops and rollback on both editions.

### Phase 2 — PvP
- Separate arena world, spawn protection, duel/arena rules, combat logging policy and anti-cheat tuning.
- Keep arena rewards cosmetic or balanced; do not let arena farming break SMP economy.

### Phase 3 — Lifesteal
- Separate inventory/economy and explicit heart cap/floor rules.
- Add combat logging prevention, safe spawn, grace period for new players and a published reset policy.
- Test edge cases before opening it.

### Phase 4 — optional modes
- Creative plots or resource reset world only after measuring memory, CPU and storage under real players.
