package com.google.android.gms.ads;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.ly;
import com.google.android.gms.internal.ads.zzjn;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f2953a = new d(320, 50, "320x50_mb");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f2954b = new d(468, 60, "468x60_as");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f2955c = new d(320, 100, "320x100_as");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f2956d = new d(728, 90, "728x90_as");
    public static final d e = new d(300, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, "300x250_as");
    public static final d f = new d(160, 600, "160x600_as");
    public static final d g = new d(-1, -2, "smart_banner");
    public static final d h = new d(-3, -4, "fluid");
    public static final d i = new d(50, 50, "50x50_mb");
    public static final d j = new d(-3, 0, "search_v2");
    private final int k;
    private final int l;
    private final String m;

    /* JADX WARN: Illegal instructions before constructor call */
    public d(int i2, int i3) {
        String strValueOf = i2 == -1 ? "FULL" : String.valueOf(i2);
        String strValueOf2 = i3 == -2 ? "AUTO" : String.valueOf(i3);
        this(i2, i3, new StringBuilder(String.valueOf(strValueOf).length() + 4 + String.valueOf(strValueOf2).length()).append(strValueOf).append("x").append(strValueOf2).append("_as").toString());
    }

    d(int i2, int i3, String str) {
        if (i2 < 0 && i2 != -1 && i2 != -3) {
            throw new IllegalArgumentException(new StringBuilder(37).append("Invalid width for AdSize: ").append(i2).toString());
        }
        if (i3 < 0 && i3 != -2 && i3 != -4) {
            throw new IllegalArgumentException(new StringBuilder(38).append("Invalid height for AdSize: ").append(i3).toString());
        }
        this.k = i2;
        this.l = i3;
        this.m = str;
    }

    public final int a() {
        return this.l;
    }

    public final int a(Context context) {
        switch (this.l) {
            case -4:
            case -3:
                return -1;
            case -2:
                return zzjn.b(context.getResources().getDisplayMetrics());
            default:
                aoo.a();
                return ly.a(context, this.l);
        }
    }

    public final int b() {
        return this.k;
    }

    public final int b(Context context) {
        switch (this.k) {
            case -4:
            case -3:
                return -1;
            case -2:
            default:
                aoo.a();
                return ly.a(context, this.k);
            case -1:
                return zzjn.a(context.getResources().getDisplayMetrics());
        }
    }

    public final boolean c() {
        return this.l == -2;
    }

    public final boolean d() {
        return this.k == -1;
    }

    public final boolean e() {
        return this.k == -3 && this.l == -4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.k == dVar.k && this.l == dVar.l && this.m.equals(dVar.m);
    }

    public final int hashCode() {
        return this.m.hashCode();
    }

    public final String toString() {
        return this.m;
    }
}
