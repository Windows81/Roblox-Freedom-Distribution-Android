package com.roblox.client.http;

import c.ad;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n {
    public static void a() {
        com.roblox.platform.i.a().c().a().a(new com.roblox.platform.http.a.a<ad>() { // from class: com.roblox.client.http.n.1
            @Override // com.roblox.platform.http.a.a, e.d
            public void a(e.b<ad> bVar, e.l<ad> lVar) {
                try {
                    if (lVar.a() == 200) {
                        int iOptInt = new JSONObject(com.roblox.client.ae.p.a(lVar)).optInt("unreadNotifications");
                        com.roblox.client.ad.c.a().a(iOptInt);
                        org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.n(iOptInt));
                        com.roblox.client.realtime.d.a(iOptInt);
                    }
                } catch (JSONException unused) {
                    com.roblox.client.ae.k.d("rbx.stream", "Unable to retrieve stream unread count");
                }
            }
        });
    }
}
