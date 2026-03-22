package com.d.a;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build;
import com.d.a.j;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ad implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile Object f2455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f2456b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadLocal<StringBuilder> f2457c = new ThreadLocal<StringBuilder>() { // from class: com.d.a.ad.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f2458d;

    public ad(Context context) {
        this.f2458d = context.getApplicationContext();
    }

    protected HttpURLConnection a(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(20000);
        return httpURLConnection;
    }

    @Override // com.d.a.j
    public j.a a(Uri uri, int i) throws IOException {
        String string;
        if (Build.VERSION.SDK_INT >= 14) {
            a(this.f2458d);
        }
        HttpURLConnection httpURLConnectionA = a(uri);
        httpURLConnectionA.setUseCaches(true);
        if (i != 0) {
            if (q.c(i)) {
                string = "only-if-cached,max-age=2147483647";
            } else {
                StringBuilder sb = f2457c.get();
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
        if (f2455a == null) {
            try {
                synchronized (f2456b) {
                    if (f2455a == null) {
                        f2455a = a.a(context);
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    private static class a {
        static Object a(Context context) throws IOException {
            File fileB = ae.b(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            if (installed == null) {
                return HttpResponseCache.install(fileB, ae.a(fileB));
            }
            return installed;
        }
    }
}
