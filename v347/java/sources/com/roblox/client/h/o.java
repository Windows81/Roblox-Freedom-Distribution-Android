package com.roblox.client.h;

import com.roblox.client.RobloxSettings;
import com.roblox.client.h.t;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7067d;
    private int e;
    private int f;
    private a g;

    public interface a {
        void a(boolean z, com.roblox.client.e.l lVar);
    }

    public o(long j, int i, int i2, a aVar) {
        this.f7067d = j;
        this.e = i;
        this.f = i2;
        this.g = aVar;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        JSONObject jSONObject = new JSONObject(com.roblox.client.http.b.b(RobloxSettings.baseUrlSecureWWW() + "friends/list?userId=" + this.f7067d + "&pageSize=" + this.e + "&startIndex=" + this.f, null, null).a());
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray("Friends");
        int length = jSONArray.length();
        ArrayList arrayList2 = new ArrayList(length);
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                com.roblox.client.chat.a.m mVar = new com.roblox.client.chat.a.m(jSONObject2.optLong("Id", -1L), jSONObject2.optString("Username"), jSONObject2.optString("UserProfileLink"));
                arrayList2.add(mVar);
                arrayList.add(Long.valueOf(mVar.a()));
                com.roblox.client.chat.a.n.a().a(mVar);
                com.roblox.client.chat.a.n.a().b(mVar);
            }
        }
        com.roblox.client.e.l lVar = new com.roblox.client.e.l(arrayList2);
        lVar.b(jSONObject.getInt("TotalFriends"));
        lVar.a(jSONObject.getInt("StartIndex"));
        lVar.c(jSONObject.getInt("PageSize"));
        lVar.d(jSONObject.getInt("TotalPages"));
        com.roblox.client.i.g.a().a(new m((ArrayList<Long>) arrayList));
        a(true, lVar);
        org.greenrobot.eventbus.c.a().c(lVar);
    }

    private void a(final boolean z, final com.roblox.client.e.l lVar) {
        if (this.g != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.o.1
                @Override // java.lang.Runnable
                public void run() {
                    o.this.g.a(z, lVar);
                }
            });
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        a(false, (com.roblox.client.e.l) null);
    }
}
