package com.roblox.client;

import android.content.Intent;
import android.os.Bundle;
import com.roblox.client.startup.ActivitySplash;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ActivityProtocolLaunch extends k {
    private final String m = "placeid";
    private final String p = "userid";
    private final String q = "accesscode";
    private final String r = "gameinstanceid";

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        long j;
        long j2;
        com.roblox.client.game.a aVarA;
        long j3;
        super.onCreate(bundle);
        HashMap<String, String> mapA = com.roblox.client.game.c.a(getIntent());
        try {
            if (mapA.size() == 1) {
                j3 = Long.parseLong(mapA.get(null));
            } else {
                j3 = Long.parseLong(mapA.get("placeid"));
            }
            j = j3;
        } catch (NumberFormatException e) {
            j = -1;
        }
        try {
            j2 = Long.parseLong(mapA.get("userid"));
        } catch (NumberFormatException e2) {
            j2 = -1;
        }
        if (j == -1 && j2 == -1) {
            aVarA = null;
        } else {
            aVarA = com.roblox.client.game.a.a(Long.valueOf(j), Long.valueOf(j2), mapA.get("accesscode"), mapA.get("gameinstanceid"), null);
        }
        if (isTaskRoot()) {
            com.roblox.client.util.g.a("rbx.externallaunch", "onCreate() activity is root - starting splash");
            Intent intentA = ActivitySplash.a(this, com.roblox.client.startup.e.PROTOCOL_LAUNCH);
            intentA.putExtra("game_init_params", com.roblox.client.game.a.a(aVarA));
            startActivity(intentA);
        } else {
            com.roblox.client.util.g.a("rbx.externallaunch", "onCreate() activity on stack - checking to launch data");
            if (aVarA != null && k()) {
                com.roblox.client.game.b.a().a(this, aVarA);
                com.roblox.client.b.c.a("AppLaunch", "ProtocolLaunch", "PlaceId");
            } else {
                com.roblox.client.b.c.a("AppLaunch", "ProtocolLaunch", "Resume App");
                if (aVarA != null) {
                    com.roblox.client.game.b.a().a(aVarA);
                }
            }
        }
        finish();
    }

    private boolean k() {
        return com.roblox.client.i.h.a().c() || com.roblox.abtesting.a.a().j();
    }
}
