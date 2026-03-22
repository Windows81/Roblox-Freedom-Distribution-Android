package com.roblox.client.purchase;

import android.os.Handler;
import android.os.Looper;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.roblox.client.ae.k;
import com.roblox.client.game.m;
import com.roblox.client.o;
import com.roblox.client.r;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.purchase.a f6667d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6664a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6665b = "";
    private m f = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f6668e = new Handler(Looper.getMainLooper());

    public class a implements m {
        @Override // com.roblox.client.purchase.e
        public void a() {
        }

        @Override // com.roblox.client.purchase.e
        public void b() {
        }

        @Override // com.roblox.client.purchase.e
        public void c() {
        }

        public a() {
        }

        @Override // com.roblox.client.purchase.e
        public void a(final f fVar) {
            final CharSequence charSequenceA;
            r rVarAq = b.this.f6667d.aq();
            if (rVarAq == null) {
                return;
            }
            if (fVar.b()) {
                charSequenceA = b.this.a(o.j.Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid);
            } else {
                charSequenceA = fVar.a(rVarAq);
            }
            b.this.a(new Runnable() { // from class: com.roblox.client.purchase.b.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!fVar.a()) {
                        b.this.f6667d.aq().d(charSequenceA.toString());
                    } else {
                        b.this.a(charSequenceA);
                    }
                }
            });
        }

        @Override // com.roblox.client.game.m
        public void a(boolean z, long j, String str) {
            b.this.a(z, j, str);
        }
    }

    public b(com.roblox.client.purchase.a aVar, boolean z) {
        this.f6667d = aVar;
        this.f6666c = z;
    }

    public void a(Runnable runnable) {
        this.f6668e.post(runnable);
    }

    public String a(int i) {
        return this.f6667d.aq().getString(i);
    }

    public void a(long j, String str, String str2) {
        this.f6664a = j;
        this.f6665b = str;
        r rVarAq = this.f6667d.aq();
        if (!com.roblox.client.purchase.google.b.a(rVarAq).a(str2, str, rVarAq, j, this.f)) {
            a(new Runnable() { // from class: com.roblox.client.purchase.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.f6667d.aq().c(o.j.Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay);
                }
            });
            a(false, j, str);
            if (this.f6666c) {
                com.roblox.client.analytics.d.a("GoogleStoreInitiate", "InApp", "FailedPlayStoreNotSetUp");
                return;
            } else {
                com.roblox.client.analytics.d.a("GoogleStoreInitiate", "InGame", "FailedPlayStoreNotSetUp");
                return;
            }
        }
        if (this.f6666c) {
            com.roblox.client.analytics.d.a("GoogleStoreInitiate", "InApp", "Started");
        } else {
            com.roblox.client.analytics.d.a("GoogleStoreInitiate", "InGame", "Started");
        }
    }

    public void a(CharSequence charSequence) {
        if (this.f6667d.aq() == null) {
            return;
        }
        androidx.appcompat.app.b bVarB = new b.a(this.f6667d.aq()).b();
        TextView textView = new TextView(this.f6667d.aq());
        String string = this.f6667d.aq().getString(o.j.CommonUI_Messages_Response_RobloxSupport);
        int iIndexOf = charSequence.toString().indexOf(string);
        com.roblox.client.ae.a.b.a(textView, charSequence.toString(), new com.roblox.client.ae.a.c(this.f6667d.aq(), null, string, iIndexOf, iIndexOf + string.length()));
        textView.setTextSize(20.0f);
        textView.setEllipsize(null);
        bVarB.a(textView, 150, 100, 150, 100);
        bVarB.setCanceledOnTouchOutside(true);
        try {
            bVarB.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, long j, String str) {
        k.b("rbx.purchaseflow", "In-App purchase finished: success = " + z + ", player=" + j + ", productId=" + str);
        if (this.f6664a == 0) {
            k.b("rbx.purchaseflow", "AppShellFragment.inAppPurchaseFinished: playerPtr == 0.");
            return;
        }
        k.b("rbx.purchaseflow", "Native call. Success=" + z + ", player=" + j + ", productId=" + str);
        NativeGLInterface.nativeInGamePurchaseFinished(z, j, str);
        this.f6665b = "";
        this.f6664a = 0L;
    }
}
