#!/usr/bin/env bash
# 세션 시작 시 원격 최신 내용 받기
cd "$(dirname "$0")/.." || exit 0
git pull -q --rebase --autostash 2>/dev/null || true
