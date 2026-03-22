package com.roblox.client.hybrid.a;

import android.os.Bundle;
import com.roblox.a.c;
import com.roblox.client.ae.k;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends com.roblox.a.c {
    public d() {
        super("Game");
        a("launchGame", new a());
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            JSONObject jSONObjectC;
            if (com.roblox.client.b.bG() && (jSONObjectC = aVar.c()) != null) {
                JSONObject jSONObjectOptJSONObject = jSONObjectC.optJSONObject("request");
                if ("RequestGame".equals(jSONObjectOptJSONObject.optString("requestType"))) {
                    try {
                        com.roblox.client.game.h hVarA = com.roblox.client.game.h.a(Long.valueOf(Long.parseLong(jSONObjectOptJSONObject.optString("placeId"))), null, null, null, null, "WebView");
                        Bundle bundle = new Bundle();
                        bundle.putBundle("game_init_params", com.roblox.client.game.h.a(hVarA));
                        com.roblox.client.s.e.a().a(101, bundle);
                        aVar.a(true, null);
                        return;
                    } catch (NumberFormatException unused) {
                        k.d("rbx.hybrid", "Unsupported launchGame request");
                    }
                }
            }
            k.d("rbx.hybrid", "launchGame request failed");
            aVar.a(false, null);
        }
    }
}
