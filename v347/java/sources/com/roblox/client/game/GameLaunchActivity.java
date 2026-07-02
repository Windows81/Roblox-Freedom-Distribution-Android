package com.roblox.client.game;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Process;
import android.support.v4.app.h;
import android.widget.TextView;
import com.roblox.client.ActivityGlView;
import com.roblox.client.FragmentGlView;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.j;
import com.roblox.client.k;
import com.roblox.client.p;
import com.roblox.client.util.g;
import com.roblox.engine.jni.NativeGLJavaInterface;
import com.roblox.engine.jni.b;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class GameLaunchActivity extends k {
    private a p;
    private b m = b.GAME_STATE_INIT;
    private int q = 0;
    private long r = 0;

    private enum b {
        GAME_STATE_INIT,
        GAME_STATE_STARTED,
        GAME_STATE_ENDED,
        GAME_STATE_PROCESS_KILLED,
        GAME_STATE_FAILED_RETRY_NEEDED
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        g.c("GameLaunchActivity", "onCreate: savedInstanceState = " + bundle);
        setContentView(R.layout.activity_game_launch);
        if (bundle != null) {
            this.r = bundle.getLong("startGameTimeInMs", 0L);
            this.m = (b) bundle.getSerializable("gameState");
            this.q = bundle.getInt("currentRetriesOnFailure", 0);
            this.p = a.a(bundle);
            g.b("GameLaunchActivity", "onCreate: Restore placeId = " + this.p.f6999c + ", gameState = " + this.m + ", retries = " + this.q);
        }
        switch (this.m) {
            case GAME_STATE_INIT:
                final Intent intent = getIntent();
                if (com.roblox.client.b.B()) {
                    com.roblox.client.i.b.d().a((Activity) this);
                    com.roblox.client.i.b.d().a(new j() { // from class: com.roblox.client.game.GameLaunchActivity.1
                        @Override // com.roblox.client.j
                        public void a() {
                            g.b("GameLaunchActivity", "onAdStarted:");
                            GameLaunchActivity.this.k();
                        }

                        @Override // com.roblox.client.j
                        public void a(com.roblox.client.game.a aVar, Activity activity) {
                            g.b("GameLaunchActivity", "resumeGameLaunch:");
                            GameLaunchActivity.this.p = a.a(intent);
                            GameLaunchActivity.this.a(GameLaunchActivity.this.p);
                        }
                    }, com.roblox.client.game.a.a(intent.getBundleExtra("game_init_params")), this);
                } else {
                    this.p = a.a(intent);
                    if (!com.roblox.client.b.ac() && !com.roblox.client.b.ad()) {
                        a(this.p);
                    } else {
                        NativeGLJavaInterface.getImplementation().a(new b.a() { // from class: com.roblox.client.game.GameLaunchActivity.2
                            @Override // com.roblox.engine.jni.b.a
                            public void a() {
                                g.c("GameLaunchActivity", "onLeaveGameFinished: isFinishing() = " + GameLaunchActivity.this.isFinishing());
                                NativeGLJavaInterface.getImplementation().a((b.a) null);
                                if (!GameLaunchActivity.this.isFinishing()) {
                                    GameLaunchActivity.this.a(GameLaunchActivity.this.p);
                                }
                            }
                        });
                        FragmentGlView singleton = FragmentGlView.getSingleton();
                        if (singleton != null) {
                            h activity = singleton.getActivity();
                            if (activity != null) {
                                activity.e().a().a(singleton).d();
                            }
                            if (com.roblox.client.b.ad()) {
                                new c(singleton).execute(new Void[0]);
                            } else {
                                singleton.stopDataModel();
                            }
                        } else {
                            a(this.p);
                        }
                    }
                }
                break;
            case GAME_STATE_STARTED:
                g.b("GameLaunchActivity", "The activity is being restored (as expected). Do nothing.");
                break;
            default:
                g.d("GameLaunchActivity", "onCreate: Unexpected gameState = " + this.m);
                break;
        }
    }

    @Override // com.roblox.client.k
    protected boolean j() {
        return true;
    }

    @Override // com.roblox.client.l
    protected void s() {
        g.c("GameLaunchActivity", "adjustOrientation: isPhone = " + RobloxSettings.isPhone());
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        g.c("GameLaunchActivity", "onResume: gameState = " + this.m);
        final Handler handler = new Handler(getMainLooper());
        TextView textView = (TextView) findViewById(R.id.game_launch_state);
        if (this.m == b.GAME_STATE_ENDED) {
            textView.setText(R.string.Game_Launch_Label_EndingGame);
            this.m = b.GAME_STATE_PROCESS_KILLED;
            if (this.p != null && this.p.i && com.roblox.client.b.ae() && !RobloxSettings.isChrome()) {
                handler.postDelayed(new Runnable() { // from class: com.roblox.client.game.GameLaunchActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        p.d(this);
                        GameLaunchActivity.this.l();
                    }
                }, 2000L);
            } else {
                l();
            }
            com.roblox.client.m.a.a("SessionReporterState_GameExit", this.p.f6999c);
            return;
        }
        if (this.m == b.GAME_STATE_FAILED_RETRY_NEEDED) {
            textView.setText(R.string.Game_Launch_Label_RelaunchGame);
            this.m = b.GAME_STATE_INIT;
            if (this.p != null) {
                this.p.j = this.q == 3;
            }
            handler.postDelayed(new Runnable() { // from class: com.roblox.client.game.GameLaunchActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    p.d(this);
                    handler.postDelayed(new Runnable() { // from class: com.roblox.client.game.GameLaunchActivity.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GameLaunchActivity.this.a(GameLaunchActivity.this.p);
                        }
                    }, 2000L);
                }
            }, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        g.c("GameLaunchActivity", "hideProgressView:");
        findViewById(R.id.progress_view).setVisibility(8);
    }

    @Override // android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        g.c("GameLaunchActivity", "onSaveInstanceState: gameState = " + this.m + ", retries = " + this.q);
        bundle.putSerializable("gameState", this.m);
        bundle.putInt("currentRetriesOnFailure", this.q);
        bundle.putLong("startGameTimeInMs", this.r);
        if (this.p != null) {
            this.p.b(bundle);
        }
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        super.onStop();
        g.c("GameLaunchActivity", "onStop");
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g.c("GameLaunchActivity", "onDestroy");
        if (this.m == b.GAME_STATE_INIT && com.roblox.client.b.ac()) {
            g.c("GameLaunchActivity", "onDestroy: No need to listen for on-leave-game event...");
            NativeGLJavaInterface.getImplementation().a((b.a) null);
        }
    }

    @Override // com.roblox.client.k, android.support.v4.app.h, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        g.c("GameLaunchActivity", "onActivityResult: requestCode = " + i);
        if (i == 10101) {
            g.b("GameLaunchActivity", "onActivityResult: Game ended. Result-code = " + i2);
            this.m = b.GAME_STATE_ENDED;
            com.roblox.client.locale.a.a().b(this);
            switch (i2) {
                case 101:
                    g.d("GameLaunchActivity", "onActivityResult: Game launch failed because it was launched in the last process.");
                    if (this.q < 3) {
                        this.q++;
                        this.m = b.GAME_STATE_FAILED_RETRY_NEEDED;
                    }
                    break;
                case 102:
                    m();
                    break;
            }
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        if (aVar != null) {
            g.b("GameLaunchActivity", "launchGameWithParams: Start game activity for placeId = " + aVar.f6999c);
            startActivityForResult(aVar.a(this), 10101);
            this.m = b.GAME_STATE_STARTED;
            this.r = System.currentTimeMillis();
            com.roblox.client.game.b.a().b();
            com.roblox.client.m.a.a("SessionReporterState_GameLoadStart", aVar.f6999c);
            return;
        }
        g.d("GameLaunchActivity", "launchGameWithParams: game-params is null. Just close this activity!");
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        finish();
        com.roblox.client.game.b.a().a(this);
    }

    private void m() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.r;
        g.b("GameLaunchActivity", "Game duration: " + jCurrentTimeMillis + "ms.");
        com.roblox.client.c.a.a().a(jCurrentTimeMillis);
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f6997a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f6998b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f6999c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f7000d = "";
        String e = "";
        boolean f = false;
        int g = 0;
        boolean h = false;
        boolean i = true;
        boolean j = false;
        boolean k = false;

        private a() {
        }

        static a a(Intent intent) {
            a aVar = new a();
            com.roblox.client.game.a aVarA = com.roblox.client.game.a.a(intent.getBundleExtra("game_init_params"));
            if (aVarA != null) {
                g.a("GameLaunchActivity", "newInstanceFromStartIntent() " + aVarA.toString());
                aVar.f6999c = aVarA.a();
                aVar.f6998b = aVarA.b();
                aVar.f7000d = aVarA.c();
                aVar.e = aVarA.d();
                aVar.f6997a = aVarA.e();
                aVar.f = com.roblox.client.b.T() && RobloxSettings.getKeyValues().getBoolean("VRMode", false);
                aVar.g = Process.myPid();
                aVar.h = Debug.isDebuggerConnected();
                aVar.i = !com.roblox.client.b.aa() && com.roblox.client.b.Z();
                aVar.j = !aVar.i || RobloxSettings.isChrome();
                aVar.k = com.roblox.client.b.ak();
                return aVar;
            }
            g.e("GameLaunchActivity", "newInstanceFromStartIntent() ERROR: No GameInitParams");
            return null;
        }

        static a a(Bundle bundle) {
            a aVar = new a();
            aVar.f6999c = bundle.getLong("placeId", 0L);
            aVar.f6998b = bundle.getLong("userId", 0L);
            aVar.f7000d = bundle.getString("accessCode", "");
            aVar.e = bundle.getString("gameId", "");
            aVar.f6997a = bundle.getInt("joinRequestType", -1);
            aVar.f = bundle.getBoolean("vrMode");
            aVar.g = Process.myPid();
            aVar.h = bundle.getBoolean("launcher_debugger_attached");
            aVar.i = bundle.getBoolean("enable_end_game_process");
            aVar.j = bundle.getBoolean("enable_game_in_last_process");
            aVar.k = bundle.getBoolean("enable_portrait_mode");
            return aVar;
        }

        Intent a(Context context) {
            Intent intent = new Intent(context, (Class<?>) (com.roblox.client.b.aa() ? ActivityGame.class : ActivityGlView.class));
            if (com.roblox.client.b.bf()) {
                intent.addFlags(131072);
            }
            intent.putExtra("roblox_placeId", this.f6999c);
            intent.putExtra("roblox_userId", this.f6998b);
            intent.putExtra("roblox_accessCode", this.f7000d);
            intent.putExtra("roblox_gameId", this.e);
            intent.putExtra("roblox_joinRequestType", this.f6997a);
            intent.putExtra("roblox_vrMode", this.f);
            intent.putExtra("roblox_launcher_pid", this.g);
            intent.putExtra("roblox_launcher_debugger_attached", this.h);
            intent.putExtra("roblox_app_settings_for_engine", com.roblox.client.b.k());
            intent.putExtra("roblox_enable_end_game_process", this.i);
            intent.putExtra("roblox_enable_game_in_last_process", this.j);
            intent.putExtra("roblox_enable_portrait_mode", this.k);
            intent.putExtra("roblox_browser_tracker_id", com.roblox.client.c.a().b());
            intent.putExtra("locale_value", com.roblox.client.locale.a.a().b());
            intent.putExtra("ugc_locale_value", com.roblox.client.locale.a.a().c());
            return intent;
        }

        void b(Bundle bundle) {
            bundle.putLong("placeId", this.f6999c);
            bundle.putLong("userId", this.f6998b);
            bundle.putString("accessCode", this.f7000d);
            bundle.putString("gameId", this.e);
            bundle.putInt("joinRequestType", this.f6997a);
            bundle.putBoolean("vrMode", this.f);
            bundle.putInt("launcher_pid", this.g);
            bundle.putBoolean("launcher_debugger_attached", this.h);
            bundle.putBoolean("enable_end_game_process", this.i);
            bundle.putBoolean("enable_game_in_last_process", this.j);
            bundle.putBoolean("enable_portrait_mode", this.k);
        }
    }

    private static class c extends AsyncTask<Void, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<FragmentGlView> f7005a;

        c(FragmentGlView fragmentGlView) {
            this.f7005a = new WeakReference<>(fragmentGlView);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            FragmentGlView fragmentGlView = this.f7005a.get();
            if (fragmentGlView != null) {
                fragmentGlView.stopDataModel();
                return null;
            }
            return null;
        }
    }
}
