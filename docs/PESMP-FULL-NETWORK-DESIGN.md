# PESMP — Full Network Blueprint

## Identity
- Network name: PESMP
- Primary owner account: XDM_GAMERX
- Platform target: Paper plugins, Java + Bedrock through Geyser/Floodgate.
- Core design: one lightweight Paper server first; split into a Velocity network only when hosting has enough RAM and separate backend slots.

## Modes and worlds
1. `lobby`: protected spawn, mode selector, rules, tutorial and NPC/compass navigation.
2. `smp`: main persistent survival world, economy, claims, player shops, homes and player warps.
3. `lifesteal`: isolated inventory/economy/world; hearts are a game-only score with a configured floor and ceiling. No cross-mode inventory.
4. `pvp`: opt-in arenas, queues and stats; no PvP in lobby or normal SMP spawn.
5. `resource`: periodically reset mining/gathering world; never reset the main SMP world.
6. `nether` and `the_end`: linked only to SMP unless explicitly configured otherwise.
7. `creative`: later phase, separate inventory and plot protection.

## Original PESMP systems
- PESMPCore: spawn, server status, safe reload and network messages.
- PESMPWallet: player balances, transfers, admin audit log, economy hooks.
- PESMPQuests: daily/weekly deterministic objectives and rewards (no paid/random gambling mechanics).
- PESMPHearts: Lifesteal hearts, configurable bounds, death/quit edge-case handling and audit log.
- PESMPGuard: spawn protection, claim checks, staff moderation log and rollback integration when a compatible rollback plugin is installed.
- PESMPProfiles: playtime, joins, mode stats, first-join welcome and player preferences.
- PESMPBridge: mode selector and cross-server messaging, only for a future Velocity deployment.

## Player features
- /spawn, /sethome, /home, /delhome, /tpa, /tpaccept, /msg, /reply, /ignore
- /balance, /pay, /shop, /sell, /daily, /quests, /stats, /rules
- /warp, /warps, /rtp (RTP only in approved worlds and with safe-location checks)
- GUI menus should have text-command fallbacks for Bedrock accessibility.

## Staff features
- /staffchat, /staffmode, /freeze, /vanish, /invsee, /endersee, /warn, /mute, /kick, /tempban
- Every moderation action records actor, target, reason, timestamp and action in a log.
- Owner-only configuration and rank management; no public wildcard permissions.
- Staff tools must not expose passwords, login tokens, or private account data.

## Ranks
Owner > CoOwner > Manager > Admin > Moderator > Helper > Media > MVP+ > VIP > Default.
XDM_GAMERX is the only bootstrap Owner. Owner powers are assigned through LuckPerms; do not share Owner credentials or grant it to other players.

## Deployment phases
A. Safe baseline: backup, confirm Java/runtime, verify plugins and login configuration.
B. Build/test custom plugins against the exact Paper API before uploading.
C. Install only core dependencies; configure permissions and TAB.
D. Add worlds one at a time, verify spawn/portals/inventories.
E. Add economy, quests, Lifesteal and PvP in isolated stages.
F. Load test and review logs before opening publicly.

## Hardware reality
A single 2 GB server cannot responsibly host a full multi-mode network with several active worlds and many plugins. Start with lobby + SMP and one additional mode at a time, or upgrade/split hosting before enabling the full network.
