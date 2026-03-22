package com.roblox.client.purchase;

import com.roblox.client.ae.k;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.GsonCompatibleRequestBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.http.f f6774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.s.f f6775b = com.roblox.client.s.f.b();

    public enum a {
        OK,
        ERROR,
        BOGUS,
        EMPTY_RESPONSE,
        UNKNOWN
    }

    public interface b {
        void a(a aVar);
    }

    public h(com.roblox.client.http.f fVar) {
        this.f6774a = fVar;
    }

    public void a(String str, GsonCompatibleRequestBody gsonCompatibleRequestBody, final b bVar) {
        this.f6774a.a(str, gsonCompatibleRequestBody, null, new l() { // from class: com.roblox.client.purchase.h.1
            @Override // com.roblox.client.http.l
            public void b(j jVar) {
            }

            @Override // com.roblox.client.http.l
            public void a(j jVar) {
                a aVar;
                k.b("rbx.purchaseflow", "Verify Purchase callback. response code " + jVar.b() + " responseBody = " + jVar.a() + ".");
                int iB = jVar.b();
                if (iB == 200) {
                    k.b("rbx.purchaseflow", "Verification success");
                    aVar = a.OK;
                    h.this.f6775b.q();
                } else if (iB == 500) {
                    k.e("rbx.purchaseflow", "Server error");
                    aVar = a.UNKNOWN;
                    h.this.f6775b.t();
                } else if (iB == 400) {
                    k.e("rbx.purchaseflow", "Service was unable to validate receiptId.");
                    aVar = a.ERROR;
                    h.this.f6775b.r();
                } else if (iB == 401) {
                    k.e("rbx.purchaseflow", "Unauthorized to make request.");
                    aVar = a.BOGUS;
                    h.this.f6775b.s();
                } else {
                    k.e("rbx.purchaseflow", "Unknown");
                    aVar = a.UNKNOWN;
                    h.this.f6775b.u();
                }
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(aVar);
                }
            }
        }).c();
        this.f6775b.p();
    }
}
