#!/usr/bin/env bash
# 변경사항이 있으면 커밋 후 푸시. 사용법: scripts/sync.sh ["메시지"]
cd "$(dirname "$0")/.." || exit 0
git add -A
git diff --cached --quiet && exit 0
git commit -q -m "${1:-학습 기록 자동 저장 $(date '+%Y-%m-%d %H:%M')}"
git pull -q --rebase && git push -q
