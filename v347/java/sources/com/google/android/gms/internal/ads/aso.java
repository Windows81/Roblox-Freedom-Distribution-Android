package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class aso extends aty {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f4437a = Color.rgb(12, 174, 206);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f4438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f4439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f4440d;
    private final String e;
    private final List<ass> f = new ArrayList();
    private final List<aub> g = new ArrayList();
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final boolean m;

    static {
        int iRgb = Color.rgb(204, 204, 204);
        f4438b = iRgb;
        f4439c = iRgb;
        f4440d = f4437a;
    }

    public aso(String str, List<ass> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.e = str;
        if (list != null) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= list.size()) {
                    break;
                }
                ass assVar = list.get(i4);
                this.f.add(assVar);
                this.g.add(assVar);
                i3 = i4 + 1;
            }
        }
        this.h = num != null ? num.intValue() : f4439c;
        this.i = num2 != null ? num2.intValue() : f4440d;
        this.j = num3 != null ? num3.intValue() : 12;
        this.k = i;
        this.l = i2;
        this.m = z;
    }

    @Override // com.google.android.gms.internal.ads.atx
    public final String a() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.atx
    public final List<aub> b() {
        return this.g;
    }

    public final List<ass> c() {
        return this.f;
    }

    public final int d() {
        return this.h;
    }

    public final int e() {
        return this.i;
    }

    public final int f() {
        return this.j;
    }

    public final int g() {
        return this.k;
    }

    public final int h() {
        return this.l;
    }

    public final boolean i() {
        return this.m;
    }
}
