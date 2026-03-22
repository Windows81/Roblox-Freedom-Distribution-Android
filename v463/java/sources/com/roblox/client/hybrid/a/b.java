package com.roblox.client.hybrid.a;

import com.roblox.a.c;
import com.roblox.client.ae.k;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends com.roblox.a.c {
    public b() {
        super("Chat");
        a("startChatConversation", new C0153b());
        a("shareGameToChat", new a());
    }

    /* JADX INFO: renamed from: com.roblox.client.hybrid.a.b$b, reason: collision with other inner class name */
    private class C0153b implements c.a {
        private C0153b() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            JSONObject jSONObjectOptJSONObject;
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObjectC = aVar.c();
            if (jSONObjectC != null && (jSONObjectOptJSONObject = jSONObjectC.optJSONObject("params")) != null) {
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("userIds");
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    long jOptLong = jSONArrayOptJSONArray.optLong(i, -1L);
                    if (jOptLong != -1) {
                        arrayList.add(Long.valueOf(jOptLong));
                    }
                }
            }
            if (arrayList.size() > 0) {
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.i(-1L, ((Long) arrayList.get(0)).longValue()));
                aVar.a(true, null);
            } else {
                aVar.a(false, null);
            }
        }
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            String strOptString = aVar.c().optString("placeID");
            if (strOptString != null) {
                k.a("rbx.hybrid", "ShareGameToChat.execute() " + strOptString);
                aVar.a(true, null);
                return;
            }
            aVar.a(false, null);
        }
    }
}
