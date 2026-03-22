package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final /* synthetic */ class uq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f5603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ int[] f5604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final /* synthetic */ int[] f5605c = new int[vt.values().length];

    static {
        try {
            f5605c[vt.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f5605c[vt.COMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        f5604b = new int[wh.values().length];
        try {
            f5604b[wh.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f5604b[wh.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f5604b[wh.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
        f5603a = new int[wk.values().length];
        try {
            f5603a[wk.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError e6) {
        }
        try {
            f5603a[wk.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError e7) {
        }
        try {
            f5603a[wk.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError e8) {
        }
    }
}
