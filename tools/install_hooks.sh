#!/usr/bin/env bash
set -euo pipefail
HOOK=.git/hooks/pre-commit
mkdir -p .git/hooks
cat > "$HOOK" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
make ingest >/dev/null 2>&1 || true
make validate:preflight
EOF
chmod +x "$HOOK"
echo "Installed pre-commit hook."
