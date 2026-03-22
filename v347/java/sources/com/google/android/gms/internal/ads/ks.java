package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f5224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double[] f5225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double[] f5226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f5227d;
    private int e;

    private ks(kv kvVar) {
        int size = kvVar.f5233b.size();
        this.f5224a = (String[]) kvVar.f5232a.toArray(new String[size]);
        this.f5225b = a((List<Double>) kvVar.f5233b);
        this.f5226c = a((List<Double>) kvVar.f5234c);
        this.f5227d = new int[size];
        this.e = 0;
    }

    private static double[] a(List<Double> list) {
        double[] dArr = new double[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= dArr.length) {
                return dArr;
            }
            dArr[i2] = list.get(i2).doubleValue();
            i = i2 + 1;
        }
    }

    public final List<ku> a() {
        ArrayList arrayList = new ArrayList(this.f5224a.length);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f5224a.length) {
                return arrayList;
            }
            arrayList.add(new ku(this.f5224a[i2], this.f5226c[i2], this.f5225b[i2], ((double) this.f5227d[i2]) / ((double) this.e), this.f5227d[i2]));
            i = i2 + 1;
        }
    }

    public final void a(double d2) {
        this.e++;
        for (int i = 0; i < this.f5226c.length; i++) {
            if (this.f5226c[i] <= d2 && d2 < this.f5225b[i]) {
                int[] iArr = this.f5227d;
                iArr[i] = iArr[i] + 1;
            }
            if (d2 < this.f5226c[i]) {
                return;
            }
        }
    }
}
