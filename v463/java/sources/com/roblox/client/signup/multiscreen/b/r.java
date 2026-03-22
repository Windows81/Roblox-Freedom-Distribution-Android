package com.roblox.client.signup.multiscreen.b;

import com.roblox.abtesting.a;
import com.roblox.client.signup.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class r extends androidx.lifecycle.p<com.roblox.client.signup.multiscreen.a.g> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.c f7230e;
    private q f;
    private com.roblox.client.signup.multiscreen.a.a h;
    private String i;
    private String j;
    private long k;
    private com.roblox.abtesting.a l;
    private com.roblox.client.s.h m;
    private int g = 0;
    private d.a n = new a();

    public r(com.roblox.client.signup.multiscreen.c cVar, q qVar, com.roblox.abtesting.a aVar, com.roblox.client.s.h hVar) {
        this.f = qVar;
        this.f7230e = cVar;
        this.l = aVar;
        this.m = hVar;
    }

    public void a(int i, com.roblox.client.signup.multiscreen.a.a aVar, String str, String str2) {
        this.g = i;
        this.h = aVar;
        this.i = str;
        this.j = str2;
        this.k = System.currentTimeMillis();
        new com.roblox.client.signup.c(i, aVar.f7139a, aVar.f7140b, aVar.f7141c, str, str2, null, null, this.n).execute(new Void[0]);
    }

    private class a implements d.a {
        private a() {
        }

        @Override // com.roblox.client.signup.d.a
        public void a(final com.roblox.client.signup.f fVar) {
            final long j = fVar.g;
            r.this.l.b(j);
            if (com.roblox.client.b.bP() && fVar.h != -1) {
                com.roblox.client.l.a().h().a(com.roblox.client.game.h.a(Long.valueOf(fVar.h), null, null, null, null, "SignUp"));
            }
            r.this.l.a(new a.InterfaceC0117a() { // from class: com.roblox.client.signup.multiscreen.b.r.a.1
                @Override // com.roblox.abtesting.a.InterfaceC0117a
                public void a() {
                    a.this.a(fVar.f7134d, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, long j) {
            r.this.m.a(r.this.i, j);
            com.roblox.client.ad.c.a().d(r.this.j);
            com.roblox.client.ad.c.a().a(r.this.h);
            r.this.b(com.roblox.client.signup.multiscreen.a.g.a());
            r.this.f.a(i);
        }

        @Override // com.roblox.client.signup.d.a
        public void b(final com.roblox.client.signup.f fVar) {
            r.this.f7230e.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.r.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.c(fVar);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00be  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x01c4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void c(com.roblox.client.signup.f r13) {
            /*
                Method dump skipped, instruction units count: 582
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.signup.multiscreen.b.r.a.c(com.roblox.client.signup.f):void");
        }
    }
}
