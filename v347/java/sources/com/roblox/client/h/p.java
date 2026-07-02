package com.roblox.client.h;

import com.roblox.client.RobloxSettings;
import com.roblox.client.h.t;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class p extends t {
    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        String strA = com.roblox.client.http.b.b(RobloxSettings.incomingItemsApiUrl(), null, null).a();
        com.roblox.client.util.g.a("rbx.friends", strA);
        JSONObject jSONObject = new JSONObject(strA);
        int iOptInt = jSONObject.optInt("unreadMessageCount", -1);
        int iOptInt2 = jSONObject.optInt("friendRequestsCount", -1);
        com.roblox.client.q.d.a().a(iOptInt2);
        com.roblox.client.q.d.a().b(iOptInt);
        org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.n(iOptInt, iOptInt2));
    }
}
