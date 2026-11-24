# PESMP release checklist

- [ ] Create and verify a restorable backup of all worlds and plugin data.
- [ ] Confirm host supports selected Java version and enough memory.
- [ ] Confirm exact Paper build is stable and supported by Geyser and every required plugin.
- [ ] Test a copy of the world; never first-upgrade the only live copy.
- [ ] Build each custom plugin in CI and inspect startup logs.
- [ ] Verify Floodgate/Geyser ports and Java/Bedrock joins.
- [ ] Verify LuckPerms rank inheritance and XDM_GAMERX owner assignment.
- [ ] Verify lobby protection, spawn, portals and inventory isolation.
- [ ] Verify economy transactions and audit records.
- [ ] Verify Lifesteal bounds and death edge cases.
- [ ] Verify moderation logs and staff permissions.
- [ ] Load test with realistic player count.
- [ ] Announce only features that passed testing.
