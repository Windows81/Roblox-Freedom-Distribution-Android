package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum wh implements abg {
    UNKNOWN_CURVE(0),
    NIST_P224(1),
    NIST_P256(2),
    NIST_P384(3),
    NIST_P521(4),
    UNRECOGNIZED(-1);

    private static final abh<wh> g = new abh<wh>() { // from class: com.google.android.gms.internal.ads.wi
        @Override // com.google.android.gms.internal.ads.abh
        public final /* synthetic */ abg a(int i2) {
            return wh.a(i2);
        }
    };
    private final int h;

    wh(int i2) {
        this.h = i2;
    }

    public static wh a(int i2) {
        switch (i2) {
            case 0:
                return UNKNOWN_CURVE;
            case 1:
                return NIST_P224;
            case 2:
                return NIST_P256;
            case 3:
                return NIST_P384;
            case 4:
                return NIST_P521;
            default:
                return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.abg
    public final int a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.h;
    }
}
