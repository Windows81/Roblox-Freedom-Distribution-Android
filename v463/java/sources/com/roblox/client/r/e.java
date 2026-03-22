package com.roblox.client.r;

import com.roblox.client.r.f;
import com.roblox.client.s.g;
import com.roblox.client.u;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6922e;
    private long f;

    @Override // com.roblox.client.r.f
    protected void a(f.a aVar) {
    }

    public e(long j, long j2, boolean z) {
        this.f6921d = j;
        this.f6922e = z;
        this.f = j2;
    }

    @Override // com.birbit.android.jobqueue.g
    public void g() throws Throwable {
        com.roblox.client.e.a.a aVar = null;
        try {
            JSONObject jSONObject = new JSONObject(com.roblox.client.http.b.a(u.n() + "users/" + this.f6921d, null, null).a());
            aVar = new com.roblox.client.e.a.a(jSONObject.optLong("Id", -1L), jSONObject.optString("Username"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (aVar != null) {
            com.roblox.client.e.a.b.a().a(aVar);
            g.a().a(new c(this.f6921d));
            if (this.f6922e) {
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.f(aVar, this.f, 0));
            }
        }
    }
}
