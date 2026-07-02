package com.d.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.d.a.t;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class y {
    public abstract a a(w wVar, int i) throws IOException;

    public abstract boolean a(w wVar);

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t.d f2553a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bitmap f2554b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final InputStream f2555c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f2556d;

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
            this.f2554b = bitmap;
            this.f2555c = inputStream;
            this.f2553a = (t.d) ae.a(dVar, "loadedFrom == null");
            this.f2556d = i;
        }

        public Bitmap a() {
            return this.f2554b;
        }

        public InputStream b() {
            return this.f2555c;
        }

        public t.d c() {
            return this.f2553a;
        }

        int d() {
            return this.f2556d;
        }
    }

    int a() {
        return 0;
    }

    boolean a(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    boolean b() {
        return false;
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
        int iMin = 1;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                iMin = (int) Math.floor(i3 / i);
            } else if (i == 0) {
                iMin = (int) Math.floor(i4 / i2);
            } else {
                int iFloor = (int) Math.floor(i4 / i2);
                int iFloor2 = (int) Math.floor(i3 / i);
                if (wVar.k) {
                    iMin = Math.max(iFloor, iFloor2);
                } else {
                    iMin = Math.min(iFloor, iFloor2);
                }
            }
        }
        options.inSampleSize = iMin;
        options.inJustDecodeBounds = false;
    }
}
