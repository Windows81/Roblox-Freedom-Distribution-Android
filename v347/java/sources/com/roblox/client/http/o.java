package com.roblox.client.http;

import b.ac;
import com.roblox.client.e.w;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o {
    public static void a() {
        com.roblox.platform.g.a().d().a().a(new com.roblox.platform.http.a.a<ac>() { // from class: com.roblox.client.http.o.1
            @Override // com.roblox.platform.http.a.a, d.d
            public void a(d.b<ac> bVar, d.l<ac> lVar) {
                try {
                    if (lVar.a() == 200) {
                        int iOptInt = new JSONObject(com.roblox.client.util.l.a(lVar)).optInt("unreadNotifications");
                        com.roblox.client.q.d.a().c(iOptInt);
                        org.greenrobot.eventbus.c.a().c(new w(iOptInt));
                        com.roblox.client.realtime.f.a(iOptInt);
                    }
                } catch (JSONException e) {
                    com.roblox.client.util.g.d("rbx.stream", "Unable to retrieve stream unread count");
                }
            }
        });
    }
}
