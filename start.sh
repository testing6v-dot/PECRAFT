#!/usr/bin/env bash
set -euo pipefail
# Generic Linux launcher. Your host panel may provide its own startup command.
PAPER_JAR=${PAPER_JAR:-paper.jar}
JAVA_FLAGS=${JAVA_FLAGS:--Xms1G -Xmx3G}
if [[ ! -f "$PAPER_JAR" ]]; then
  echo "Paper jar not found: $PAPER_JAR"
  echo "Upload the Paper jar or set PAPER_JAR to its filename."
  exit 1
fi
exec java $JAVA_FLAGS -jar "$PAPER_JAR" --nogui