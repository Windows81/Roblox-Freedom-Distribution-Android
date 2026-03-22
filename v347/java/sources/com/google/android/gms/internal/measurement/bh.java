package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f5909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5910d;
    private final Object e;
    private final String f;
    private final com.google.android.gms.common.util.d g;

    private bh(int i, long j, String str, com.google.android.gms.common.util.d dVar) {
        this.e = new Object();
        this.f5908b = 60;
        this.f5909c = this.f5908b;
        this.f5907a = 2000L;
        this.f = str;
        this.g = dVar;
    }

    public bh(String str, com.google.android.gms.common.util.d dVar) {
        this(60, 2000L, str, dVar);
    }

    public final boolean a() {
        boolean z;
        synchronized (this.e) {
            long jA = this.g.a();
            if (this.f5909c < this.f5908b) {
                double d2 = (jA - this.f5910d) / this.f5907a;
                if (d2 > 0.0d) {
                    this.f5909c = Math.min(this.f5908b, d2 + this.f5909c);
                }
            }
            this.f5910d = jA;
            if (this.f5909c >= 1.0d) {
                this.f5909c -= 1.0d;
                z = true;
            } else {
                String str = this.f;
                bi.b(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
                z = false;
            }
        }
        return z;
    }
}
