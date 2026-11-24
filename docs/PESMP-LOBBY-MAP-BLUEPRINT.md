# PESMP Lobby Map Blueprint

A compact, polished hub designed for Paper 1.21.1 and a 2 GB host.

## Visual direction
- Theme: dark obsidian + amethyst + cyan light.
- Main palette: polished deepslate, blackstone, smooth quartz, purple stained glass, sea lanterns, cyan glass.
- Main sign: a large arch with the floating title **PESMP NETWORK** above it.
- Avoid heavy particle effects, redstone clocks, large armor-stand crowds, and huge decorative entity farms.

## Layout
Use a 65 × 65 footprint around the spawn point.

1. **Central spawn plaza (21 × 21):** circular or octagonal floor, safe spawn pad, compass-like center pattern.
2. **Main gateway (north):** 15 blocks wide, 11 blocks tall, obsidian/deepslate frame, amethyst and cyan glass accents.
3. **Mode boulevard:** five clearly separated NPC pedestals arranged in a shallow arc:
   - SMP — cyan
   - Lifesteal — red
   - PvP Arena — orange
   - Creative — purple
   - Resource World — green
4. **Community corner (east):** rules board, server help, Discord information (add the real invite only when confirmed).
5. **Staff corner (west):** small staff-only room; no public access to management commands.
6. **Parkour trail (south):** short optional beginner route with a visible return path; no rewards tied to random chance.

## NPC pedestal design
Each pedestal is 5 × 5, one block above the plaza, with a colored glass stripe and a readable label. Leave at least 3 blocks between NPC hitboxes so Bedrock players can tap the correct NPC.

## Player flow
Spawn facing the gateway. The title is visible immediately. A short instruction below it says "Right-click / tap an NPC to join". Put the five NPCs within easy view and avoid forcing players to walk through menus.

## Performance budget
- Start with Lobby + SMP only on the 2 GB plan.
- Add Lifesteal/PvP/Creative/Resource worlds only after measuring memory and TPS.
- Keep view-distance at 6 and simulation-distance at 4 initially.
- Prefer static lighting and block decoration over particles and constantly ticking entities.
- Do not load several large worlds at once on the current memory budget.

## Build order
1. Generate a fresh lobby world or build the hub in a new empty world.
2. Finish the plaza and gateway before adding NPCs.
3. Set the spawn.
4. Create Essentials warps only after each destination world exists.
5. Add NPCs and the PESMP hologram using `setup/lobby-npcs-holograms.txt`.
6. Protect the lobby and test with Java + Bedrock accounts.
7. Take a backup before adding more modes.
