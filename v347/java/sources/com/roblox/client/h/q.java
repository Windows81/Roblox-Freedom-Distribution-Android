package com.roblox.client.h;

import com.roblox.client.RobloxSettings;
import com.roblox.client.e.z;
import com.roblox.client.h.t;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class q extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Long> f7071d = new ArrayList<>();

    public q(long j) {
        this.f7071d.add(Long.valueOf(j));
    }

    public q(List<Long> list) {
        this.f7071d.addAll(list);
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        boolean zA = false;
        if (!this.f7071d.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            sb.append("userIds=").append(this.f7071d.get(0));
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= this.f7071d.size()) {
                    break;
                }
                sb.append("&userIds=").append(this.f7071d.get(i2).longValue());
                i = i2 + 1;
            }
            JSONArray jSONArray = new JSONArray(com.roblox.client.http.b.b(RobloxSettings.baseUrlWWW() + "presence/users?" + ((Object) sb), null, null).a());
            int length = jSONArray.length();
            for (int i3 = 0; i3 < this.f7071d.size() && i3 < length; i3++) {
                zA |= com.roblox.client.chat.a.n.a().a(this.f7071d.get(i3).longValue(), new com.roblox.client.chat.a.i(jSONArray.getJSONObject(i3)));
            }
            if (zA) {
                org.greenrobot.eventbus.c.a().c(new z(this.f7071d));
            }
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
    }
}
