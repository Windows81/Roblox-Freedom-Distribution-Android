package com.roblox.client.hybrid.a;

import android.util.Log;
import com.roblox.a.c;
import com.roblox.client.realtime.RealtimeService;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
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
            Log.v("RBHybridModuleRealtime", "RBHybridModuleRealtime IsConnectedFunction.execute() " + aVar.c());
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isConnected", RealtimeService.a());
                jSONObject.put("sequenceNumber", RealtimeService.b());
                aVar.a(true, jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
                aVar.a(false, null);
            }
        }
    }

    public static void a(boolean z, long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isConnected", z);
            jSONObject.put("sequenceNumber", j);
            Log.v("RBHybridModuleRealtime", "RBHybridModuleRealtime.onConnectionEvent() " + jSONObject);
            com.roblox.a.b bVar = new com.roblox.a.b();
            bVar.a("RealTime");
            bVar.b("onConnectionEvent");
            bVar.a(jSONObject);
            com.roblox.a.a.b.a().c(new com.roblox.a.a.a(bVar));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void a(String str, String str2, long j) {
        if (com.roblox.client.j.b.a()) {
            Log.w("RBHybridModuleRealtime", "User is logging out. Skip realtime event.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("namespace", str);
            jSONObject.put("detail", str2);
            jSONObject.put("sequenceNumber", j);
            Log.v("RBHybridModuleRealtime", "RBHybridModuleRealtime.onRealtimeNotification() " + jSONObject);
            com.roblox.a.b bVar = new com.roblox.a.b();
            bVar.a("RealTime");
            bVar.b("onNotification");
            bVar.a(jSONObject);
            com.roblox.a.a.b.a().c(new com.roblox.a.a.a(bVar));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
