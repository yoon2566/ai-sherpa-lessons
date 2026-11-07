# 운영 종료 검증 — 2026-11-07

- 기존 주소: https://ai-sherpa-lessons.yoon2566.workers.dev/
- 버튼 목적지: https://ai-sherpa-dino-classroom.yoon2566.workers.dev/
- 안내 배포 후 비밀키 삭제를 반영한 최종 버전: 10dd6188-3266-4e83-a8d6-c7323fb3c8b8

| 항목 | 확인 결과 |
|---|---|
| 마지막 운영 소스 | 공개 자산 8개 및 서버 코드의 SHA-256 일치 후 보관 |
| 안내 페이지 | PC 1440px·모바일 390px 검증, 가로 넘침 없음 |
| 자동 이동 | 스크립트·메타 새로고침 없음, 대기 후에도 기존 주소 유지 |
| 버튼 | 직접 클릭하여 공룡 2 메인 URL 도착 확인 |
| 기존 API | /api/game, /api/prompt, /api/board, /api/health POST 모두 HTTP 410 |
| 다른 기존 경로 | 예전 게임·게시판 경로도 안내 응답, 보관 자산은 배포하지 않음 |
| 비밀키 | SHERPA_OPENROUTER_KEY 삭제 성공, 남은 Worker 바인딩 0개 |
| 과거 버전 미리보기 | previews_enabled=false, 기본 workers.dev 주소만 유지 |
| 공룡 2·3 | 배포 ID 전후 동일 |
| 공유 데이터 | DB 쓰기·삭제·스키마 변경 없음 |
| GitHub 공개 여부 | 기존 public 유지 |

OpenRouter 계정 전체의 키 폐기나 다른 서비스의 키 변경은 하지 않았다. 공룡 1 Worker의 비밀키와 호출 코드를 제거했다. 과거 호출 제한 저장소는 삭제하지 않고 접근 바인딩을 제거했다.
