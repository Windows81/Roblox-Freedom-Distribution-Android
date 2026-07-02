package com.roblox.client.purchase;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.GsonCompatibleRequestBody;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.http.f f7556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.i.f f7557b = com.roblox.client.i.f.a();

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

    public f(com.roblox.client.http.f fVar) {
        this.f7556a = fVar;
    }

    public void a(String str, GsonCompatibleRequestBody gsonCompatibleRequestBody, final b bVar) {
        this.f7556a.a(str, gsonCompatibleRequestBody, null, new l() { // from class: com.roblox.client.purchase.f.1
            @Override // com.roblox.client.http.l
            public void a(j jVar) {
                a aVar;
                g.b("rbx.purchaseflow", "Verify Purchase callback. response code " + jVar.b() + " responseBody = " + jVar.a() + ".");
                switch (jVar.b()) {
                    case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                        g.b("rbx.purchaseflow", "Verification success");
                        aVar = a.OK;
                        f.this.f7557b.o();
                        break;
                    case 400:
                        g.e("rbx.purchaseflow", "Service was unable to validate receiptId.");
                        aVar = a.ERROR;
                        f.this.f7557b.p();
                        break;
                    case 401:
                        g.e("rbx.purchaseflow", "Unauthorized to make request.");
                        aVar = a.BOGUS;
                        f.this.f7557b.q();
                        break;
                    case 500:
                        g.e("rbx.purchaseflow", "Server error");
                        aVar = a.UNKNOWN;
                        f.this.f7557b.r();
                        break;
                    default:
                        g.e("rbx.purchaseflow", "Unknown");
                        aVar = a.UNKNOWN;
                        f.this.f7557b.s();
                        break;
                }
                if (bVar != null) {
                    bVar.a(aVar);
                }
            }

            @Override // com.roblox.client.http.l
            public void b(j jVar) {
            }
        }).c();
        this.f7557b.n();
    }
}
