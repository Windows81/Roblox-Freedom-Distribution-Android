package com.roblox.client.hybrid.a;

import com.roblox.a.c;
import com.roblox.client.ae.k;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends com.roblox.a.c {
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
            k.a("RBHybridModuleOverlay", "RBHybridModuleOverlay CloseOverlay.execute() " + aVar.c());
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.d());
        }
    }

    private class b implements c.a {
        private b() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            k.a("RBHybridModuleOverlay", "RBHybridModuleOverlay SetSubmitState.execute() " + aVar.c());
            try {
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.k(aVar.c().getString("submitButtonState")));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}
