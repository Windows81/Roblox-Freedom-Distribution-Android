package com.roblox.client.r;

import com.roblox.client.ae.k;
import com.roblox.client.r.f;
import com.roblox.client.u;
import com.roblox.platform.http.returntypes.thumbnails.ThumbnailResponseBody;
import com.roblox.platform.i;
import e.l;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f6913e;

    public interface a {
        void a(boolean z, b bVar);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f6917a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f6918b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f6919c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f6920d;

        public b(long j, String str, String str2, String str3) {
            this.f6917a = j;
            this.f6918b = str;
            this.f6919c = str2;
            this.f6920d = str3;
        }

        public long a() {
            return this.f6917a;
        }

        public String b() {
            return this.f6918b;
        }

        public String c() {
            return this.f6919c;
        }

        public String d() {
            return this.f6920d;
        }

        public void a(String str) {
            this.f6918b = str;
        }

        public void b(String str) {
            this.f6919c = str;
        }
    }

    public d(long j, a aVar) {
        this.f6912d = j;
        this.f6913e = aVar;
    }

    @Override // com.roblox.client.r.f
    protected void a(f.a aVar) {
        a(false, (b) null);
    }

    @Override // com.birbit.android.jobqueue.g
    public void g() throws Throwable {
        String strA = com.roblox.client.http.b.a(u.a(this.f6912d), null, null).a();
        k.a("rbx.catalog", "payload:" + strA);
        JSONObject jSONObject = new JSONObject(strA);
        a(true, new b(this.f6912d, jSONObject.getString("Name"), jSONObject.getString("Description"), o()));
    }

    private String o() throws IOException {
        ThumbnailResponseBody thumbnailResponseBodyE;
        l<ThumbnailResponseBody> lVarA = i.a().i().a(Long.toString(this.f6912d), null, "420x420", "Png", false).a();
        if (!lVarA.d() || (thumbnailResponseBodyE = lVarA.e()) == null || thumbnailResponseBodyE.data == null || thumbnailResponseBodyE.data.get(0) == null) {
            return null;
        }
        return thumbnailResponseBodyE.data.get(0).imageUrl;
    }

    private void a(final boolean z, final b bVar) {
        if (this.f6913e != null) {
            m().post(new Runnable() { // from class: com.roblox.client.r.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.f6913e.a(z, bVar);
                }
            });
        }
    }
}
