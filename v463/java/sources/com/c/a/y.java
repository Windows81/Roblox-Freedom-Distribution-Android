package com.c.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.c.a.t;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class y {
    int a() {
        return 0;
    }

    public abstract a a(w wVar, int i) throws IOException;

    public abstract boolean a(w wVar);

    boolean a(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    boolean b() {
        return false;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t.d f3219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bitmap f3220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final InputStream f3221c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3222d;

        public a(Bitmap bitmap, t.d dVar) {
            this((Bitmap) ae.a(bitmap, "bitmap == null"), null, dVar, 0);
        }

        public a(InputStream inputStream, t.d dVar) {
            this(null, (InputStream) ae.a(inputStream, "stream == null"), dVar, 0);
        }

        a(Bitmap bitmap, InputStream inputStream, t.d dVar, int i) {
            if (!((inputStream != null) ^ (bitmap != null))) {
                throw new AssertionError();
            }
            this.f3220b = bitmap;
            this.f3221c = inputStream;
            this.f3219a = (t.d) ae.a(dVar, "loadedFrom == null");
            this.f3222d = i;
        }

        public Bitmap a() {
            return this.f3220b;
        }

        public InputStream b() {
            return this.f3221c;
        }

        public t.d c() {
            return this.f3219a;
        }

        int d() {
            return this.f3222d;
        }
    }

    static BitmapFactory.Options c(w wVar) {
        boolean zD = wVar.d();
        boolean z = wVar.q != null;
        BitmapFactory.Options options = null;
        if (zD || z) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = zD;
            if (z) {
                options.inPreferredConfig = wVar.q;
            }
        }
        return options;
    }

    static boolean a(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    static void a(int i, int i2, BitmapFactory.Options options, w wVar) {
        a(i, i2, options.outWidth, options.outHeight, options, wVar);
    }

    static void a(int i, int i2, int i3, int i4, BitmapFactory.Options options, w wVar) {
        int iMin;
        double dFloor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                dFloor = Math.floor(i3 / i);
            } else if (i == 0) {
                dFloor = Math.floor(i4 / i2);
            } else {
                int iFloor = (int) Math.floor(i4 / i2);
                int iFloor2 = (int) Math.floor(i3 / i);
                if (wVar.k) {
                    iMin = Math.max(iFloor, iFloor2);
                } else {
                    iMin = Math.min(iFloor, iFloor2);
                }
            }
            iMin = (int) dFloor;
        } else {
            iMin = 1;
        }
        options.inSampleSize = iMin;
        options.inJustDecodeBounds = false;
    }
}
