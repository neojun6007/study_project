#!/usr/bin/env bash
# 사용법: scripts/new_subject.sh <과목명>
set -e
cd "$(dirname "$0")/.."
D="subjects/$1"; [ -z "$1" ] && { echo "과목명 필요"; exit 1; }
mkdir -p "$D"/{notes,flashcards,sessions}; touch "$D/sessions/.gitkeep"
printf "# %s\n- 교재:\n- 범위:\n- 목표/시험일:\n- 용어 규칙:\n- 과목 특이사항:\n" "$1" > "$D/SUBJECT.md"
printf "# 진도표\n| 단원 | 상태 | 복습 예정일 |\n|---|---|---|\n\n## 다음 세션 시작점\n\n## 약점 목록\n" > "$D/progress.md"
echo "생성: $D"
