package com.roblox.client.purchase.google;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.b.a.a.a;
import com.roblox.client.ae.k;
import com.roblox.client.analytics.d;
import com.roblox.client.game.m;
import com.roblox.client.purchase.c;
import com.roblox.client.purchase.e;
import com.roblox.client.purchase.google.a;
import com.roblox.client.purchase.google.a.c;
import com.roblox.client.purchase.google.a.e;
import com.roblox.client.purchase.google.a.g;
import com.roblox.client.purchase.google.a.h;
import com.roblox.client.purchase.google.a.j;
import com.roblox.client.purchase.h;
import com.roblox.client.s.f;
import com.roblox.client.u;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    private static b m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f6743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f6744b;
    private f h;
    private boolean i;
    private e k;
    private com.roblox.client.http.f l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6745c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6746d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6747e = null;
    private String f = "";
    private long g = 0;
    private a j = a.IAB_NONE;
    private boolean n = false;
    private c.b o = new c.b() { // from class: com.roblox.client.purchase.google.b.4
        @Override // com.roblox.client.purchase.c.b
        public void a(c.a aVar) {
            if (aVar != c.a.OK && b.this.k != null) {
                b.this.k.b();
            }
            b.this.h.b("ValidationCheck: " + aVar + ".");
            switch (AnonymousClass2.f6750a[aVar.ordinal()]) {
                case 1:
                    b.this.e();
                    break;
                case 2:
                    b.this.m();
                    b.this.a(a.EnumC0165a.VALIDATION_ERROR, "PrePurchaseValidation error");
                    break;
                case 3:
                    b.this.n();
                    b.this.a(a.EnumC0165a.VALIDATION_RETRY, "PrePurchaseValidation retry");
                    break;
                case 4:
                    b.this.l();
                    b.this.a(a.EnumC0165a.VALIDATION_LIMIT, "PrePurchaseValidation limit");
                    break;
                case 5:
                    b.this.l();
                    b.this.a(a.EnumC0165a.VALIDATION_LIMIT_UNDER_13, "PrePurchaseValidation limit");
                    break;
                case 6:
                    b.this.o();
                    b.this.a(a.EnumC0165a.REQUEST_BALANCE_ERROR, "PrePurchaseValidation requestBalance failed.");
                    break;
                default:
                    b.this.p();
                    b.this.a(a.EnumC0165a.UNKNOWN, "PrePurchaseValidation Unknown error.");
                    break;
            }
        }
    };
    private e.c p = new e.c() { // from class: com.roblox.client.purchase.google.b.6
        @Override // com.roblox.client.purchase.google.a.e.c
        public void a() {
            b.this.h.a(b.this.a(), false);
        }

        @Override // com.roblox.client.purchase.google.a.e.c
        public void a(com.roblox.client.purchase.google.a.f fVar, h hVar) {
            b.this.h.b("onPurchaseFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (b.this.f6743a == null) {
                return;
            }
            if (fVar.d()) {
                if (fVar.a() == -1005) {
                    b.this.a(a.EnumC0165a.USER_CANCELLED, "User cancelled");
                } else {
                    b.this.a(a.EnumC0165a.FAILED_PURCHASE_RESPONSE, "onIabPurchaseFinished failed");
                }
                b.this.h();
                return;
            }
            b bVar = b.this;
            bVar.a(hVar, false, bVar.q);
        }
    };
    private e.a q = new e.a() { // from class: com.roblox.client.purchase.google.b.8
        @Override // com.roblox.client.purchase.google.a.e.a
        public void a(h hVar, com.roblox.client.purchase.google.a.f fVar) {
            b.this.h.b("OnConsumeFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (!fVar.c()) {
                b.this.x();
                b.this.a(a.EnumC0165a.CONSUME_ERROR, "onConsumeFinishedListener failure");
            } else {
                com.roblox.client.ad.c.a().b(com.roblox.client.ad.c.a().j() + com.roblox.client.purchase.f.a(b.this.f6745c));
                b.this.a(true, false);
                if (b.this.k != null) {
                    b.this.k.a(new com.roblox.client.purchase.google.a(a.EnumC0165a.SUCCESS));
                }
                b.this.h.a(b.this.f6745c, b.this.f6746d, b.this.f6747e);
            }
            b.this.f();
            k.b("rbx.purchaseflow", "End consumption flow.");
        }
    };
    private e.InterfaceC0166e r = new e.InterfaceC0166e() { // from class: com.roblox.client.purchase.google.b.9
        @Override // com.roblox.client.purchase.google.a.e.InterfaceC0166e
        public void a(com.roblox.client.purchase.google.a.f fVar, g gVar) {
            b.this.h.b("OnQueryInventoryFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (b.this.f6743a == null) {
                return;
            }
            if (fVar.d()) {
                k.b("rbx.purchaseflow", "Failed to query inventory: " + fVar);
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
    };
    private e.InterfaceC0166e s = new e.InterfaceC0166e() { // from class: com.roblox.client.purchase.google.b.10
        @Override // com.roblox.client.purchase.google.a.e.InterfaceC0166e
        public void a(com.roblox.client.purchase.google.a.f fVar, g gVar) {
            b.this.h.b("OnGotInventoryWithSkuDetailsFinished. Success: " + fVar.c() + ". Message: " + fVar.b() + ".");
            if (b.this.f6743a == null) {
                return;
            }
            if (fVar.d()) {
                k.b("rbx.purchaseflow", "Failed to query inventory: " + fVar);
                return;
            }
            List<h> listA = gVar.a();
            b.this.h.b("OnGotInventoryWithSkuDetailsFinished. ItemsCount: " + listA.size() + ". Items: " + b.this.a(listA));
            ListIterator<h> listIterator = listA.listIterator(listA.size());
            while (listIterator.hasPrevious()) {
                h hVarPrevious = listIterator.previous();
                if (b.this.f.equals(hVarPrevious.e())) {
                    b.this.f6745c = hVarPrevious.d();
                    j jVarA = gVar.a(b.this.f6745c);
                    if (jVarA == null) {
                        b.this.h.b("OnGotInventoryWithSkuDetailsFinished. productSku: null.");
                    } else {
                        b.this.f6746d = jVarA.c();
                        b.this.f6747e = jVarA.b();
                    }
                    b.this.a(hVarPrevious, true, (e.a) null);
                }
            }
        }
    };

    private enum a {
        IAB_GOOGLE,
        IAB_NONE
    }

    b(com.roblox.client.purchase.google.a.c cVar, com.roblox.client.http.f fVar, f fVar2) {
        this.l = null;
        this.f6743a = cVar;
        b();
        this.l = fVar;
        this.h = fVar2;
    }

    private void b() {
        this.f6743a.a(false);
        this.f6743a.a(new e.d() { // from class: com.roblox.client.purchase.google.b.1
            @Override // com.roblox.client.purchase.google.a.e.d
            public void a(com.roblox.client.purchase.google.a.f fVar) {
                if (!fVar.c()) {
                    k.b("rbx.purchaseflow", "Google IAB is not setup");
                    b.this.f6743a = null;
                    b.this.j = a.IAB_NONE;
                    return;
                }
                k.b("rbx.purchaseflow", "Google IAB is setup");
                b.this.j = a.IAB_GOOGLE;
                if (b.this.n) {
                    b.this.n = false;
                    b.this.h();
                }
            }
        });
    }

    public static b a(Context context) {
        if (m == null) {
            m = new b(new com.roblox.client.purchase.google.a.e(context, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gQsTOERl7cAXlms9RMRN+XhTyE9h1oX/Wubr0x6FthR6gqktjdHOJ7ge6RR5Tbdpnv9/uhBMjk2hZOG/UktG8gxHbC0FZYdgm2T56tZrkpmodVk3+jN4gPBDIDhSPoKPIbu0dCbiTNOudL68nJVj+jRZI3nk4UDATTktWL7mzHkkt2B9BvKoA7MLJdGVhOSQzMgcTycI14em75apxWliIUDPz11L2USvIddTT+oPvRqLGe+BmIIvS5rCqdEqpLN4G0Qn6ioCw5R6I+kBy0cDY1604Vs5/FEPI+fSk48Kme+peiX+hGVlPF6ZZ9jF6yT/vAjpvn/DEEwkMMa7JnmhwIDAQAB", 6), new com.roblox.client.http.h(), f.b());
        }
        return m;
    }

    private boolean c() {
        return !this.f.isEmpty() && this.j == a.IAB_GOOGLE;
    }

    boolean a() {
        return this.g == 0;
    }

    public boolean a(String str, String str2, Activity activity, long j, com.roblox.client.purchase.e eVar) {
        d.b("Purchase", "InGame", "Start");
        return a(str, str2, activity, j, eVar, false);
    }

    public boolean a(String str, String str2, Activity activity, com.roblox.client.purchase.e eVar, boolean z) {
        d.b("Purchase", "InApp", "Start");
        return a(str, str2, activity, 0L, eVar, z);
    }

    private boolean a(final String str, final String str2, final Activity activity, final long j, final com.roblox.client.purchase.e eVar, final boolean z) {
        k.b("rbx.purchaseflow", "productId: " + str2 + "isSubscriptionPurchase: " + z);
        this.f = str;
        this.k = eVar;
        if (!c()) {
            return false;
        }
        if (com.roblox.client.b.aF()) {
            final Handler handler = new Handler(Looper.getMainLooper());
            com.roblox.client.j.a().a(activity.getApplicationContext(), new a.InterfaceC0068a() { // from class: com.roblox.client.purchase.google.b.3
                @Override // com.b.a.a.a.InterfaceC0068a
                public void a(final boolean z2) {
                    handler.post(new Runnable() { // from class: com.roblox.client.purchase.google.b.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (z2) {
                                b.this.h.v();
                                if (com.roblox.client.b.aG()) {
                                    b.this.a(a.EnumC0165a.IS_EMULATOR, "payment not supported");
                                    return;
                                }
                            }
                            b.this.b(str, str2, activity, j, eVar, z);
                        }
                    });
                }
            });
            return true;
        }
        b(str, str2, activity, j, eVar, z);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str, String str2, Activity activity, long j, com.roblox.client.purchase.e eVar, boolean z) {
        this.k = eVar;
        this.g = j;
        this.f6745c = str2;
        this.f6744b = activity;
        this.i = z;
        k.b("rbx.purchaseflow", "isInApp = " + a());
        k.b("rbx.purchaseflow", "startPurchase: Send productId = " + this.f6745c);
        this.h.a(new com.roblox.client.purchase.d(this.f, this.f6745c, false));
        this.k.a();
        if (!com.roblox.client.b.cf() && c(str2)) {
            a(a.EnumC0165a.FAILED_NOT_ALLOWED, "Subscription purchase not allowed");
            return true;
        }
        if (com.roblox.client.b.at()) {
            a(z);
        } else {
            d();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        com.roblox.client.purchase.c cVar = new com.roblox.client.purchase.c(this.l);
        if (a()) {
            cVar.b(u.ae(), this.f6745c, this.f6747e, this.o);
        } else {
            cVar.a(u.ae(), this.f6745c, this.f6747e, this.o);
        }
    }

    private void a(final boolean z) {
        k.b("rbx.purchaseflow", "Getting price.");
        boolean zB = b(this.f6745c);
        final ArrayList arrayList = new ArrayList(1);
        arrayList.add(zB ? "android.test.purchased" : this.f6745c);
        final HandlerThread handlerThreadA = com.roblox.client.ae.u.a("Query_Sku_Details");
        Runnable runnable = new Runnable() { // from class: com.roblox.client.purchase.google.b.5
            @Override // java.lang.Runnable
            public void run() {
                g gVar = new g();
                try {
                    int iA = z ? b.this.f6743a.a("subs", gVar, arrayList) : b.this.f6743a.a("inapp", gVar, arrayList);
                    b.this.h.b("OnQuerySkuDetailsFinished. Response: " + iA + ".");
                    if (iA == 0) {
                        j jVarA = gVar.a(b.this.f6745c);
                        if (jVarA != null) {
                            b.this.f6746d = jVarA.c();
                            b.this.f6747e = jVarA.b();
                        } else {
                            b.this.y();
                            b.this.h.b("OnQuerySkuDetailsFinished. productSku: null.");
                        }
                    } else {
                        b.this.y();
                    }
                    b.this.d();
                    handlerThreadA.quit();
                } catch (Exception e2) {
                    k.e("rbx.purchaseflow", "QuerySkuDetails failed.");
                    b.this.y();
                    b.this.h.b("OnQuerySkuDetailsException. Message: " + e2.getMessage() + ".");
                    b.this.d();
                    handlerThreadA.quit();
                }
            }
        };
        handlerThreadA.start();
        com.roblox.client.ae.u.a(handlerThreadA.getLooper()).post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        com.roblox.client.purchase.e eVar = this.k;
        if (eVar != null) {
            eVar.b();
        }
        this.h.b("PurchaseStarted.");
        boolean zB = b(this.f6745c);
        try {
            String str = "android.test.purchased";
            if (com.roblox.client.b.cf() && this.i) {
                com.roblox.client.purchase.google.a.c cVar = this.f6743a;
                Activity activity = this.f6744b;
                if (!zB) {
                    str = this.f6745c;
                }
                cVar.b(activity, str, 10106, this.p, this.f);
                return;
            }
            com.roblox.client.purchase.google.a.c cVar2 = this.f6743a;
            Activity activity2 = this.f6744b;
            if (!zB) {
                str = this.f6745c;
            }
            cVar2.a(activity2, str, 10106, this.p, this.f);
        } catch (Exception e2) {
            t();
            a(a.EnumC0165a.IAB_LAUNCH_PURCHASE_FLOW_ERROR, "LaunchPurchaseFlow. Error:" + e2.getMessage());
        }
    }

    private static boolean b(String str) {
        if (!com.roblox.client.b.Y()) {
            return false;
        }
        k.b("rbx.purchaseflow", "Static Response Testing Flag is Enabled");
        if (!com.roblox.client.i.b.a()) {
            return false;
        }
        k.b("rbx.purchaseflow", "It is dev build");
        if (str.equals("com.roblox.client.robux80") || str.equals("com.roblox.client.robux90bc") || str.equals("android.test.purchased")) {
            k.b("rbx.purchaseflow", "Right product for static response");
            return true;
        }
        k.b("rbx.purchaseflow", "Wrong product for static response");
        return false;
    }

    public boolean a(int i, int i2, Intent intent) {
        this.h.b("onActivityResult(" + i + "," + i2 + ")");
        try {
            return this.f6743a.a(i, i2, intent);
        } catch (Exception e2) {
            v();
            a(a.EnumC0165a.IAB_HANDLE_ACTIVITY_RESULT_ERROR, "HandleActivityResult (User charged). Error:" + e2.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final h hVar, final boolean z, final e.a aVar) {
        com.roblox.client.purchase.e eVar = this.k;
        if (eVar != null) {
            eVar.c();
        }
        if (b(hVar.d())) {
            a(hVar, aVar);
        } else {
            new com.roblox.client.purchase.h(this.l).a(u.ad(), new GooglePurchaseReceiptRequestBody(hVar, z), new h.b() { // from class: com.roblox.client.purchase.google.b.7
                @Override // com.roblox.client.purchase.h.b
                public void a(h.a aVar2) {
                    b.this.h.b("VerifyPurchase. Response=" + aVar2 + ".ReceiptId=" + hVar.b() + ". Pending=" + z + ".");
                    int i = AnonymousClass2.f6751b[aVar2.ordinal()];
                    if (i != 1) {
                        if (i == 2) {
                            b.this.q();
                            b.this.a(a.EnumC0165a.RECEIPT_VERIFICATION_ERROR, "launchVerifyPurchaseReceipt error");
                            return;
                        } else if (i != 3) {
                            b.this.s();
                            b.this.a(a.EnumC0165a.UNKNOWN, "launchVerifyPurchaseReceipt unknown error");
                            return;
                        } else {
                            b.this.r();
                            b.this.a(a.EnumC0165a.RECEIPT_EMPTY, "launchVerifyPurchaseReceipt empty response");
                            return;
                        }
                    }
                    if (!com.roblox.client.b.cf() || !"subs".equals(hVar.a())) {
                        b.this.a(hVar, aVar);
                        return;
                    }
                    d.b("Purchase", b.this.a() ? "InApp" : "InGame", "PurchaseOK");
                    k.b("rbx.purchaseflow", "Receipt Verification Successful for Subscription");
                    com.roblox.client.ad.c.a().b(com.roblox.client.ad.c.a().j() + com.roblox.client.purchase.f.a(b.this.f6745c));
                    b.this.a(true, false);
                    if (b.this.k != null) {
                        b.this.k.a(new com.roblox.client.purchase.google.a(a.EnumC0165a.SUCCESS));
                    }
                    b.this.h.a(b.this.f6745c, b.this.f6746d, b.this.f6747e);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.purchase.google.b$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6750a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f6751b;

        static {
            int[] iArr = new int[h.a.values().length];
            f6751b = iArr;
            try {
                iArr[h.a.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6751b[h.a.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6751b[h.a.EMPTY_RESPONSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[c.a.values().length];
            f6750a = iArr2;
            try {
                iArr2[c.a.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6750a[c.a.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6750a[c.a.RETRY.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6750a[c.a.LIMIT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6750a[c.a.LIMIT_UNDER_13.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6750a[c.a.ERROR_CHECKING_BALANCE.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean c(java.lang.String r6) {
        /*
            r5 = this;
            int r0 = r6.hashCode()
            r1 = -283877325(0xffffffffef146033, float:-4.592008E28)
            r2 = 0
            r3 = 2
            r4 = 1
            if (r0 == r1) goto L2b
            r1 = -210356613(0xfffffffff376367b, float:-1.9506989E31)
            if (r0 == r1) goto L21
            r1 = -210324900(0xfffffffff376b25c, float:-1.9545328E31)
            if (r0 == r1) goto L17
            goto L35
        L17:
            java.lang.String r0 = "com.roblox.robloxmobile.robloxpremium2200"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L35
            r6 = 2
            goto L36
        L21:
            java.lang.String r0 = "com.roblox.robloxmobile.robloxpremium1000"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L35
            r6 = 1
            goto L36
        L2b:
            java.lang.String r0 = "com.roblox.robloxmobile.robloxpremium450"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L35
            r6 = 0
            goto L36
        L35:
            r6 = -1
        L36:
            if (r6 == 0) goto L3d
            if (r6 == r4) goto L3d
            if (r6 == r3) goto L3d
            return r2
        L3d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.purchase.google.b.c(java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.purchase.google.a.h hVar, e.a aVar) {
        d.b("Purchase", a() ? "InApp" : "InGame", "PurchaseOK");
        k.b("rbx.purchaseflow", "Receipt Verification Successful");
        try {
            this.f6743a.a(hVar, aVar);
        } catch (Exception e2) {
            u();
            a(a.EnumC0165a.IAB_CONSUME_ERROR, "IABConsume. Error:" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f = "";
        this.f6744b = null;
        this.f6745c = "";
        this.g = 0L;
        this.f6746d = null;
        this.f6747e = null;
    }

    private boolean g() {
        return this.f6743a != null && this.j == a.IAB_GOOGLE;
    }

    public void a(String str) {
        this.f = str;
        if (g()) {
            h();
        } else {
            this.n = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        k.b("rbx.purchaseflow", "Do Google Purchase GrantPending");
        try {
            if (com.roblox.client.b.at()) {
                this.f6743a.a(true, (List<String>) null, this.s);
            } else {
                this.f6743a.a(this.r);
            }
        } catch (Exception e2) {
            w();
            a(a.EnumC0165a.IAB_QUERY_INVENTORY_ERROR, "GrantPendingPurchases. Error:" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(List<com.roblox.client.purchase.google.a.h> list) {
        ListIterator<com.roblox.client.purchase.google.a.h> listIterator = list.listIterator(list.size());
        String str = "";
        while (listIterator.hasPrevious()) {
            str = str + listIterator.previous().d() + "; ";
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a.EnumC0165a enumC0165a, String str) {
        com.roblox.client.purchase.e eVar = this.k;
        if (eVar != null) {
            eVar.a(new com.roblox.client.purchase.google.a(enumC0165a));
        }
        if (str != null && str.length() > 0) {
            this.h.b(str);
        }
        a(false, enumC0165a == a.EnumC0165a.USER_CANCELLED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2) {
        if (this.k instanceof m) {
            if (this.g != 0 && !TextUtils.isEmpty(this.f6745c)) {
                ((m) this.k).a(z, this.g, this.f6745c);
            } else {
                k.d("rbx.purchaseflow", "Ignore calling inGamePurchaseFinished: mPlayerPtr=" + this.g + ". mProductId=" + this.f6745c + ".");
            }
        }
        if (z) {
            i();
        } else if (z2) {
            j();
        } else {
            k();
        }
    }

    private void i() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.b(a(), false);
    }

    private void j() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.d(a(), false);
    }

    private void k() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.c(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.e(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.f(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.g(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.h(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.i(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.j(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.k(a(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.l(a(), false);
    }

    private void t() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.b(a());
    }

    private void u() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.c(a());
    }

    private void v() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.d(a());
    }

    private void w() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.e(a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.f(a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (com.roblox.client.i.b.a()) {
            return;
        }
        this.h.g(a());
    }
}
