package com.d.a;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class m implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final LinkedHashMap<String, Bitmap> f2492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2494d;
    private int e;
    private int f;
    private int g;
    private int h;

    public m(Context context) {
        this(ae.c(context));
    }

    public m(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Max size must be positive.");
        }
        this.f2493c = i;
        this.f2492b = new LinkedHashMap<>(0, 0.75f, true);
    }

    @Override // com.d.a.d
    public Bitmap a(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            Bitmap bitmap = this.f2492b.get(str);
            if (bitmap != null) {
                this.g++;
                return bitmap;
            }
            this.h++;
            return null;
        }
    }

    @Override // com.d.a.d
    public void a(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            throw new NullPointerException("key == null || bitmap == null");
        }
        synchronized (this) {
            this.e++;
            this.f2494d += ae.a(bitmap);
            Bitmap bitmapPut = this.f2492b.put(str, bitmap);
            if (bitmapPut != null) {
                this.f2494d -= ae.a(bitmapPut);
            }
        }
        a(this.f2493c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.f2494d     // Catch: java.lang.Throwable -> L32
            if (r0 < 0) goto L11
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f2492b     // Catch: java.lang.Throwable -> L32
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L35
            int r0 = r3.f2494d     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L35
        L11:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L32
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
            r1.<init>()     // Catch: java.lang.Throwable -> L32
            java.lang.Class r2 = r3.getClass()     // Catch: java.lang.Throwable -> L32
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L32
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.String r2 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L32
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L32
            throw r0     // Catch: java.lang.Throwable -> L32
        L32:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L32
            throw r0
        L35:
            int r0 = r3.f2494d     // Catch: java.lang.Throwable -> L32
            if (r0 <= r4) goto L41
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f2492b     // Catch: java.lang.Throwable -> L32
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L43
        L41:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L32
            return
        L43:
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f2492b     // Catch: java.lang.Throwable -> L32
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L32
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L32
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L32
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L32
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L32
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L32
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> L32
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r2 = r3.f2492b     // Catch: java.lang.Throwable -> L32
            r2.remove(r1)     // Catch: java.lang.Throwable -> L32
            int r1 = r3.f2494d     // Catch: java.lang.Throwable -> L32
            int r0 = com.d.a.ae.a(r0)     // Catch: java.lang.Throwable -> L32
            int r0 = r1 - r0
            r3.f2494d = r0     // Catch: java.lang.Throwable -> L32
            int r0 = r3.f     // Catch: java.lang.Throwable -> L32
            int r0 = r0 + 1
            r3.f = r0     // Catch: java.lang.Throwable -> L32
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L32
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.m.a(int):void");
    }

    @Override // com.d.a.d
    public final synchronized int a() {
        return this.f2494d;
    }

    @Override // com.d.a.d
    public final synchronized int b() {
        return this.f2493c;
    }
}
