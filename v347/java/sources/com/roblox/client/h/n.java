package com.roblox.client.h;

import com.roblox.client.RobloxSettings;
import com.roblox.client.h.t;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class n extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7059d;
    private a e;

    public interface a {
        void a(boolean z, b bVar);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f7063a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f7064b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f7065c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7066d;

        public b(long j, String str, String str2, String str3) {
            this.f7063a = j;
            this.f7064b = str;
            this.f7065c = str2;
            this.f7066d = str3;
        }

        public long a() {
            return this.f7063a;
        }

        public String b() {
            return this.f7064b;
        }

        public String c() {
            return this.f7065c;
        }

        public String d() {
            return this.f7066d;
        }
    }

    public n(long j, a aVar) {
        this.f7059d = j;
        this.e = aVar;
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        a(false, (b) null);
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        String strA = com.roblox.client.http.b.b(RobloxSettings.marketProductInfoUrl(this.f7059d), null, null).a();
        com.roblox.client.util.g.a("rbx.catalog", "payload:" + strA);
        JSONObject jSONObject = new JSONObject(strA);
        a(true, new b(this.f7059d, jSONObject.getString("Name"), jSONObject.getString("Description"), o()));
    }

    private String o() throws JSONException {
        String strA = com.roblox.client.http.b.b(RobloxSettings.assetThumbnailUrl(this.f7059d), null, null).a();
        com.roblox.client.util.g.a("rbx.catalog", "thumbnailPayload:" + strA);
        return new JSONObject(strA).getString("Url");
    }

    private void a(final boolean z, final b bVar) {
        if (this.e != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.n.1
                @Override // java.lang.Runnable
                public void run() {
                    n.this.e.a(z, bVar);
                }
            });
        }
    }
}
