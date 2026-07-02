package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
@cm
final class ayh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final aye f4626a = aye.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f4627b = ((Float) aoo.f().a(aro.bf)).floatValue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f4628c = ((Long) aoo.f().a(aro.bd)).longValue();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final float f4629d = ((Float) aoo.f().a(aro.bg)).floatValue();
    private static final long e = ((Long) aoo.f().a(aro.be)).longValue();

    private static int a(long j, int i) {
        return (int) ((j >>> ((i % 16) * 4)) & 15);
    }

    static boolean a() {
        int iA = Integer.MAX_VALUE;
        int iH = f4626a.h();
        int i = f4626a.i();
        int iF = f4626a.f() + f4626a.g();
        if (i <= ((iH >= 16 || e == 0) ? f4629d != 0.0f ? ((int) (f4629d * iH)) + 1 : Integer.MAX_VALUE : a(e, iH))) {
            if (iH < 16 && f4628c != 0) {
                iA = a(f4628c, iH);
            } else if (f4627b != 0.0f) {
                iA = (int) (f4627b * iH);
            }
            if (iF <= iA) {
                return true;
            }
        }
        return false;
    }
}
