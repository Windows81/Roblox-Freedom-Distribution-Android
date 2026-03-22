package com.roblox.client.hybrid.a;

import android.content.Intent;
import android.os.Bundle;
import com.roblox.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends com.roblox.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.support.v4.a.f f7122a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(android.support.v4.a.f fVar) {
        super("Game");
        this.f7122a = fVar;
        a("launchPartyForPlaceId", new a());
        a("startWithPlaceID", new b());
    }

    private class b implements c.a {
        private b() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            String strOptString = aVar.c().optString("placeID");
            if (strOptString != null) {
                com.roblox.client.game.a aVarA = com.roblox.client.game.a.a(Long.valueOf(Long.parseLong(strOptString)), null, null, null, null);
                Bundle bundle = new Bundle();
                bundle.putBundle("game_init_params", com.roblox.client.game.a.a(aVarA));
                Intent intent = new Intent();
                intent.setAction("com.roblox.android.notificationmanager.POST");
                intent.putExtra("notificationId", 101);
                intent.putExtra("userParams", bundle);
                d.this.f7122a.a(intent);
                aVar.a(true, null);
                return;
            }
            aVar.a(false, null);
        }
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            com.roblox.client.game.a aVarA = com.roblox.client.game.a.a(Long.valueOf(Long.parseLong(aVar.c().optString("placeId", ""))), null, null, null, 4);
            Bundle bundle = new Bundle();
            bundle.putBundle("game_init_params", com.roblox.client.game.a.a(aVarA));
            Intent intent = new Intent();
            intent.setAction("com.roblox.android.notificationmanager.POST");
            intent.putExtra("notificationId", 106);
            intent.putExtra("userParams", bundle);
            d.this.f7122a.a(intent);
            aVar.a(true, null);
        }
    }
}
