package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class kv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f5232a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<Double> f5233b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Double> f5234c = new ArrayList();

    public final ks a() {
        return new ks(this);
    }

    public final kv a(String str, double d2, double d3) {
        int i;
        int i2 = 0;
        while (true) {
            i = i2;
            if (i >= this.f5232a.size()) {
                break;
            }
            double dDoubleValue = this.f5234c.get(i).doubleValue();
            double dDoubleValue2 = this.f5233b.get(i).doubleValue();
            if (d2 < dDoubleValue || (dDoubleValue == d2 && d3 < dDoubleValue2)) {
                break;
            }
            i2 = i + 1;
        }
        this.f5232a.add(i, str);
        this.f5234c.add(i, Double.valueOf(d2));
        this.f5233b.add(i, Double.valueOf(d3));
        return this;
    }
}
