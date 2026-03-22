package com.roblox.client.r;

import com.roblox.client.ae.k;
import com.roblox.client.r.f;
import com.roblox.platform.http.postbody.chat.MarkAsReadPostBody;
import com.roblox.platform.i;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6901e;
    private InterfaceC0167a f;

    /* JADX INFO: renamed from: com.roblox.client.r.a$a, reason: collision with other inner class name */
    public interface InterfaceC0167a {
        void a(boolean z);
    }

    public a(long j, String str, InterfaceC0167a interfaceC0167a) {
        this.f6901e = j;
        this.f6900d = str;
        this.f = interfaceC0167a;
    }

    @Override // com.birbit.android.jobqueue.g
    public void g() throws Throwable {
        String strG = i.a().b().a(new MarkAsReadPostBody(this.f6901e, this.f6900d)).a().e().g();
        k.a(com.roblox.client.e.a.f5984a, "payload:" + strG);
        a("Success".equals(new JSONObject(strG).optString("resultType")));
    }

    @Override // com.roblox.client.r.f
    protected void a(f.a aVar) {
        a(false);
    }

    private void a(final boolean z) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.r.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f.a(z);
                }
            });
        }
    }
}
