set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ENV_DIR="$SCRIPT_DIR/env"

if [[ ! -f "$ENV_DIR/bin/activate" ]]; then
  echo "Error: virtual environment not found at $ENV_DIR" >&2
  exit 1
fi

# shellcheck disable=SC1090
source "$ENV_DIR/bin/activate"

exec jupyter notebook "$@"