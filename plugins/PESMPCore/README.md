# PESMPCore

A lightweight first-party Paper plugin for PESMP.

## Build
Requires Java 21 and Maven:
`mvn -f plugins/PESMPCore/pom.xml package`

The resulting JAR is written to `plugins/PESMPCore/target/`.

## Commands
- `/pesmp` — show network/core information.
- `/pesmp reload` — reload config (permission `pesmp.admin`).
- `/setspawn` — save the current location as spawn (permission `pesmp.admin`).
- `/spawn` — teleport to configured spawn (permission `pesmp.spawn`).

This plugin does not grant operator privileges or wildcard permissions.
