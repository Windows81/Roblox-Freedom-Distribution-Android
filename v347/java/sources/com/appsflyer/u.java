package com.appsflyer;

import android.net.Uri;
import android.text.TextUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class u extends k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f2252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2253c;

    interface a {
        void a(String str);

        void a(Map<String, String> map);
    }

    u(Uri uri, f fVar) {
        super(fVar);
        if (!TextUtils.isEmpty(uri.getHost()) && !TextUtils.isEmpty(uri.getPath())) {
            String[] strArrSplit = uri.getPath().split("/");
            if (uri.getHost().contains("onelink.me") && strArrSplit.length == 3) {
                this.f2222a = strArrSplit[1];
                this.f2253c = strArrSplit[2];
            }
        }
    }

    final void a(a aVar) {
        this.f2252b = aVar;
    }

    final boolean c() {
        return (TextUtils.isEmpty(this.f2222a) || TextUtils.isEmpty(this.f2253c)) ? false : true;
    }

    @Override // com.appsflyer.k
    final void a(HttpsURLConnection httpsURLConnection) throws JSONException, IOException {
        httpsURLConnection.setRequestMethod(Constants.HTTP_GET);
    }

    @Override // com.appsflyer.k
    final String a() {
        return l.b("https://onelink.%s/shortlink-sdk/v1") + "/" + this.f2222a + "?id=" + this.f2253c;
    }

    @Override // com.appsflyer.k
    final void a(String str) {
        try {
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
            this.f2252b.a(map);
        } catch (JSONException e) {
            this.f2252b.a("Can't parse one link data");
            c.a("Error while parsing to json " + str, e);
        }
    }

    @Override // com.appsflyer.k
    final void b() {
        this.f2252b.a("Can't get one link data");
    }
}
