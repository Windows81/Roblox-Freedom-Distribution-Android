package com.roblox.client.game;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.roblox.client.RbxKeyboard;
import com.roblox.client.o;
import com.roblox.client.r;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.s.c;
import com.roblox.client.u;
import com.roblox.engine.b;
import com.roblox.engine.jni.EngineExitJavaCallback2;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.NativeGLJavaInterface;
import com.roblox.engine.jni.RunOnMainEngineJavaCallback;
import org.fmod.FMOD;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityGame extends r implements n, b.a {
    private static boolean C;
    private com.roblox.engine.b A;
    private ViewTreeObserver.OnGlobalLayoutListener B;
    private ViewGroup D;
    private com.roblox.client.l E;
    protected com.roblox.engine.a.a k;
    private CountDownTimer q;
    private boolean r;
    private BroadcastReceiver t;
    private f u;
    private o v;
    private Handler w;
    private p x;
    private long y;
    private final String l = "rbx.game";
    private final long m = 30000;
    private ServiceConnection s = null;
    private com.roblox.engine.e z = new com.roblox.engine.e();

    private boolean d(int i) {
        return (i == 4 || i == 25 || i == 24) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    @Override // androidx.appcompat.app.c, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!d(keyEvent.getKeyCode())) {
            return super.onKeyDown(i, keyEvent);
        }
        NativeGLInterface.nativePassKeyEvent(true, keyEvent.getScanCode(), keyEvent.getKeyCode(), keyEvent.getRepeatCount() > 0);
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return super.onKeyLongPress(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!d(keyEvent.getKeyCode())) {
            return super.onKeyUp(i, keyEvent);
        }
        NativeGLInterface.nativePassKeyEvent(false, keyEvent.getScanCode(), keyEvent.getKeyCode(), keyEvent.getRepeatCount() > 0);
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return super.onKeyMultiple(i, i2, keyEvent);
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        com.roblox.client.ae.k.b("rbx.game", "onCreate: savedInstanceState = " + bundle);
        com.roblox.client.s.c.d().a(this, c.b.APP_INIT_TYPE_GAME);
        this.w = new Handler(Looper.getMainLooper());
        Intent intent = getIntent();
        super.onCreate(bundle);
        if (intent == null) {
            com.roblox.client.analytics.d.a("Launching ActivityGame without Intent");
            finish();
            return;
        }
        if (!com.roblox.client.b.a() && bundle != null) {
            com.roblox.client.ae.k.b("rbx.game", "onCreate: No Settings with non-null savedInstanceState. finish() this Game activity.");
            setResult(103);
            finish();
            return;
        }
        FMOD.init(this);
        long longExtra = intent.getLongExtra("roblox_browser_tracker_id", -1L);
        if (longExtra != -1) {
            com.roblox.client.j.a().a(longExtra);
        }
        if (bundle == null) {
            com.roblox.client.analytics.d.a("ActivityGame", "Create");
        }
        setContentView(o.g.activity_glview);
        s();
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.roblox.client.game.ActivityGame.1
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if ((i & 4) == 0) {
                    ActivityGame.this.s();
                }
            }
        });
        if (!p.b()) {
            I();
        }
        this.E = com.roblox.client.l.a();
        j jVar = new j();
        long longExtra2 = intent.getLongExtra("roblox_placeId", 0L);
        this.y = longExtra2;
        jVar.f6301c = longExtra2;
        jVar.f6302d = intent.getStringExtra("roblox_accessCode");
        jVar.f6303e = intent.getStringExtra("roblox_gameId");
        jVar.f6300b = intent.getLongExtra("roblox_userId", 0L);
        jVar.f = intent.getLongExtra("roblox_conversationId", 0L);
        jVar.f6299a = intent.getIntExtra("roblox_joinRequestType", -1);
        jVar.g = intent.getStringExtra("roblox_referralPage");
        this.D = (ViewGroup) findViewById(o.f.fragment_glview_container);
        NativeGLJavaInterface.setExitImplementation(new EngineExitJavaCallback2() { // from class: com.roblox.client.game.ActivityGame.2
            @Override // com.roblox.engine.jni.EngineExitJavaCallback2
            public void a() {
                ActivityGame.this.y();
            }
        });
        u.as();
        if (!C) {
            C = true;
            NativeGLInterface.nativeGameGlobalInit();
        }
        NativeGLJavaInterface.setImplementation(new RunOnMainEngineJavaCallback(this.w, new a()));
        f fVar = new f(this, jVar);
        this.u = fVar;
        this.D.addView(fVar.a(LayoutInflater.from(this), this.D, (Bundle) null));
        a(this.D);
        SurfaceView surfaceViewC = this.u.c();
        com.roblox.engine.b bVar = new com.roblox.engine.b(this, surfaceViewC, this);
        this.A = bVar;
        surfaceViewC.setOnTouchListener(bVar);
        this.k = new com.roblox.engine.a.a(this) { // from class: com.roblox.client.game.ActivityGame.3
            @Override // com.roblox.engine.a.a
            protected boolean b() {
                return true;
            }

            @Override // com.roblox.engine.a.a
            public com.roblox.engine.a.b a() {
                return com.roblox.engine.a.b.a(ActivityGame.this.D.getRootView(), ActivityGame.this.getWindowManager(), null, ActivityGame.this.L().b());
            }
        };
        this.B = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.roblox.client.game.ActivityGame.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ActivityGame.this.k.a(false);
            }
        };
        this.D.getViewTreeObserver().addOnGlobalLayoutListener(this.B);
        if (com.roblox.client.b.cl() && this.t == null) {
            this.t = n();
        }
    }

    private void a(View view) {
        this.v = new g(this, (RbxKeyboard) view.findViewById(o.f.gl_edit_text));
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.roblox.client.ae.k.c("rbx.game", "onActivityResult: requestCode = " + i);
        this.u.a(i, i2, intent);
        com.roblox.client.purchase.google.b bVarA = com.roblox.client.purchase.google.b.a(this);
        if (bVarA == null || !bVarA.a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        } else {
            com.roblox.client.ae.k.c("rbx.game", "onActivityResult handled by Store Manager");
        }
    }

    @Override // com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.roblox.client.ae.k.c("rbx.game", "onNewIntent");
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    public void onBackPressed() {
        if (j_()) {
            NativeGLInterface.nativeHandleBackPressed();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        NativeGLInterface.nativeOnFragmentStart();
        getWindow().addFlags(128);
        w();
        if (r()) {
            this.s = RealtimeService.a(this);
        }
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        super.onStop();
        NativeGLInterface.nativeOnFragmentStop();
        getWindow().clearFlags(128);
        v();
        ServiceConnection serviceConnection = this.s;
        if (serviceConnection != null) {
            RealtimeService.a(serviceConnection);
            this.s = null;
        }
    }

    @Override // com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.E.d().b();
        this.A.a();
    }

    @Override // com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.E.d().c();
        this.A.a(false);
    }

    @Override // com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    public void onDestroy() {
        boolean zIsFinishing;
        com.roblox.client.ae.k.b("rbx.game", "onDestroy: isFinishing = " + isFinishing());
        q();
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(null);
        if (com.roblox.client.b.cl()) {
            unregisterReceiver(this.t);
            this.t = null;
        }
        if (com.roblox.client.b.bT()) {
            zIsFinishing = !isChangingConfigurations();
        } else {
            zIsFinishing = isFinishing();
        }
        com.roblox.client.ae.k.b("rbx.game", "onDestroy: shutdown = " + zIsFinishing);
        if (zIsFinishing && this.r) {
            com.roblox.client.ae.k.b("rbx.game", "onDestroy: Call stopDataModel (SYNC) if the GL fragment is still there...");
            this.u.b();
        }
        if (Build.VERSION.SDK_INT == 27 && ((u.j() && com.roblox.client.b.ch()) || (u.i() && com.roblox.client.b.ci()))) {
            I();
        }
        FMOD.close();
        super.onDestroy();
    }

    @Override // com.roblox.client.r, android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (i != 15) {
            return;
        }
        com.roblox.client.ae.k.d("rbx.game", "TRIM_MEMORY_RUNNING_CRITICAL: notify the engine...");
        NativeGLInterface.nativeAppBridgeV2OnLowMemory();
    }

    @Override // com.roblox.client.game.n
    public void a(long j) {
        com.roblox.client.ae.k.b("rbx.game", "onGameStarting: placeId = " + j);
        this.E.d().d();
    }

    @Override // com.roblox.client.game.n
    public void b(long j) {
        com.roblox.client.ae.k.b("rbx.game", "onGameStarted: placeId = " + j);
        this.r = true;
        this.E.d().e();
    }

    public void c(long j) {
        com.roblox.client.ae.k.b("rbx.game", "onGameLoaded: placeId = " + j);
    }

    public void a(boolean z) {
        com.roblox.client.ae.k.b("rbx.game", "onGameEnded: success = " + z);
        com.roblox.client.analytics.d.a("ActivityGame", "Ended", z ? "Ok" : "Error");
    }

    @Override // com.roblox.client.game.n
    public void m() {
        com.roblox.client.ae.k.b("rbx.game", "onSettingsNotLoaded (detected from Game fragment)");
        if (isFinishing()) {
            return;
        }
        setResult(103);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.roblox.client.ae.k.b("rbx.game", "onGameTimeoutInBackground:");
        u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (!isFinishing()) {
            com.roblox.client.ae.k.b("rbx.game", "endGameInBackground: call finish() on this GL activity.");
            setResult(102);
            finish();
        }
        a(true);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.roblox.client.game.ActivityGame$5] */
    private void v() {
        if (isFinishing()) {
            return;
        }
        this.q = new CountDownTimer(30000L, 1000L) { // from class: com.roblox.client.game.ActivityGame.5
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                com.roblox.client.ae.k.b("rbx.game", "CountDownTimer::onFinish -> onGameTimeoutInBackground()");
                ActivityGame.this.t();
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        CountDownTimer countDownTimer = this.q;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.q = null;
        }
    }

    protected BroadcastReceiver n() {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.roblox.client.game.ActivityGame.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                com.roblox.client.ae.k.b("rbx.game", "Device language change detected. Shutting down active game");
                ActivityGame.this.w();
                ActivityGame.this.u();
            }
        };
        registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
        return broadcastReceiver;
    }

    public class a extends c {
        public a() {
        }

        @Override // com.roblox.client.game.c
        public o a() {
            return ActivityGame.this.v;
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(long j, String str, String str2) {
            ActivityGame.this.u.a(j, str, str2);
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(int i) {
            com.roblox.client.ae.k.b("rbx.game", "exitGameWithError: errorID = " + i);
            com.roblox.client.w.a.a("SessionReporterState_GameLoaded", ActivityGame.this.y);
            ActivityGame activityGame = ActivityGame.this;
            activityGame.e(activityGame.f(i));
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(String str) {
            ActivityGame.this.A.a(true);
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void b(int i) {
            com.roblox.client.ae.k.c("rbx.game", "screenOrientationChanged: newOrientation = " + i);
            if (i == 0) {
                ActivityGame.this.g(8);
                return;
            }
            if (i == 1) {
                ActivityGame.this.g(0);
                return;
            }
            if (i == 2) {
                ActivityGame.this.g(6);
            } else if (i == 3) {
                ActivityGame.this.g(7);
            } else {
                if (i != 4) {
                    return;
                }
                ActivityGame.this.g(2);
            }
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(long j) {
            com.roblox.client.ae.k.c("rbx.game", "gameLoadedCallback() " + j);
            ActivityGame.this.c(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(final int i) {
        a(new Runnable() { // from class: com.roblox.client.game.ActivityGame.7
            @Override // java.lang.Runnable
            public void run() {
                com.roblox.client.locale.b.a().b(ActivityGame.this);
                new AlertDialog.Builder(ActivityGame.this).setMessage(i).setNegativeButton(ActivityGame.this.getString(o.j.CommonUI_Messages_Action_Close), new DialogInterface.OnClickListener() { // from class: com.roblox.client.game.ActivityGame.7.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        dialogInterface.dismiss();
                        ActivityGame.this.x();
                    }
                }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.game.ActivityGame.7.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        dialogInterface.dismiss();
                        ActivityGame.this.x();
                    }
                }).create().show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        y();
        a(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (isFinishing()) {
            return;
        }
        q();
        setResult(102);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int f(int i) {
        if (i == 3) {
            return o.j.Game_Launch_Response_GameStartFailureDisabled;
        }
        if (i == 4) {
            return o.j.Game_Launch_Response_GameStartFailureError;
        }
        if (i == 5) {
            return o.j.Game_Launch_Response_GameStartFailureGameEnded;
        }
        if (i == 6) {
            return o.j.Game_Launch_Response_GameStartFailureGameFull;
        }
        switch (i) {
            case 10:
                return o.j.Game_Launch_Response_GameStartFailureUserLeft;
            case 11:
                return o.j.Game_Launch_Response_GameStartFailureRestricted;
            case 12:
                return o.j.Game_Launch_Response_GameStartFailureJoinScript;
            default:
                com.roblox.client.ae.k.d("rbx.game", "(Game failed to start) Unexpected errorId=[" + i + "].");
                return o.j.Game_Launch_Response_GameStartFailureUnknown;
        }
    }

    @Override // com.roblox.engine.b.a
    public float o() {
        return this.z.a(this);
    }

    @Override // com.roblox.engine.b.a
    public boolean j_() {
        return this.u.e();
    }

    public void a(Runnable runnable) {
        this.w.post(runnable);
    }

    public void q() {
        if (this.B != null) {
            com.roblox.client.ae.k.c("rbx.screen", "removing GlobalLayoutListener");
            this.D.getViewTreeObserver().removeOnGlobalLayoutListener(this.B);
            this.B = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i) {
        if (this.x == null) {
            this.x = new b();
        }
        this.x.b(i);
    }

    private class b extends p {
        private b() {
        }

        @Override // com.roblox.client.game.p
        public void a(int i) {
            com.roblox.client.ae.k.b("rbx.game", "setting orientation: " + i);
            ActivityGame.this.setRequestedOrientation(i);
        }
    }

    protected boolean r() {
        return com.roblox.client.b.y() || com.roblox.client.b.bW();
    }
}
