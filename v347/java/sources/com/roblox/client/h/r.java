package com.roblox.client.h;

import com.roblox.client.e.x;
import com.roblox.client.h.t;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class r extends t {
    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        String strG = com.roblox.platform.g.a().b().a().a().d().g();
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + strG);
        int i = new JSONObject(strG).getInt("count");
        com.roblox.client.chat.a.a.a().b(i);
        org.greenrobot.eventbus.c.a().c(new x(i));
    }
}
