package com.roblox.client.h;

import com.roblox.client.RobloxSettings;
import com.roblox.client.h.t;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class s extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7072d;
    private boolean e;

    public s(long j, boolean z) {
        this.f7072d = j;
        this.e = z;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        com.roblox.client.chat.a.m mVar;
        try {
            JSONObject jSONObject = new JSONObject(com.roblox.client.http.b.b(RobloxSettings.baseUrlAPI() + "users/" + this.f7072d, null, null).a());
            mVar = new com.roblox.client.chat.a.m(jSONObject.optLong("Id", -1L), jSONObject.optString("Username"));
        } catch (JSONException e) {
            e.printStackTrace();
            mVar = null;
        }
        if (mVar != null) {
            com.roblox.client.chat.a.n.a().a(mVar);
            if (this.e) {
                com.roblox.client.chat.a.n.a().b(mVar);
            }
            com.roblox.client.i.g.a().a(new m(this.f7072d));
            if (this.e) {
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.m(mVar, 0));
            }
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
    }
}
