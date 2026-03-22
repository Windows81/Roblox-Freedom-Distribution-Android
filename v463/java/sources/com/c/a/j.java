package com.c.a;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface j {
    a a(Uri uri, int i) throws IOException;

    public static class b extends IOException {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f3145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f3146b;

        public b(String str, int i, int i2) {
            super(str);
            this.f3145a = q.c(i);
            this.f3146b = i2;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final InputStream f3141a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Bitmap f3142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f3143c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f3144d;

        public a(InputStream inputStream, boolean z, long j) {
            if (inputStream == null) {
                throw new IllegalArgumentException("Stream may not be null.");
            }
            this.f3141a = inputStream;
            this.f3142b = null;
            this.f3143c = z;
            this.f3144d = j;
        }

        public InputStream a() {
            return this.f3141a;
        }

        @Deprecated
        public Bitmap b() {
            return this.f3142b;
        }

        public long c() {
            return this.f3144d;
        }
    }
}
