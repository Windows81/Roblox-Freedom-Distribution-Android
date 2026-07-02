package com.roblox.client.h;

import com.roblox.client.RobloxSettings;
import com.roblox.client.h.t;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class m extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<Long> f7055d;

    public m(long j) {
        this.f7055d = new ArrayList<>(1);
        this.f7055d.add(Long.valueOf(j));
    }

    public m(ArrayList<Long> arrayList) {
        this.f7055d = arrayList;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        if (!this.f7055d.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            sb.append("userIds=").append(this.f7055d.get(0));
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= this.f7055d.size()) {
                    break;
                }
                sb.append("&userIds=").append(this.f7055d.get(i2).longValue());
                i = i2 + 1;
            }
            JSONArray jSONArray = new JSONArray(com.roblox.client.http.b.b(RobloxSettings.baseUrlSecureWWW() + "thumbnail/avatar-headshots?" + ((Object) sb), null, null).a());
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                a(this.f7055d.get(i3).longValue(), a(this.f7055d.get(i3).longValue(), jSONArray.getJSONObject(i3)));
            }
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.c(this.f7055d));
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, String str) {
        com.roblox.client.chat.a.m mVarA;
        if (str != null && !str.isEmpty() && (mVarA = com.roblox.client.chat.a.n.a().a(j)) != null) {
            mVarA.c(str);
        }
    }

    private String a(long j, JSONObject jSONObject) throws Throwable {
        boolean zOptBoolean = jSONObject.optBoolean("Final", true);
        String strOptString = jSONObject.optString("RetryUrl");
        if (zOptBoolean || strOptString == null || strOptString.isEmpty() || strOptString.equals("null")) {
            return jSONObject.optString("Url");
        }
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "getHeadshotUrl() execute retry user:" + j);
        com.roblox.client.http.c cVarA = new com.roblox.client.http.h().a(RobloxSettings.baseUrlWithPath(strOptString), null, new a(j));
        cVarA.a(new b());
        cVarA.c();
        return null;
    }

    private class b extends com.roblox.client.http.a.b {
        b() {
            super(1000, 8, 2.0f);
        }

        @Override // com.roblox.client.http.a.b, com.roblox.client.http.a.d
        public boolean a(com.roblox.client.http.j jVar) {
            boolean zOptBoolean;
            try {
                zOptBoolean = new JSONObject(jVar.a()).optBoolean("Final");
            } catch (JSONException e) {
                e.printStackTrace();
                zOptBoolean = false;
            }
            return !zOptBoolean;
        }
    }

    private class a implements com.roblox.client.http.l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f7057b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f7058c = 0;

        public a(long j) {
            this.f7057b = j;
        }

        @Override // com.roblox.client.http.l
        public void a(com.roblox.client.http.j jVar) {
            try {
                JSONObject jSONObject = new JSONObject(jVar.a());
                if (jSONObject.optBoolean("Final")) {
                    com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "onRequestFinished() headshot retrieval final");
                    m.this.a(this.f7057b, jSONObject.optString("Url"));
                    org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.c(m.this.f7055d));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override // com.roblox.client.http.l
        public void b(com.roblox.client.http.j jVar) {
            String str = com.roblox.client.chat.a.f6496a;
            StringBuilder sbAppend = new StringBuilder().append("onRetry() count:");
            int i = this.f7058c + 1;
            this.f7058c = i;
            com.roblox.client.util.g.a(str, sbAppend.append(i).toString());
        }
    }
}
