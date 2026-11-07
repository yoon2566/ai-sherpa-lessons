import notice from './notice.html';
const headers={'Content-Type':'text/html; charset=utf-8','Cache-Control':'no-store','X-Content-Type-Options':'nosniff','Content-Security-Policy':"default-src 'none'; style-src 'unsafe-inline'; frame-ancestors 'none'; base-uri 'none'; form-action 'none'"};
const gone=()=>new Response(JSON.stringify({error:'공룡 1버전은 운영을 종료했습니다.',next:'https://ai-sherpa-dino-classroom.yoon2566.workers.dev/'}),{status:410,headers:{'Content-Type':'application/json; charset=utf-8','Cache-Control':'no-store'}});
export default {fetch(request){const path=new URL(request.url).pathname;if(path==='/api'||path.startsWith('/api/')||!['GET','HEAD'].includes(request.method))return gone();return new Response(request.method==='HEAD'?null:notice,{headers});}};
// Preserve the old rate-counter namespace without deleting storage. No binding, secret, or external call remains.
export class GameRateLimit {fetch(){return gone();}}
