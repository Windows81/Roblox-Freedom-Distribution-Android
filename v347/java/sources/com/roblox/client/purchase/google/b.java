package com.roblox.client.purchase.google;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.c.a.a.a;
import com.roblox.client.FragmentGlView;
import com.roblox.client.RobloxSettings;
import com.roblox.client.i.f;
import com.roblox.client.purchase.a;
import com.roblox.client.purchase.f;
import com.roblox.client.purchase.google.a;
import com.roblox.client.purchase.google.a.c;
import com.roblox.client.purchase.google.a.e;
import com.roblox.client.purchase.google.a.h;
import com.roblox.client.purchase.google.a.j;
import com.roblox.client.q.d;
import com.roblox.client.util.g;
import com.roblox.client.util.o;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static b l = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f7608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f7609b;
    private f h;
    private com.roblox.client.purchase.c j;
    private com.roblox.client.http.f k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7610c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7611d = null;
    private String e = null;
    private String f = "";
    private long g = 0;
    private a i = a.IAB_NONE;
    private boolean m = false;
    private a.b n = new a.b() { // from class: com.roblox.client.purchase.google.b.4
        @Override // com.roblox.client.purchase.a.b
        public void a(a.EnumC0125a enumC0125a) {
            if (enumC0125a != a.EnumC0125a.OK && b.this.j != null) {
                b.this.j.b();
            }
            b.this.h.b("ValidationCheck: " + enumC0125a + ".");
            switch (enumC0125a) {
                case OK:
                    b.this.f();
                    break;
                case ERROR:
                    b.this.n();
                    b.this.a(a.EnumC0126a.VALIDATION_ERROR, "PrePurchaseValidation error");
                    break;
                case RETRY:
                    b.this.o();
                    b.this.a(a.EnumC0126a.VALIDATION_RETRY, "PrePurchaseValidation retry");
                    break;
                case LIMIT:
                    b.this.m();
                    b.this.a(a.EnumC0126a.VALIDATION_LIMIT, "PrePurchaseValidation limit");
                    break;
                case ERROR_CHECKING_BALANCE:
                    b.this.p();
                    b.this.a(a.EnumC0126a.REQUEST_BALANCE_ERROR, "PrePurchaseValidation requestBalance failed.");
                    break;
                default:
                    b.this.q();
                    b.this.a(a.EnumC0126a.UNKNOWN, "PrePurchaseValidation Unknown error.");
                    break;
            }
        }
    };
    private e.c o = new e.c() { // from class: com.roblox.client.purchase.google.b.6
        @Override // com.roblox.client.purchase.google.a.e.c
        public void a() {
            b.this.h.a(b.this.a(), false);
        }

        @Override // com.roblox.client.purchase.google.a.e.c
        public void a(com.roblox.client.purchase.google.a.f fVar, h hVar) {
            b.this.h.b("onPurchaseFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (b.this.f7608a != null) {
                if (!fVar.d()) {
                    b.this.a(hVar, false, b.this.p);
                    return;
                }
                if (fVar.a() == -1005) {
                    b.this.a(a.EnumC0126a.USER_CANCELLED, "User cancelled");
                } else {
                    b.this.a(a.EnumC0126a.FAILED_PURCHASE_RESPONSE, "onIabPurchaseFinished failed");
                }
                b.this.i();
            }
        }
    };
    private e.a p = new e.a() { // from class: com.roblox.client.purchase.google.b.8
        @Override // com.roblox.client.purchase.google.a.e.a
        public void a(h hVar, com.roblox.client.purchase.google.a.f fVar) {
            b.this.h.b("OnConsumeFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (!fVar.c()) {
                b.this.y();
                b.this.a(a.EnumC0126a.CONSUME_ERROR, "onConsumeFinishedListener failure");
            } else {
                d.a().d(d.a().j() + com.roblox.client.purchase.d.a(b.this.f7610c));
                b.this.a(true, false);
                if (b.this.j != null) {
                    b.this.j.a(new com.roblox.client.purchase.google.a(a.EnumC0126a.SUCCESS));
                }
                b.this.h.a(b.this.f7610c, b.this.f7611d, b.this.e);
            }
            b.this.g();
            g.b("rbx.purchaseflow", "End consumption flow.");
        }
    };
    private e.InterfaceC0127e q = new e.InterfaceC0127e() { // from class: com.roblox.client.purchase.google.b.9
        @Override // com.roblox.client.purchase.google.a.e.InterfaceC0127e
        public void a(com.roblox.client.purchase.google.a.f fVar, com.roblox.client.purchase.google.a.g gVar) {
            b.this.h.b("OnQueryInventoryFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (b.this.f7608a != null) {
                if (fVar.d()) {
                    g.b("rbx.purchaseflow", "Failed to query inventory: " + fVar);
                    return;
                }
                List<h> listA = gVar.a();
                b.this.h.b("OnQueryInventoryFinished. ItemsCount: " + listA.size() + ". Items: " + b.this.a(listA));
                ListIterator<h> listIterator = listA.listIterator(listA.size());
                while (listIterator.hasPrevious()) {
                    h hVarPrevious = listIterator.previous();
                    if (b.this.f.equals(hVarPrevious.e())) {
                        b.this.a(hVarPrevious, true, (e.a) null);
                    }
                }
            }
        }
    };
    private e.InterfaceC0127e r = new e.InterfaceC0127e() { // from class: com.roblox.client.purchase.google.b.10
        @Override // com.roblox.client.purchase.google.a.e.InterfaceC0127e
        public void a(com.roblox.client.purchase.google.a.f fVar, com.roblox.client.purchase.google.a.g gVar) {
            b.this.h.b("OnGotInventoryWithSkuDetailsFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (b.this.f7608a != null) {
                if (fVar.d()) {
                    g.b("rbx.purchaseflow", "Failed to query inventory: " + fVar);
                    return;
                }
                List<h> listA = gVar.a();
                b.this.h.b("OnGotInventoryWithSkuDetailsFinished. ItemsCount: " + listA.size() + ". Items: " + b.this.a(listA));
                ListIterator<h> listIterator = listA.listIterator(listA.size());
                while (listIterator.hasPrevious()) {
                    h hVarPrevious = listIterator.previous();
                    if (b.this.f.equals(hVarPrevious.e())) {
                        b.this.f7610c = hVarPrevious.d();
                        j jVarA = gVar.a(b.this.f7610c);
                        if (jVarA == null) {
                            b.this.h.b("OnGotInventoryWithSkuDetailsFinished. productSku: null.");
                        } else {
                            b.this.f7611d = jVarA.c();
                            b.this.e = jVarA.b();
                        }
                        b.this.a(hVarPrevious, true, (e.a) null);
                    }
                }
            }
        }
    };

    private enum a {
        IAB_GOOGLE,
        IAB_NONE
    }

    b(c cVar, com.roblox.client.http.f fVar, f fVar2) {
        this.k = null;
        this.f7608a = cVar;
        b();
        this.k = fVar;
        this.h = fVar2;
    }

    private void b() {
        this.f7608a.a(false);
        this.f7608a.a(new e.d() { // from class: com.roblox.client.purchase.google.b.1
            @Override // com.roblox.client.purchase.google.a.e.d
            public void a(com.roblox.client.purchase.google.a.f fVar) {
                if (!fVar.c()) {
                    g.b("rbx.purchaseflow", "Google IAB is not setup");
                    b.this.f7608a = null;
                    b.this.i = a.IAB_NONE;
                    return;
                }
                g.b("rbx.purchaseflow", "Google IAB is setup");
                b.this.i = a.IAB_GOOGLE;
                if (b.this.m) {
                    b.this.m = false;
                    b.this.i();
                }
            }
        });
    }

    public static b a(Context context) {
        if (l == null) {
            l = new b(new e(context, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gQsTOERl7cAXlms9RMRN+XhTyE9h1oX/Wubr0x6FthR6gqktjdHOJ7ge6RR5Tbdpnv9/uhBMjk2hZOG/UktG8gxHbC0FZYdgm2T56tZrkpmodVk3+jN4gPBDIDhSPoKPIbu0dCbiTNOudL68nJVj+jRZI3nk4UDATTktWL7mzHkkt2B9BvKoA7MLJdGVhOSQzMgcTycI14em75apxWliIUDPz11L2USvIddTT+oPvRqLGe+BmIIvS5rCqdEqpLN4G0Qn6ioCw5R6I+kBy0cDY1604Vs5/FEPI+fSk48Kme+peiX+hGVlPF6ZZ9jF6yT/vAjpvn/DEEwkMMa7JnmhwIDAQAB"), new com.roblox.client.http.h(), f.a());
        }
        return l;
    }

    private boolean c() {
        return !this.f.isEmpty() && this.i == a.IAB_GOOGLE;
    }

    boolean a() {
        return this.g == 0;
    }

    public boolean a(String str, String str2, Activity activity, long j, com.roblox.client.purchase.c cVar) {
        return b(str, str2, activity, j, cVar);
    }

    public boolean a(String str, String str2, Activity activity, com.roblox.client.purchase.c cVar) {
        return b(str, str2, activity, 0L, cVar);
    }

    private boolean b(final String str, final String str2, final Activity activity, final long j, final com.roblox.client.purchase.c cVar) {
        this.f = str;
        this.j = cVar;
        if (!c()) {
            return false;
        }
        if (com.roblox.client.b.bx()) {
            final Handler handler = new Handler(Looper.getMainLooper());
            com.roblox.client.c.a().a(activity.getApplicationContext(), new a.InterfaceC0053a() { // from class: com.roblox.client.purchase.google.b.3
                @Override // com.c.a.a.a.InterfaceC0053a
                public void a(final boolean z) {
                    handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.b.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (z) {
                                b.this.h.t();
                                if (com.roblox.client.b.by()) {
                                    b.this.a(a.EnumC0126a.IS_EMULATOR, "payment not supported");
                                    return;
                                }
                            }
                            b.this.c(str, str2, activity, j, cVar);
                        }
                    });
                }
            });
        } else {
            c(str, str2, activity, j, cVar);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str, String str2, Activity activity, long j, com.roblox.client.purchase.c cVar) {
        this.j = cVar;
        this.g = j;
        this.f7610c = str2;
        this.f7609b = activity;
        g.b("rbx.purchaseflow", "isInApp = " + a());
        g.b("rbx.purchaseflow", "startPurchase: Send productId = " + this.f7610c);
        this.h.a(new com.roblox.client.purchase.b(this.f, this.f7610c, false));
        this.j.a();
        if (com.roblox.client.b.bk()) {
            e();
            return true;
        }
        d();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.roblox.client.purchase.a aVar = new com.roblox.client.purchase.a(this.k);
        if (a()) {
            aVar.b(RobloxSettings.validatePurchaseGoogleUrl(), this.f7610c, this.e, this.n);
        } else {
            aVar.a(RobloxSettings.validatePurchaseGoogleUrl(), this.f7610c, this.e, this.n);
        }
    }

    private void e() {
        g.b("rbx.purchaseflow", "Getting price.");
        boolean zB = b(this.f7610c);
        final ArrayList arrayList = new ArrayList(1);
        arrayList.add(zB ? "android.test.purchased" : this.f7610c);
        final HandlerThread handlerThreadA = o.a("Query_Sku_Details");
        Runnable runnable = new Runnable() { // from class: com.roblox.client.purchase.google.b.5
            @Override // java.lang.Runnable
            public void run() {
                com.roblox.client.purchase.google.a.g gVar = new com.roblox.client.purchase.google.a.g();
                try {
                    int iA = b.this.f7608a.a("inapp", gVar, arrayList);
                    b.this.h.b("OnQuerySkuDetailsFinished. Response: " + iA + ".");
                    if (iA == 0) {
                        j jVarA = gVar.a(b.this.f7610c);
                        if (jVarA == null) {
                            b.this.z();
                            b.this.h.b("OnQuerySkuDetailsFinished. productSku: null.");
                        } else {
                            b.this.f7611d = jVarA.c();
                            b.this.e = jVarA.b();
                        }
                    } else {
                        b.this.z();
                    }
                    b.this.d();
                    handlerThreadA.quit();
                } catch (Exception e) {
                    g.e("rbx.purchaseflow", "QuerySkuDetails failed.");
                    b.this.z();
                    b.this.h.b("OnQuerySkuDetailsException. Message: " + e.getMessage() + ".");
                    b.this.d();
                    handlerThreadA.quit();
                }
            }
        };
        handlerThreadA.start();
        o.a(handlerThreadA.getLooper()).post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.j != null) {
            this.j.b();
        }
        this.h.b("PurchaseStarted.");
        try {
            this.f7608a.a(this.f7609b, b(this.f7610c) ? "android.test.purchased" : this.f7610c, 10106, this.o, this.f);
        } catch (Exception e) {
            u();
            a(a.EnumC0126a.IAB_LAUNCH_PURCHASE_FLOW_ERROR, "LaunchPurchaseFlow. Error:" + e.getMessage());
        }
    }

    private static boolean b(String str) {
        if (!com.roblox.client.b.az()) {
            return false;
        }
        g.b("rbx.purchaseflow", "Static Response Testing Flag is Enabled");
        if (!com.roblox.client.d.b.a()) {
            return false;
        }
        g.b("rbx.purchaseflow", "It is dev build");
        if (str.equals("com.roblox.client.robux80") || str.equals("com.roblox.client.robux90bc") || str.equals("android.test.purchased")) {
            g.b("rbx.purchaseflow", "Right product for static response");
            return true;
        }
        g.b("rbx.purchaseflow", "Wrong product for static response");
        return false;
    }

    public boolean a(int i, int i2, Intent intent) {
        this.h.b("onActivityResult(" + i + "," + i2 + ")");
        try {
            return this.f7608a.a(i, i2, intent);
        } catch (Exception e) {
            w();
            a(a.EnumC0126a.IAB_HANDLE_ACTIVITY_RESULT_ERROR, "HandleActivityResult (User charged). Error:" + e.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final h hVar, final boolean z, final e.a aVar) {
        if (this.j != null) {
            this.j.c();
        }
        if (b(hVar.d())) {
            a(hVar, aVar);
        } else {
            new com.roblox.client.purchase.f(this.k).a(RobloxSettings.verifyPurchaseReceiptUrlForGoogle(), new GooglePurchaseReceiptRequestBody(hVar, z), new f.b() { // from class: com.roblox.client.purchase.google.b.7
                @Override // com.roblox.client.purchase.f.b
                public void a(f.a aVar2) {
                    b.this.h.b("VerifyPurchase. Response=" + aVar2 + ".ReceiptId=" + hVar.b() + ". Pending=" + z + ".");
                    switch (aVar2) {
                        case OK:
                            b.this.a(hVar, aVar);
                            break;
                        case ERROR:
                            b.this.r();
                            b.this.a(a.EnumC0126a.RECEIPT_VERIFICATION_ERROR, "launchVerifyPurchaseReceipt error");
                            break;
                        case EMPTY_RESPONSE:
                            b.this.s();
                            b.this.a(a.EnumC0126a.RECEIPT_EMPTY, "launchVerifyPurchaseReceipt empty response");
                            break;
                        default:
                            b.this.t();
                            b.this.a(a.EnumC0126a.UNKNOWN, "launchVerifyPurchaseReceipt unknown error");
                            break;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(h hVar, e.a aVar) {
        com.roblox.client.b.c.a("StoreManager", "PurchaseOK");
        g.b("rbx.purchaseflow", "Receipt Verification Successful");
        try {
            this.f7608a.a(hVar, aVar);
        } catch (Exception e) {
            v();
            a(a.EnumC0126a.IAB_CONSUME_ERROR, "IABConsume. Error:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f = "";
        this.f7609b = null;
        this.f7610c = "";
        this.g = 0L;
        this.f7611d = null;
        this.e = null;
    }

    private boolean h() {
        return this.f7608a != null && this.i == a.IAB_GOOGLE;
    }

    public void a(String str) {
        this.f = str;
        if (h()) {
            i();
        } else {
            this.m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        g.b("rbx.purchaseflow", "Do Google Purchase GrantPending");
        try {
            if (com.roblox.client.b.bk()) {
                this.f7608a.a(true, (List<String>) null, this.r);
            } else {
                this.f7608a.a(this.q);
            }
        } catch (Exception e) {
            x();
            a(a.EnumC0126a.IAB_QUERY_INVENTORY_ERROR, "GrantPendingPurchases. Error:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(List<h> list) {
        String str = "";
        ListIterator<h> listIterator = list.listIterator(list.size());
        while (true) {
            String str2 = str;
            if (listIterator.hasPrevious()) {
                str = str2 + listIterator.previous().d() + "; ";
            } else {
                return str2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a.EnumC0126a enumC0126a, String str) {
        if (this.j != null) {
            this.j.a(new com.roblox.client.purchase.google.a(enumC0126a));
        }
        if (str != null && str.length() > 0) {
            this.h.b(str);
        }
        a(false, enumC0126a == a.EnumC0126a.USER_CANCELLED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        if (this.g != 0 && !TextUtils.isEmpty(this.f7610c)) {
            FragmentGlView.inGamePurchaseFinished(z, this.g, this.f7610c);
        } else {
            g.d("rbx.purchaseflow", "Ignore calling inGamePurchaseFinished: mPlayerPtr=" + this.g + ". mProductId=" + this.f7610c + ".");
        }
        if (z) {
            j();
        } else if (z2) {
            k();
        } else {
            l();
        }
    }

    private void j() {
        if (!com.roblox.client.d.b.a()) {
            this.h.b(a(), false);
        }
    }

    private void k() {
        if (!com.roblox.client.d.b.a()) {
            this.h.d(a(), false);
        }
    }

    private void l() {
        if (!com.roblox.client.d.b.a()) {
            this.h.c(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (!com.roblox.client.d.b.a()) {
            this.h.e(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (!com.roblox.client.d.b.a()) {
            this.h.f(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (!com.roblox.client.d.b.a()) {
            this.h.g(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (!com.roblox.client.d.b.a()) {
            this.h.h(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!com.roblox.client.d.b.a()) {
            this.h.i(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (!com.roblox.client.d.b.a()) {
            this.h.j(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (!com.roblox.client.d.b.a()) {
            this.h.k(a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (!com.roblox.client.d.b.a()) {
            this.h.l(a(), false);
        }
    }

    private void u() {
        if (!com.roblox.client.d.b.a()) {
            this.h.b(a());
        }
    }

    private void v() {
        if (!com.roblox.client.d.b.a()) {
            this.h.c(a());
        }
    }

    private void w() {
        if (!com.roblox.client.d.b.a()) {
            this.h.d(a());
        }
    }

    private void x() {
        if (!com.roblox.client.d.b.a()) {
            this.h.e(a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (!com.roblox.client.d.b.a()) {
            this.h.f(a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (!com.roblox.client.d.b.a()) {
            this.h.g(a());
        }
    }
}
