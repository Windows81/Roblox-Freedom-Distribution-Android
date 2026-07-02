package com.roblox.client.h;

import com.roblox.client.h.t;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Long> f7021d = new ArrayList<>();
    private int e;
    private boolean f;

    public b(List<Long> list, int i) {
        this.f7021d.addAll(list);
        this.e = i;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        if (!this.f7021d.isEmpty()) {
            String strG = com.roblox.platform.g.a().b().a(this.f7021d, this.e).a().d().g();
            com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + strG);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = new JSONArray(strG);
            for (int length = jSONArray.length() - 1; length >= 0; length--) {
                JSONObject jSONObject = jSONArray.getJSONObject(length);
                long j = jSONObject.getLong("conversationId");
                JSONArray jSONArray2 = jSONObject.getJSONArray("chatMessages");
                if (jSONArray2.length() > 0) {
                    if (com.roblox.client.chat.a.a.a().a(j, new com.roblox.client.chat.a.h(jSONArray2.getJSONObject(0)))) {
                        arrayList.add(Long.valueOf(j));
                    }
                }
                if (this.f) {
                    com.roblox.client.chat.a.a.a().e(j);
                }
            }
            if (!arrayList.isEmpty()) {
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.o((ArrayList<Long>) arrayList));
            }
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
    }
}
