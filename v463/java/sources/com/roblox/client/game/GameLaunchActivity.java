package com.roblox.client.game;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.widget.TextView;
import com.roblox.client.o;
import com.roblox.client.q;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class GameLaunchActivity extends q {
    private h r;
    private ServiceConnection t;
    private a q = a.GAME_STATE_INIT;
    private long s = 0;

    private enum a {
        GAME_STATE_INIT,
        GAME_STATE_STARTED,
        GAME_STATE_ENDED,
        GAME_STATE_PROCESS_KILLED
    }

    @Override // com.roblox.client.q
    protected void H() {
    }

    @Override // com.roblox.client.q
    protected boolean m() {
        return true;
    }

    @Override // com.roblox.client.q
    protected com.roblox.client.p.b o() {
        return new com.roblox.client.p.c();
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.roblox.client.ae.k.c("GameLaunchActivity", "onCreate: savedInstanceState = " + bundle);
        setContentView(o.g.activity_game_launch);
        if (bundle != null) {
            this.s = bundle.getLong("startGameTimeInMs", 0L);
            this.q = (a) bundle.getSerializable("gameState");
            this.r = h.a(bundle);
            com.roblox.client.ae.k.b("GameLaunchActivity", "onCreate: Restore placeId = " + this.r.a() + ", gameState = " + this.q);
        }
        int i = AnonymousClass1.f6223a[this.q.ordinal()];
        if (i == 1) {
            this.r = h.a(getIntent().getBundleExtra("game_init_params"));
            com.roblox.client.ae.k.c("GameLaunchActivity", "onCreate() GAME_STATE_INIT stopping app shell");
            b.a().b();
            a(this.r);
            return;
        }
        if (i == 2) {
            com.roblox.client.ae.k.b("GameLaunchActivity", "The activity is being restored (as expected). Do nothing.");
            return;
        }
        com.roblox.client.ae.k.d("GameLaunchActivity", "onCreate: Unexpected gameState = " + this.q);
    }

    /* JADX INFO: renamed from: com.roblox.client.game.GameLaunchActivity$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6223a;

        static {
            int[] iArr = new int[a.values().length];
            f6223a = iArr;
            try {
                iArr[a.GAME_STATE_INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6223a[a.GAME_STATE_STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (com.roblox.client.b.y()) {
            this.t = RealtimeService.a(this);
        }
    }

    @Override // com.roblox.client.r
    protected void I() {
        com.roblox.client.ae.k.c("GameLaunchActivity", "adjustOrientation: isPhone = " + u.j());
        super.I();
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.roblox.client.ae.k.c("GameLaunchActivity", "onResume: gameState = " + this.q);
        TextView textView = (TextView) findViewById(o.f.game_launch_state);
        if (this.q == a.GAME_STATE_ENDED) {
            textView.setText(o.j.Game_Launch_Label_EndingGame);
            this.q = a.GAME_STATE_PROCESS_KILLED;
            n();
            com.roblox.client.w.a.a("SessionReporterState_GameExit", this.r.a());
        }
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        com.roblox.client.ae.k.c("GameLaunchActivity", "onSaveInstanceState: gameState = " + this.q);
        bundle.putSerializable("gameState", this.q);
        bundle.putLong("startGameTimeInMs", this.s);
        h hVar = this.r;
        if (hVar != null) {
            h.a(bundle, hVar);
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        super.onStop();
        if (com.roblox.client.b.y()) {
            RealtimeService.a(this.t);
        }
        com.roblox.client.ae.k.c("GameLaunchActivity", "onStop");
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.roblox.client.ae.k.c("GameLaunchActivity", "onDestroy");
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.roblox.client.ae.k.c("GameLaunchActivity", "onActivityResult: requestCode = " + i);
        if (i == 10101) {
            com.roblox.client.ae.k.b("GameLaunchActivity", "onActivityResult: Game ended. Result-code = " + i2);
            this.q = a.GAME_STATE_ENDED;
            com.roblox.client.locale.b.a().b(this);
            if (i2 != 102) {
                return;
            }
            p();
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    private void a(h hVar) {
        if (hVar != null) {
            com.roblox.client.ae.k.b("GameLaunchActivity", "launchGameWithParams: Start game activity for placeId = " + hVar.a());
            startActivityForResult(a(this, hVar), 10101);
            this.q = a.GAME_STATE_STARTED;
            this.s = System.currentTimeMillis();
            com.roblox.client.l.a().h().c();
            return;
        }
        com.roblox.client.ae.k.d("GameLaunchActivity", "launchGameWithParams: game-params is null. Just close this activity!");
        n();
    }

    private void n() {
        finish();
        com.roblox.client.l.a().h().a(this);
    }

    private void p() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.s;
        com.roblox.client.ae.k.b("GameLaunchActivity", "Game duration: " + jCurrentTimeMillis + "ms.");
        com.roblox.client.b.b.a().a(jCurrentTimeMillis);
    }

    Intent a(Context context, h hVar) {
        Intent intentC = com.roblox.client.l.a().c(context);
        intentC.putExtra("roblox_placeId", hVar.a());
        intentC.putExtra("roblox_userId", hVar.b());
        intentC.putExtra("roblox_conversationId", hVar.c());
        intentC.putExtra("roblox_accessCode", hVar.d());
        intentC.putExtra("roblox_gameId", hVar.e());
        intentC.putExtra("roblox_joinRequestType", hVar.g());
        intentC.putExtra("roblox_browser_tracker_id", com.roblox.client.j.a().b());
        intentC.putExtra("roblox_referralPage", hVar.f());
        return intentC;
    }
}
