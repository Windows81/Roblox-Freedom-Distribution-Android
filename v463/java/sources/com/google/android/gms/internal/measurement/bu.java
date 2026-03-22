package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f4101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f4103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f4105e;
    private final String f;
    private final com.google.android.gms.common.util.d g;

    private bu(int i, long j, String str, com.google.android.gms.common.util.d dVar) {
        this.f4105e = new Object();
        this.f4102b = 60;
        this.f4103c = 60;
        this.f4101a = 2000L;
        this.f = str;
        this.g = dVar;
    }

    public bu(String str, com.google.android.gms.common.util.d dVar) {
        this(60, 2000L, str, dVar);
    }

    public final boolean a() {
        synchronized (this.f4105e) {
            long jA = this.g.a();
            if (this.f4103c < this.f4102b) {
                double d2 = jA - this.f4104d;
                double d3 = this.f4101a;
                Double.isNaN(d2);
                Double.isNaN(d3);
                double d4 = d2 / d3;
                if (d4 > 0.0d) {
                    this.f4103c = Math.min(this.f4102b, this.f4103c + d4);
                }
            }
            this.f4104d = jA;
            if (this.f4103c >= 1.0d) {
                this.f4103c -= 1.0d;
                return true;
            }
            String str = this.f;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
            sb.append("Excessive ");
            sb.append(str);
            sb.append(" detected; call ignored.");
            bv.b(sb.toString());
            return false;
        }
    }
}
