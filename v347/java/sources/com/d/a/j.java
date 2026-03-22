package com.d.a;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface j {
    a a(Uri uri, int i) throws IOException;

    public static class b extends IOException {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f2490a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f2491b;

        public b(String str, int i, int i2) {
            super(str);
            this.f2490a = q.c(i);
            this.f2491b = i2;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final InputStream f2486a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Bitmap f2487b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f2488c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f2489d;

        public a(InputStream inputStream, boolean z, long j) {
            if (inputStream == null) {
                throw new IllegalArgumentException("Stream may not be null.");
            }
            this.f2486a = inputStream;
            this.f2487b = null;
            this.f2488c = z;
            this.f2489d = j;
        }

        public InputStream a() {
            return this.f2486a;
        }

        @Deprecated
        public Bitmap b() {
            return this.f2487b;
        }

        public long c() {
            return this.f2489d;
        }
    }
}
