package com.roblox.client.hybrid.a;

import com.roblox.a.c;
import com.roblox.client.e.s;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.roblox.a.c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g() {
        super("Overlay");
        a("close", new a());
        a("setSubmitState", new b());
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            com.roblox.client.util.g.a("RBHybridModuleOverlay", "RBHybridModuleOverlay CloseOverlay.execute() " + aVar.c());
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.j());
        }
    }

    private class b implements c.a {
        private b() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            com.roblox.client.util.g.a("RBHybridModuleOverlay", "RBHybridModuleOverlay SetSubmitState.execute() " + aVar.c());
            try {
                org.greenrobot.eventbus.c.a().c(new s(aVar.c().getString("submitButtonState")));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static void a() {
        com.roblox.a.b bVar = new com.roblox.a.b();
        bVar.a("Overlay");
        bVar.b("onSubmit");
        bVar.a((JSONObject) null);
        com.roblox.a.a.b.a().c(new com.roblox.a.a.a(bVar));
    }
}
