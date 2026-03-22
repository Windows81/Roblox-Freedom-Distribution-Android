package com.roblox.client.game;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.roblox.client.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f6293a = a.GAME_STATE_NONE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f6294b;

    enum a {
        GAME_STATE_NONE,
        GAME_STATE_STARTED,
        GAME_STATE_ENDED
    }

    public boolean a() {
        if (!w.a().b()) {
            return true;
        }
        com.roblox.client.ae.k.b("GameManager", "canStartGame = false: Upgrade required");
        return false;
    }

    public void a(Activity activity, h hVar, int i) {
        if (!a()) {
            com.roblox.client.ae.k.b("GameManager", "Game launch halted - Can't start game.");
            return;
        }
        com.roblox.client.ae.k.c("GameManager", "startGameForResult: requestCode = " + i);
        Intent intent = new Intent(activity, (Class<?>) GameLaunchActivity.class);
        intent.putExtra("game_init_params", h.a(hVar));
        if (i == -1) {
            activity.startActivity(intent);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    public boolean b() {
        return this.f6293a == a.GAME_STATE_STARTED;
    }

    void c() {
        com.roblox.client.ae.k.c("GameManager", "onGameStarted:");
        this.f6293a = a.GAME_STATE_STARTED;
    }

    void a(Context context) {
        com.roblox.client.ae.k.c("GameManager", "onGameEnded:");
        this.f6293a = a.GAME_STATE_ENDED;
        com.roblox.client.ae.k.c("GameManager", "onGameEnded: Check if we need to upload any crash dump...");
        com.roblox.client.analytics.b.a().a(context);
        b.a().a(true);
    }

    public boolean d() {
        return this.f6294b != null;
    }

    public void a(h hVar) {
        this.f6294b = hVar;
    }

    public h e() {
        h hVar = this.f6294b;
        if (hVar != null) {
            this.f6294b = null;
        }
        return hVar;
    }
}
