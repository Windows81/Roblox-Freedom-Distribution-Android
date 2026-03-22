package com.roblox.client.hybrid.a;

import com.roblox.a.c;
import com.roblox.client.ae.k;
import com.roblox.client.realtime.RealtimeService;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i extends com.roblox.a.c {
    public i() {
        super("RealTime");
        a("isConnected", new a());
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isConnected", RealtimeService.a());
                jSONObject.put("sequenceNumber", RealtimeService.b());
                jSONObject.put("namespaceSequenceNumbers", com.roblox.client.realtime.e.a().b());
                k.a("rbx.signalr", "RBHybridModuleRealtime IsConnectedFunction.execute() command:" + aVar.c() + " callback:" + jSONObject);
                aVar.a(true, jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
                aVar.a(false, null);
            }
        }
    }

    public static void a(boolean z, long j, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("isConnected", z);
            jSONObject2.put("sequenceNumber", j);
            jSONObject2.put("namespaceSequenceNumbers", jSONObject);
            k.a("rbx.signalr", "RBHybridModuleRealtime.onConnectionEvent() " + jSONObject2);
            com.roblox.a.b bVar = new com.roblox.a.b();
            bVar.a("RealTime");
            bVar.b("onConnectionEvent");
            bVar.a(jSONObject2);
            com.roblox.a.a.b.a().c(new com.roblox.a.a.a(bVar));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void a(String str, String str2, long j) {
        if (com.roblox.client.s.c.a()) {
            k.d("rbx.signalr", "User is logging out. Skip realtime event.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("namespace", str);
            jSONObject.put("detail", str2);
            jSONObject.put("sequenceNumber", j);
            k.a("rbx.signalr", "RBHybridModuleRealtime.onRealtimeNotification() " + jSONObject);
            com.roblox.a.b bVar = new com.roblox.a.b();
            bVar.a("RealTime");
            bVar.b("onNotification");
            bVar.a(jSONObject);
            com.roblox.a.a.b.a().c(new com.roblox.a.a.a(bVar));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
