# 차곡차곡 공부방

과제 제출 · 검토 피드백 · 상담 · 수납 기록을 연결하는 공부방

An original operational sample inspired by publicly described academy workflows, not affiliated with On-hi.

## Run locally

Requires Node 22.19+. Run npm ci, set APP_PASSWORD to a strong app password, then npm run dev. Open http://127.0.0.1:3100 and use admin / your APP_PASSWORD. Local SQLite receives fictional sample records.

## Deploy

Fork this repository and submit it to the academy catalog. It provisions Turso Tokyo and deploys Vercel Seoul. Schemas come from immutable prisma/migrations SQL. Remote apps start empty unless demo data was explicitly imported. Set TURSO_DATABASE_URL and TURSO_AUTH_TOKEN for manual hosting; provision schema before starting. Never put tokens in client code.

## Included workflows

- 원생: 원생과 보호자의 연락처를 한곳에서 관리해요.
- 학습 보드: 과제 부여부터 제출, 검토까지 학습 과정을 이어가요.
- 수납 장부: 현장·계좌 수납을 수동 기록해요. 청구서 발송이나 실제 결제는 하지 않아요.
- 상담 노트: 다음 상담에 이어갈 중요한 이야기를 남겨요.
- 공지: 학부모에게 전달할 내용을 정리해요. 실제 알림은 발송되지 않아요.

The public example is read-only. Downloaded apps support persisted registration and status actions. Notices are stored locally in the app, not delivered as SMS/push. Tuition is manual bookkeeping, not a payment gateway. Portfolio images are optional HTTPS references, not file uploads. This sample uses a single shared owner password; separate parent accounts and role permissions are not included.

## Checks

npm run lint
npm run typecheck
npm test
npm run build
