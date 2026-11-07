# 공룡 1 — 운영 종료 / 소스 보관

2026-11-07부터 [기존 주소](https://ai-sherpa-lessons.yoon2566.workers.dev/)는 종료 안내만 제공합니다. 방문자가 직접 버튼을 눌러 [공룡 2 메인](https://ai-sherpa-dino-classroom.yoon2566.workers.dev/)으로 이동합니다. 자동 이동하지 않습니다.

## 현재 배포

- retirement/: 안내 HTML 및 전용 Worker. 기존 게임 파일은 업로드하지 않습니다.
- wrangler.json: 안내 Worker 전용 설정. API·D1·Assets·Durable Object 바인딩이 없습니다.
- 모든 /api 및 /api/* 요청과 POST 등 변경 요청은 HTTP 410으로 종료됩니다.
- OpenRouter 비밀키는 운영 Worker에서 제거했습니다. 외부 AI 호출 코드는 현재 배포에 포함되지 않습니다.
- npm install 후 npm run check / npm run deploy. 비밀키 등록은 필요하지 않습니다.

## 마지막 운영 소스 보관

- public/: 2026-11-07 운영본과 해시 대조한 마지막 게임·16장 수업·게시판·글꼴·이미지. 11월 5일 로딩 개선 포함.
- worker/: 마지막 운영 서버 코드. 실제 키 값은 포함하지 않습니다.
- archive/last-live-manifest.json: 운영본과 비교한 파일별 해시.
- archive/wrangler.example.json: 복원 참고용 예시. 운영 DB ID와 키가 없는 별도 서비스 설정이며 자동 배포되지 않습니다.
- schema/: 참고용 SQL. 운영 종료 과정에서 DB 삭제나 스키마 변경은 하지 않습니다.

public/과 worker/는 보관 소스이며 현재 안내 Worker에서 접근하거나 실행하지 않습니다. 기존 공용 게시판 데이터는 다른 버전이 계속 사용하므로 유지합니다. 이전 호출 제한 클래스는 저장소를 삭제하지 않기 위해 비활성 구현만 남기며 바인딩이나 호출 경로가 없습니다.

복원은 별도 작업입니다. 새 Worker 이름·새 DB와 명시적으로 선택한 키로 구성한 뒤 검증해야 하며, 현재 종료 안내 주소에 곧바로 덮어쓰지 않습니다.

검증 결과는 [RETIREMENT.md](RETIREMENT.md)를 참고하세요. 버전별 미리보기 URL도 비활성화했습니다.
