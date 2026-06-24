
#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if ! command -v protoc &>/dev/null; then
  apt-get install -y protobuf-compiler
fi

cargo xtask build --plugins-only
