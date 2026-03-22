package com.roblox.client.game;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.roblox.client.game.b;
import com.roblox.client.o;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.roblox.client.purchase.google.b f6269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f6270b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f6272d;
    private SurfaceView h;
    private n k;
    private ActivityGame l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6271c = "rbx.game";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6273e = 0;
    private String f = "";
    private boolean g = false;
    private int i = -1;
    private m j = new b();

    public void a(int i, int i2, Intent intent) {
    }

    public class b implements m {
        @Override // com.roblox.client.purchase.e
        public void a() {
        }

        @Override // com.roblox.client.purchase.e
        public void b() {
        }

        @Override // com.roblox.client.purchase.e
        public void c() {
        }

        public b() {
        }

        @Override // com.roblox.client.purchase.e
        public void a(final com.roblox.client.purchase.f fVar) {
            final CharSequence charSequenceA;
            ActivityGame activityGameA = f.this.a();
            if (activityGameA == null) {
                return;
            }
            if (fVar.b()) {
                charSequenceA = f.this.a(o.j.Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid);
            } else {
                charSequenceA = fVar.a(activityGameA);
            }
            f.this.a(new Runnable() { // from class: com.roblox.client.game.f.b.1
                @Override // java.lang.Runnable
                public void run() {
                    if (fVar.a()) {
                        f.this.a(charSequenceA);
                    } else {
                        f.this.a().d(charSequenceA.toString());
                    }
                }
            });
        }

        @Override // com.roblox.client.game.m
        public void a(boolean z, long j, String str) {
            f.this.a(z, j, str);
        }
    }

    public f(ActivityGame activityGame, j jVar) {
        this.l = activityGame;
        this.k = activityGame;
        this.f6270b = jVar;
    }

    public ActivityGame a() {
        return this.l;
    }

    public String a(int i) {
        return this.l.getString(i);
    }

    public void a(Runnable runnable) {
        a().a(runnable);
    }

    public void a(CharSequence charSequence) {
        ActivityGame activityGameA = a();
        if (activityGameA == null) {
            return;
        }
        androidx.appcompat.app.b bVarB = new b.a(activityGameA).b();
        TextView textView = new TextView(activityGameA);
        String string = activityGameA.getString(o.j.CommonUI_Messages_Response_RobloxSupport);
        int iIndexOf = charSequence.toString().indexOf(string);
        com.roblox.client.ae.a.b.a(textView, charSequence.toString(), new com.roblox.client.ae.a.c(activityGameA, null, string, iIndexOf, iIndexOf + string.length()));
        textView.setTextSize(20.0f);
        textView.setEllipsize(null);
        bVarB.a(textView, 150, 100, 150, 100);
        bVarB.setCanceledOnTouchOutside(true);
        try {
            bVarB.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }

    public void b() {
        com.roblox.client.ae.k.b("rbx.game", "stopDataModel: dataModel = GAME, surfaceState = " + this.i + ", graphicsStarted = " + this.g);
        if (this.g) {
            this.g = false;
            NativeGLInterface.nativeAppBridgeV2PauseGame();
        }
        NativeGLInterface.nativeAppBridgeV2LeaveGame();
        this.i = -1;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        com.roblox.client.ae.k.c("rbx.game", "onCreateView: savedInstanceState = " + bundle + ", surfaceState = " + this.i);
        if (!com.roblox.client.b.a() && bundle != null) {
            com.roblox.client.ae.k.d("rbx.game", "onCreateView: No Settings with non-null savedInstanceState. No need to create view.");
            this.k.m();
            return null;
        }
        this.f6269a = com.roblox.client.purchase.google.b.a(a());
        View viewInflate = layoutInflater.inflate(o.g.fragment_glview, viewGroup, false);
        if (u.k() && bundle != null && this.i == 2) {
            com.roblox.client.ae.k.b("rbx.game", "onCreateView: The game is being recreated. Keep the current surface state.");
        } else {
            this.i = 0;
        }
        this.f6272d = (FrameLayout) viewInflate.findViewById(o.f.loading_layout);
        a(viewInflate);
        new b.e(new a(this.f6270b.f6301c)).execute(new Void[0]);
        return viewInflate;
    }

    public SurfaceView c() {
        return this.h;
    }

    private class a implements b.g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f6276b;

        public a(long j) {
            this.f6276b = j;
        }

        @Override // com.roblox.client.game.b.g
        public void a(int i) {
            com.roblox.client.w.a.a("SessionReporterState_GameLoadStart", this.f6276b);
            f.this.h.setVisibility(0);
            f.this.f6272d.setVisibility(8);
        }
    }

    public float d() {
        return a().o();
    }

    private com.roblox.engine.jni.model.c f() {
        String strC = com.roblox.engine.f.c();
        if (TextUtils.isEmpty(strC)) {
            strC = com.roblox.engine.f.a().c(a());
        }
        com.roblox.client.ae.k.c("rbx.game", "getPlatformParams: assetFolderPath = " + strC);
        com.roblox.engine.jni.model.c cVar = new com.roblox.engine.jni.model.c();
        cVar.assetFolderPath = strC;
        cVar.isTouchDevice = a().getPackageManager().hasSystemFeature("android.hardware.touchscreen");
        cVar.isMouseDevice = a().getPackageManager().hasSystemFeature("android.hardware.type.pc");
        cVar.isKeyboardDevice = a().getPackageManager().hasSystemFeature("android.hardware.type.pc");
        cVar.dpiScale = d();
        return cVar;
    }

    private void a(long j, long j2, String str, String str2, long j3, int i, String str3) {
        com.roblox.client.ae.k.b("rbx.game", "startGame");
        Surface surface = this.h.getHolder().getSurface();
        com.roblox.engine.jni.model.a aVar = new com.roblox.engine.jni.model.a(f());
        aVar.isTablet = u.i();
        this.k.a(j);
        NativeGLInterface.nativeAppBridgeV2StartGame(surface, aVar, null, j, j2, str, str2, com.roblox.client.ad.c.a().i(), com.roblox.client.ad.c.a().e(), j3, i, str3);
        this.k.b(j);
    }

    public boolean e() {
        return this.i == 2;
    }

    private void a(View view) {
        com.roblox.client.ae.k.c("rbx.game", "initSurfaceView: ...");
        SurfaceView surfaceView = (SurfaceView) view.findViewById(o.f.surfaceview);
        this.h = surfaceView;
        surfaceView.setFocusable(true);
        this.h.setFocusableInTouchMode(true);
        this.h.getHolder().addCallback(this);
    }

    @Deprecated
    private void g() {
        if (Build.MODEL.equals("SM-T230NU")) {
            ViewGroup.LayoutParams layoutParams = this.h.getLayoutParams();
            layoutParams.width = 1280;
            layoutParams.height = 800;
            this.h.setLayoutParams(layoutParams);
            this.h.getHolder().setFixedSize(960, 600);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        com.roblox.client.ae.k.b("rbx.game", "surfaceChanged: ...");
        g();
        if (com.roblox.client.b.au()) {
            if (this.g) {
                h();
                return;
            }
            return;
        }
        h();
    }

    private void h() {
        com.roblox.client.ae.k.b("rbx.game", "updateSurface() surfaceState = " + this.i);
        ActivityGame activityGameA = a();
        if (activityGameA == null || activityGameA.isFinishing()) {
            com.roblox.client.ae.k.b("rbx.game", "updateSurface() activity finishing ignore update");
            return;
        }
        int i = this.i;
        if (i == 0) {
            this.i = 2;
            this.g = true;
            a(this.f6270b.f6301c, this.f6270b.f6300b, this.f6270b.f6302d, this.f6270b.f6303e, this.f6270b.f, this.f6270b.f6299a, this.f6270b.g);
        } else if (i == 2) {
            Surface surface = this.h.getHolder().getSurface();
            if (this.g) {
                com.roblox.client.ae.k.b("rbx.game", "updateSurface: nativeUpdateGraphics");
                NativeGLInterface.nativeAppBridgeV2UpdateSurfaceGame(surface, d());
            } else {
                com.roblox.client.ae.k.b("rbx.game", "updateSurface: nativeStartUpGraphics");
                this.g = true;
                NativeGLInterface.nativeAppBridgeV2ResumeGame(surface, d());
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        com.roblox.client.ae.k.b("rbx.game", "surfaceCreated: ...");
        NativeGLInterface.setTaskSchedulerBackgroundMode(false, "FGLV.surfaceCreated");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        com.roblox.client.ae.k.b("rbx.game", "surfaceDestroyed: surfaceState = " + this.i + ", graphicsStarted = " + this.g);
        if (this.i != 2) {
            return;
        }
        if (this.g) {
            this.g = false;
            NativeGLInterface.nativeAppBridgeV2PauseGame();
        }
        ActivityGame activityGameA = a();
        if (activityGameA == null || activityGameA.isFinishing()) {
            return;
        }
        com.roblox.client.ae.k.b("rbx.game", "surfaceDestroyed() activity finishing ignore task scheduler");
        NativeGLInterface.setTaskSchedulerBackgroundMode(true, "FGLV.surfaceDestroyed");
    }

    public void a(long j, String str, String str2) {
        this.f6273e = j;
        this.f = str;
        if (!this.f6269a.a(str2, str, a(), j, this.j)) {
            a(new Runnable() { // from class: com.roblox.client.game.f.1
                @Override // java.lang.Runnable
                public void run() {
                    f.this.a().c(o.j.Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay);
                }
            });
            a(false, j, str);
            com.roblox.client.analytics.d.a("GoogleStoreInitiate", "InGame", "FailedPlayStoreNotSetUp");
            return;
        }
        com.roblox.client.analytics.d.a("GoogleStoreInitiate", "InGame", "Started");
    }

    public void a(boolean z, long j, String str) {
        com.roblox.client.ae.k.b("rbx.purchaseflow", "In-Game purchase finished: success = " + z + ", player=" + j + ", productId=" + str);
        if (this.i != 2) {
            com.roblox.client.ae.k.b("rbx.purchaseflow", "FragmentGlView.inGamePurchaseFinished: Singleton is null or surface is not created.");
            return;
        }
        if (this.f6273e == 0) {
            com.roblox.client.ae.k.b("rbx.purchaseflow", "FragmentGlView.inGamePurchaseFinished: playerPtr == 0.");
            return;
        }
        com.roblox.client.ae.k.b("rbx.purchaseflow", "Native call. Success=" + z + ", player=" + j + ", productId=" + str);
        NativeGLInterface.nativeInGamePurchaseFinished(z, j, str);
        this.f = "";
        this.f6273e = 0L;
    }
}
