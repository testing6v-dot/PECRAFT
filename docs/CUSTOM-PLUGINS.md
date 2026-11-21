# PECRAFT custom plugins

PECRAFT will use its own Java plugins built specifically for this server. These are server-side Paper plugins, not Forge/Fabric client mods, so Java and Bedrock players can use the same server-side features.

## Planned PECRAFTCore features
- Custom join/quit messages and first-join welcome.
- `/pecraft` information command.
- Configurable spawn commands and welcome text.
- Future modules: daily missions, player profiles, tokens, cosmetics, event tools, and custom menus.

## Compatibility policy
A plugin compiled against one Paper API is not automatically guaranteed to work on every historical Paper version. We will select a minimum supported Paper version, build against that API, and test on each target version before claiming support. One jar for literally every Paper version cannot be promised.

## Current state
The first repository commit contains the design and configuration templates. The custom plugin source and compiled JAR are a separate implementation step and are not included yet.