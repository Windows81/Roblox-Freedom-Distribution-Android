package com.c.a;

import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f3106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3107e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final int k;
    public final int l;
    public final int m;
    public final long n;

    public ab(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.f3103a = i;
        this.f3104b = i2;
        this.f3105c = j;
        this.f3106d = j2;
        this.f3107e = j3;
        this.f = j4;
        this.g = j5;
        this.h = j6;
        this.i = j7;
        this.j = j8;
        this.k = i3;
        this.l = i4;
        this.m = i5;
        this.n = j9;
    }

    public void a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f3103a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f3104b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f3104b / this.f3103a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f3105c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f3106d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f3107e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f3103a + ", size=" + this.f3104b + ", cacheHits=" + this.f3105c + ", cacheMisses=" + this.f3106d + ", downloadCount=" + this.k + ", totalDownloadSize=" + this.f3107e + ", averageDownloadSize=" + this.h + ", totalOriginalBitmapSize=" + this.f + ", totalTransformedBitmapSize=" + this.g + ", averageOriginalBitmapSize=" + this.i + ", averageTransformedBitmapSize=" + this.j + ", originalBitmapCount=" + this.l + ", transformedBitmapCount=" + this.m + ", timeStamp=" + this.n + '}';
    }
}
