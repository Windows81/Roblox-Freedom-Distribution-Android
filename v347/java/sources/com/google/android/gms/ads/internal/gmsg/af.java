package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.ads.ayi;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class af implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ayi f3099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Map f3100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ HttpClient f3101c;

    af(HttpClient httpClient, Map map, ayi ayiVar) {
        this.f3101c = httpClient;
        this.f3100b = map;
        this.f3099a = ayiVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        jd.b("Received Http request.");
        try {
            JSONObject jSONObjectSend = this.f3101c.send(new JSONObject((String) this.f3100b.get("http_request")));
            if (jSONObjectSend == null) {
                jd.c("Response should not be null.");
            } else {
                jm.f5184a.post(new ag(this, jSONObjectSend));
            }
        } catch (Exception e) {
            jd.b("Error converting request to json.", e);
        }
    }
}
