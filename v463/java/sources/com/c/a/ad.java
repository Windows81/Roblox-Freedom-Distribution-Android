package com.c.a;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build;
import com.c.a.j;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ad implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile Object f3108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f3109b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadLocal<StringBuilder> f3110c = new ThreadLocal<StringBuilder>() { // from class: com.c.a.ad.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f3111d;

    public ad(Context context) {
        this.f3111d = context.getApplicationContext();
    }

    protected HttpURLConnection a(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(20000);
        return httpURLConnection;
    }

    @Override // com.c.a.j
    public j.a a(Uri uri, int i) throws IOException {
        String string;
        if (Build.VERSION.SDK_INT >= 14) {
            a(this.f3111d);
        }
        HttpURLConnection httpURLConnectionA = a(uri);
        httpURLConnectionA.setUseCaches(true);
        if (i != 0) {
            if (q.c(i)) {
                string = "only-if-cached,max-age=2147483647";
            } else {
                StringBuilder sb = f3110c.get();
                sb.setLength(0);
                if (!q.a(i)) {
                    sb.append("no-cache");
                }
                if (!q.b(i)) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append("no-store");
                }
                string = sb.toString();
            }
            httpURLConnectionA.setRequestProperty("Cache-Control", string);
        }
        int responseCode = httpURLConnectionA.getResponseCode();
        if (responseCode >= 300) {
            httpURLConnectionA.disconnect();
            throw new j.b(responseCode + " " + httpURLConnectionA.getResponseMessage(), i, responseCode);
        }
        return new j.a(httpURLConnectionA.getInputStream(), ae.a(httpURLConnectionA.getHeaderField("X-Android-Response-Source")), httpURLConnectionA.getHeaderFieldInt("Content-Length", -1));
    }

    private static void a(Context context) {
        if (f3108a == null) {
            try {
                synchronized (f3109b) {
                    if (f3108a == null) {
                        f3108a = a.a(context);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    private static class a {
        static Object a(Context context) throws IOException {
            File fileB = ae.b(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            return installed == null ? HttpResponseCache.install(fileB, ae.a(fileB)) : installed;
        }
    }
}
