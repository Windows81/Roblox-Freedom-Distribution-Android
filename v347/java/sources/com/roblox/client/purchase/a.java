package com.roblox.client.purchase;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.RobuxPurchaseProductRequestBody;
import com.roblox.client.i.h;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.http.f f7540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.i.f f7541b = com.roblox.client.i.f.a();

    /* JADX INFO: renamed from: com.roblox.client.purchase.a$a, reason: collision with other inner class name */
    public enum EnumC0125a {
        OK,
        ERROR,
        RETRY,
        LIMIT,
        ERROR_CHECKING_BALANCE,
        UNKNOWN_ERROR
    }

    public interface b {
        void a(EnumC0125a enumC0125a);
    }

    public a(com.roblox.client.http.f fVar) {
        this.f7540a = fVar;
    }

    public void a(String str, String str2, String str3, final b bVar) {
        this.f7540a.a(str, new RobuxPurchaseProductRequestBody(str2, str3), null, new l() { // from class: com.roblox.client.purchase.a.1
            @Override // com.roblox.client.http.l
            public void a(j jVar) {
                EnumC0125a enumC0125a;
                String strA = jVar.a();
                if (strA != null) {
                    g.b("rbx.purchaseflow", "response Str " + strA);
                    g.b("rbx.purchaseflow", "response Code " + jVar.b());
                }
                switch (jVar.b()) {
                    case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                        g.b("rbx.purchaseflow", "Validation successful");
                        enumC0125a = EnumC0125a.OK;
                        a.this.f7541b.e();
                        break;
                    case 400:
                        g.e("rbx.purchaseflow", "Service has thrown an uknown exception.");
                        enumC0125a = EnumC0125a.UNKNOWN_ERROR;
                        a.this.f7541b.f();
                        break;
                    case 401:
                        g.e("rbx.purchaseflow", "Unauthorized to make request. Auth cookie is needed.");
                        enumC0125a = EnumC0125a.ERROR;
                        a.this.f7541b.g();
                        break;
                    case 403:
                        g.e("rbx.purchaseflow", "Unauthorized to make request. XSRF token is needed.");
                        enumC0125a = EnumC0125a.ERROR;
                        a.this.f7541b.h();
                        break;
                    case 404:
                        g.e("rbx.purchaseflow", "{validateModel} is invalid.");
                        enumC0125a = EnumC0125a.ERROR;
                        a.this.f7541b.i();
                        break;
                    case 429:
                        g.e("rbx.purchaseflow", "Service has been rate limited to user.");
                        enumC0125a = EnumC0125a.LIMIT;
                        a.this.f7541b.j();
                        break;
                    case 500:
                        g.e("rbx.purchaseflow", "Server Error");
                        enumC0125a = EnumC0125a.UNKNOWN_ERROR;
                        a.this.f7541b.k();
                        break;
                    case 503:
                        g.e("rbx.purchaseflow", "Service has been turned off. Header response will include Retry-After in seconds.");
                        enumC0125a = EnumC0125a.RETRY;
                        a.this.f7541b.l();
                        break;
                    default:
                        g.e("rbx.purchaseflow", "Validation unknown error");
                        enumC0125a = EnumC0125a.UNKNOWN_ERROR;
                        a.this.f7541b.m();
                        break;
                }
                if (bVar != null) {
                    bVar.a(enumC0125a);
                }
            }

            @Override // com.roblox.client.http.l
            public void b(j jVar) {
            }
        }).c();
        this.f7541b.d();
    }

    public void b(final String str, final String str2, final String str3, final b bVar) {
        g.b("rbx.purchaseflow", "Get balance.");
        h.a().a(new h.a() { // from class: com.roblox.client.purchase.a.2
            @Override // com.roblox.client.i.h.a
            public void a(boolean z, int i) {
                if (z) {
                    a.this.a(str, str2, str3, bVar);
                } else if (bVar != null) {
                    bVar.a(EnumC0125a.ERROR_CHECKING_BALANCE);
                }
            }
        }, this.f7540a);
    }
}
