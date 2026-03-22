package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final /* synthetic */ class yf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f5696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ int[] f5697b = new int[yg.values().length];

    static {
        try {
            f5697b[yg.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f5697b[yg.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f5697b[yg.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        f5696a = new int[yh.values().length];
        try {
            f5696a[yh.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f5696a[yh.COMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
    }
}
