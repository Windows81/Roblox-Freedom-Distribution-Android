package com.roblox.client;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Process;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.View;
import com.roblox.client.FragmentGlView;
import com.roblox.client.i.c;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: classes.dex */
public class ActivityGlView extends l implements FragmentGlView.b {
    private static int m = 0;
    private static CountDownTimer q;
    private static boolean r;
    private boolean p = true;

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    private boolean d(int i) {
        return (i == 4 || i == 25 || i == 24) ? false : true;
    }

    @Override // android.support.v7.app.c, android.app.Activity, android.view.KeyEvent.Callback
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

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        com.roblox.client.util.g.b("ActivityGlView", "onCreate: savedInstanceState = " + bundle);
        com.roblox.client.i.c.a().a(this, c.b.APP_INIT_TYPE_GAME);
        Intent intent = getIntent();
        if (intent != null) {
            b.a(intent.getStringExtra("roblox_app_settings_for_engine"));
        }
        super.onCreate(bundle);
        if (intent == null) {
            com.roblox.client.b.c.a("Launching ActivityGlView without Intent");
            finish();
            return;
        }
        int intExtra = intent.getIntExtra("roblox_launcher_pid", -1);
        com.roblox.client.util.g.b("ActivityGlView", "onCreate: launcherPid:" + intExtra + ", Debugger:" + (intent.getBooleanExtra("roblox_launcher_debugger_attached", false) ? "attached" : "none") + ", differentProcess:" + (Process.myPid() != intExtra));
        long longExtra = intent.getLongExtra("roblox_browser_tracker_id", -1L);
        if (longExtra != -1) {
            c.a().a(longExtra);
        }
        com.roblox.client.i.d.a().a(getApplicationContext());
        if (!b.ab() || bundle == null) {
            m++;
            if (m > 1) {
                com.roblox.client.util.g.d("ActivityGlView", "Game being launched in the last process. launch-count = " + m);
                if (!intent.getBooleanExtra("roblox_enable_game_in_last_process", true)) {
                    setResult(101);
                    finish();
                    return;
                }
                com.roblox.client.b.c.a("ActivityGlView", "Create", "OldProcess", Long.valueOf(m));
            } else {
                com.roblox.client.b.c.a("ActivityGlView", "Create", "NewProcess");
            }
        }
        this.p = intent.getBooleanExtra("roblox_enable_end_game_process", true);
        com.roblox.client.locale.a.a().b((com.roblox.client.locale.c) intent.getSerializableExtra("locale_value"));
        com.roblox.client.locale.a.a().c((com.roblox.client.locale.c) intent.getSerializableExtra("ugc_locale_value"));
        setContentView(R.layout.activity_glview);
        j();
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.roblox.client.ActivityGlView.1
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if ((i & 4) == 0) {
                    ActivityGlView.this.j();
                }
            }
        });
        getWindow().addFlags(128);
        if (!intent.getBooleanExtra("roblox_enable_portrait_mode", false)) {
            setRequestedOrientation(6);
        } else {
            s();
        }
        FragmentGlView fragmentGlViewN = n();
        if (fragmentGlViewN == null) {
            fragmentGlViewN = new FragmentGlView();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("vrEnabled", intent.getBooleanExtra("roblox_vrMode", false));
            bundle2.putLong("placeId", intent.getLongExtra("roblox_placeId", 0L));
            bundle2.putString("accessCode", intent.getStringExtra("roblox_accessCode"));
            bundle2.putString("gameId", intent.getStringExtra("roblox_gameId"));
            bundle2.putLong("userId", intent.getLongExtra("roblox_userId", 0L));
            bundle2.putInt("joinRequestType", intent.getIntExtra("roblox_joinRequestType", -1));
            bundle2.putBoolean("is3DApp", false);
            fragmentGlViewN.setArguments(bundle2);
        }
        e().a().b(R.id.fragment_glview_container, fragmentGlViewN, "GlView_fragment_tag").c();
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.roblox.client.util.g.c("ActivityGlView", "onActivityResult: requestCode = " + i);
        if (this.o == null || !this.o.a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        } else {
            com.roblox.client.util.g.c("ActivityGlView", "onActivityResult handled by Store Manager");
        }
    }

    @Override // com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.roblox.client.util.g.c("ActivityGlView", "onNewIntent");
    }

    @Override // android.support.v4.app.h, android.app.Activity
    public void onBackPressed() {
        if (b.aF()) {
            FragmentGlView fragmentGlViewN = n();
            if (fragmentGlViewN != null && fragmentGlViewN.isSurfaceCreated()) {
                NativeGLInterface.nativeHandleBackPressed();
                return;
            } else {
                super.onBackPressed();
                return;
            }
        }
        NativeGLInterface.nativeHandleBackPressed();
    }

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        RobloxSettings.enableNDKProfiler(true);
        m();
    }

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        super.onStop();
        RobloxSettings.enableNDKProfiler(false);
        l();
    }

    @Override // com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    public void onDestroy() {
        com.roblox.client.util.g.b("ActivityGlView", "onDestroy: isFinishing = " + isFinishing());
        if (RobloxSettings.isChrome() && isFinishing() && !r && !b.aL()) {
            com.roblox.client.util.g.b("ActivityGlView", "onDestroy: Call stopDataModel (SYNC) if the GL fragment is still there...");
            FragmentGlView fragmentGlViewN = n();
            if (fragmentGlViewN != null) {
                fragmentGlViewN.stopDataModel();
            }
        }
        super.onDestroy();
    }

    @Override // com.roblox.client.FragmentGlView.b
    public void a(long j) {
        com.roblox.client.util.g.b("ActivityGlView", "onGameStarted: placeId = " + j);
        r = false;
    }

    @Override // com.roblox.client.FragmentGlView.b
    public void b(long j) {
        com.roblox.client.util.g.b("ActivityGlView", "onGameLoaded: placeId = " + j);
    }

    @Override // com.roblox.client.FragmentGlView.b
    public void b(boolean z) {
        com.roblox.client.util.g.b("ActivityGlView", "onGameEnded: success = " + z);
        r = true;
        com.roblox.client.b.c.a("ActivityGlView", "Ended", z ? "Ok" : "Error");
        if (this.p) {
            new Handler(getMainLooper()).postDelayed(new Runnable() { // from class: com.roblox.client.ActivityGlView.2
                @Override // java.lang.Runnable
                public void run() {
                    com.roblox.client.util.g.b("ActivityGlView", "onGameEnded: About to kill this 'game' process by System.exit().");
                    System.exit(0);
                }
            }, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        FragmentGlView fragmentGlViewN;
        com.roblox.client.util.g.b("ActivityGlView", "onGameTimeoutInBackground:");
        if (b.af() && (fragmentGlViewN = n()) != null) {
            fragmentGlViewN.stopDataModel();
        }
        if (!isFinishing()) {
            com.roblox.client.util.g.b("ActivityGlView", "onGameTimeoutInBackground: call finish() on this GL activity.");
            setResult(102);
            finish();
        }
        b(true);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.roblox.client.ActivityGlView$3] */
    private void l() {
        if (!isFinishing()) {
            q = new CountDownTimer(30000L, 1000L) { // from class: com.roblox.client.ActivityGlView.3
                @Override // android.os.CountDownTimer
                public void onTick(long j) {
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    com.roblox.client.util.g.b("ActivityGlView", "CountDownTimer::onFinish -> onGameTimeoutInBackground()");
                    ActivityGlView.this.k();
                }
            }.start();
        }
    }

    private void m() {
        if (q != null) {
            q.cancel();
            q = null;
        }
    }

    private FragmentGlView n() {
        Fragment fragmentA = e().a("GlView_fragment_tag");
        if (fragmentA instanceof FragmentGlView) {
            return (FragmentGlView) fragmentA;
        }
        return null;
    }
}
