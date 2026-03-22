package com.d.a;

import android.content.Context;
import android.net.Uri;
import com.d.a.j;
import com.squareup.okhttp.Cache;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class s implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OkHttpClient f2514a;

    private static OkHttpClient a() {
        OkHttpClient okHttpClient = new OkHttpClient();
        okHttpClient.setConnectTimeout(15000L, TimeUnit.MILLISECONDS);
        okHttpClient.setReadTimeout(20000L, TimeUnit.MILLISECONDS);
        okHttpClient.setWriteTimeout(20000L, TimeUnit.MILLISECONDS);
        return okHttpClient;
    }

    public s(Context context) {
        this(ae.b(context));
    }

    public s(File file) {
        this(file, ae.a(file));
    }

    public s(File file, long j) {
        this(a());
        try {
            this.f2514a.setCache(new Cache(file, j));
        } catch (IOException e) {
        }
    }

    public s(OkHttpClient okHttpClient) {
        this.f2514a = okHttpClient;
    }

    @Override // com.d.a.j
    public j.a a(Uri uri, int i) throws IOException {
        CacheControl cacheControlBuild = null;
        if (i != 0) {
            if (q.c(i)) {
                cacheControlBuild = CacheControl.FORCE_CACHE;
            } else {
                CacheControl.Builder builder = new CacheControl.Builder();
                if (!q.a(i)) {
                    builder.noCache();
                }
                if (!q.b(i)) {
                    builder.noStore();
                }
                cacheControlBuild = builder.build();
            }
        }
        Request.Builder builderUrl = new Request.Builder().url(uri.toString());
        if (cacheControlBuild != null) {
            builderUrl.cacheControl(cacheControlBuild);
        }
        Response responseExecute = this.f2514a.newCall(builderUrl.build()).execute();
        int iCode = responseExecute.code();
        if (iCode >= 300) {
            responseExecute.body().close();
            throw new j.b(iCode + " " + responseExecute.message(), i, iCode);
        }
        boolean z = responseExecute.cacheResponse() != null;
        ResponseBody responseBodyBody = responseExecute.body();
        return new j.a(responseBodyBody.byteStream(), z, responseBodyBody.contentLength());
    }
}
