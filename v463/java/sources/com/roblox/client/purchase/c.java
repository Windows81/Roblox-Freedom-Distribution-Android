package com.roblox.client.purchase;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.RobuxPurchaseProductRequestBody;
import com.roblox.client.s.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.http.f f6674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.s.f f6675b = com.roblox.client.s.f.b();

    public enum a {
        OK,
        ERROR,
        RETRY,
        LIMIT,
        LIMIT_UNDER_13,
        ERROR_CHECKING_BALANCE,
        UNKNOWN_ERROR
    }

    public interface b {
        void a(a aVar);
    }

    public c(com.roblox.client.http.f fVar) {
        this.f6674a = fVar;
    }

    public void a(String str, String str2, String str3, final b bVar) {
        this.f6674a.a(str, new RobuxPurchaseProductRequestBody(str2, str3), null, new l() { // from class: com.roblox.client.purchase.c.1
            @Override // com.roblox.client.http.l
            public void b(j jVar) {
            }

            /* JADX WARN: Removed duplicated region for block: B:36:0x010a  */
            @Override // com.roblox.client.http.l
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void a(com.roblox.client.http.j r5) {
                /*
                    Method dump skipped, instruction units count: 293
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.purchase.c.AnonymousClass1.a(com.roblox.client.http.j):void");
            }
        }).c();
        this.f6675b.f();
    }

    public void b(final String str, final String str2, final String str3, final b bVar) {
        k.b("rbx.purchaseflow", "Get balance.");
        com.roblox.client.s.h.a().a(new h.a() { // from class: com.roblox.client.purchase.c.2
            @Override // com.roblox.client.s.h.a
            public void a(boolean z, int i) {
                if (z) {
                    c.this.a(str, str2, str3, bVar);
                    return;
                }
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(a.ERROR_CHECKING_BALANCE);
                }
            }
        }, this.f6674a);
    }
}
