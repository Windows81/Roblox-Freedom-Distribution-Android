package com.roblox.client.game;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.h;
import android.widget.Toast;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.FragmentGlView;
import com.roblox.client.R;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f7010c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f7011a = a.GAME_STATE_NONE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.game.a f7012b;

    enum a {
        GAME_STATE_NONE,
        GAME_STATE_STARTED,
        GAME_STATE_ENDED
    }

    public static b a() {
        if (f7010c == null) {
            synchronized (b.class) {
                if (f7010c == null) {
                    f7010c = new b();
                }
            }
        }
        return f7010c;
    }

    private b() {
    }

    public void a(Activity activity, com.roblox.client.game.a aVar) {
        if (d()) {
            g.d("GameManager", "startGame: A game is in progress. Ignore request!");
            Toast.makeText(activity, R.string.Game_Launch_Response_GameStartFailureGameInProgress, 1).show();
        } else {
            a(activity, aVar, -1);
        }
    }

    public void a(Activity activity, com.roblox.client.game.a aVar, int i) {
        FragmentGlView singleton;
        g.c("GameManager", "startGameForResult: requestCode = " + i);
        if (!com.roblox.client.b.ac() && !com.roblox.client.b.ad() && (singleton = FragmentGlView.getSingleton()) != null) {
            h activity2 = singleton.getActivity();
            if (activity2 instanceof ActivityNativeMain) {
                g.c("GameManager", "startGameForResult: Remove GL apps in Main activity...");
                ActivityNativeMain.a((ActivityNativeMain) activity2, true);
            }
        }
        Intent intent = new Intent(activity, (Class<?>) GameLaunchActivity.class);
        intent.putExtra("game_init_params", com.roblox.client.game.a.a(aVar));
        if (i == -1) {
            activity.startActivity(intent);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    private boolean d() {
        return this.f7011a == a.GAME_STATE_STARTED;
    }

    void b() {
        g.c("GameManager", "onGameStarted:");
        this.f7011a = a.GAME_STATE_STARTED;
    }

    void a(Context context) {
        g.c("GameManager", "onGameEnded:");
        this.f7011a = a.GAME_STATE_ENDED;
        if (com.roblox.client.b.Y()) {
            g.c("GameManager", "onGameEnded: Check if we need to upload any crash dump...");
            com.roblox.client.b.a.a().a(context);
        }
    }

    public com.roblox.client.game.a c() {
        return this.f7012b;
    }

    public void a(com.roblox.client.game.a aVar) {
        this.f7012b = aVar;
    }
}
