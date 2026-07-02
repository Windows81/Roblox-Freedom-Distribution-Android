package com.appsflyer;

import android.text.TextUtils;
import java.io.IOException;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public abstract class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f2222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f2223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f2224c;

    abstract String a();

    abstract void a(String str);

    abstract void a(HttpsURLConnection httpsURLConnection) throws JSONException, IOException;

    abstract void b();

    k(f fVar) {
        this.f2224c = fVar;
    }

    public void a(a aVar) {
        this.f2223b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        c();
    }

    private void c() {
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String strA = "";
        String str = "";
        String strA2 = a();
        c.a("oneLinkUrl: " + strA2);
        try {
            HttpsURLConnection httpsURLConnectionA = this.f2223b.a(strA2);
            httpsURLConnectionA.addRequestProperty("content-type", "application/json");
            httpsURLConnectionA.addRequestProperty("authorization", v.a(jCurrentTimeMillis));
            httpsURLConnectionA.addRequestProperty("af-timestamp", String.valueOf(jCurrentTimeMillis));
            httpsURLConnectionA.setReadTimeout(3000);
            httpsURLConnectionA.setConnectTimeout(3000);
            a(httpsURLConnectionA);
            int responseCode = httpsURLConnectionA.getResponseCode();
            strA = this.f2224c.a(httpsURLConnectionA);
            if (responseCode == 200) {
                c.c("Status 200 ok");
            } else {
                str = "Response code = " + responseCode + " content = " + strA;
            }
        } catch (Throwable th) {
            c.a("Error while calling " + strA2, th);
            str = "Error while calling " + strA2 + " stacktrace: " + th.toString();
        }
        if (TextUtils.isEmpty(str)) {
            c.c("Connection call succeeded: " + strA);
            a(strA);
        } else {
            c.d("Connection error: " + str);
            b();
        }
    }

    public static class a {
        HttpsURLConnection a(String str) throws IOException {
            return (HttpsURLConnection) new URL(str).openConnection();
        }
    }
}
