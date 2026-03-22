package android.support.v7.app;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static p f1284d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1287c;

    p() {
    }

    static p a() {
        if (f1284d == null) {
            f1284d = new p();
        }
        return f1284d;
    }

    public void a(long j, double d2, double d3) {
        float f = 6.24006f + (0.01720197f * ((j - 946728000000L) / 8.64E7f));
        double dSin = ((double) f) + (0.03341960161924362d * Math.sin(f)) + (3.4906598739326E-4d * Math.sin(2.0f * f)) + (5.236000106378924E-6d * Math.sin(3.0f * f)) + 1.796593063d + 3.141592653589793d;
        double dSin2 = (Math.sin(f) * 0.0053d) + ((-d3) / 360.0d) + ((double) (Math.round(((double) (r2 - 9.0E-4f)) - r6) + 9.0E-4f)) + ((-0.0069d) * Math.sin(2.0d * dSin));
        double dAsin = Math.asin(Math.sin(dSin) * Math.sin(0.4092797040939331d));
        double d4 = 0.01745329238474369d * d2;
        double dSin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(d4) * Math.sin(dAsin))) / (Math.cos(dAsin) * Math.cos(d4));
        if (dSin3 >= 1.0d) {
            this.f1287c = 1;
            this.f1285a = -1L;
            this.f1286b = -1L;
        } else {
            if (dSin3 <= -1.0d) {
                this.f1287c = 0;
                this.f1285a = -1L;
                this.f1286b = -1L;
                return;
            }
            float fAcos = (float) (Math.acos(dSin3) / 6.283185307179586d);
            this.f1285a = Math.round((((double) fAcos) + dSin2) * 8.64E7d) + 946728000000L;
            this.f1286b = Math.round((dSin2 - ((double) fAcos)) * 8.64E7d) + 946728000000L;
            if (this.f1286b < j && this.f1285a > j) {
                this.f1287c = 0;
            } else {
                this.f1287c = 1;
            }
        }
    }
}
