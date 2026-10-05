# Study Vault
Claude Code와 대화하며 공부하고, 정리본을 자동으로 저장하는 다과목 학습 시스템.
- 규칙: `CLAUDE.md` · 모드: `_system/modes.md`
- 과목: `subjects/`
- 새 과목: `scripts/new_subject.sh <과목명>`
- 자동 동기화: 세션 시작 시 pull, Claude 응답 종료 시 commit+push (`.claude/settings.json` 훅)
