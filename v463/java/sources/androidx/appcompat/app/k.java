package androidx.appcompat.app;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static k f684d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f686b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f687c;

    k() {
    }

    static k a() {
        if (f684d == null) {
            f684d = new k();
        }
        return f684d;
    }

    public void a(long j, double d2, double d3) {
        float f = (j - 946728000000L) / 8.64E7f;
        double d4 = (0.01720197f * f) + 6.24006f;
        double dSin = Math.sin(d4) * 0.03341960161924362d;
        Double.isNaN(d4);
        double dSin2 = dSin + d4 + (Math.sin(2.0f * r4) * 3.4906598739326E-4d) + (Math.sin(r4 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        Double.isNaN(f - 9.0E-4f);
        double dRound = Math.round(r11 - r9) + 9.0E-4f;
        Double.isNaN(dRound);
        double dSin3 = dRound + ((-d3) / 360.0d) + (Math.sin(d4) * 0.0053d) + (Math.sin(2.0d * dSin2) * (-0.0069d));
        double dAsin = Math.asin(Math.sin(dSin2) * Math.sin(0.4092797040939331d));
        double d5 = 0.01745329238474369d * d2;
        double dSin4 = (Math.sin(-0.10471975803375244d) - (Math.sin(d5) * Math.sin(dAsin))) / (Math.cos(d5) * Math.cos(dAsin));
        if (dSin4 >= 1.0d) {
            this.f687c = 1;
            this.f685a = -1L;
            this.f686b = -1L;
            return;
        }
        if (dSin4 <= -1.0d) {
            this.f687c = 0;
            this.f685a = -1L;
            this.f686b = -1L;
            return;
        }
        double dAcos = (float) (Math.acos(dSin4) / 6.283185307179586d);
        Double.isNaN(dAcos);
        this.f685a = Math.round((dSin3 + dAcos) * 8.64E7d) + 946728000000L;
        Double.isNaN(dAcos);
        long jRound = Math.round((dSin3 - dAcos) * 8.64E7d) + 946728000000L;
        this.f686b = jRound;
        if (jRound < j && this.f685a > j) {
            this.f687c = 0;
        } else {
            this.f687c = 1;
        }
    }
}
