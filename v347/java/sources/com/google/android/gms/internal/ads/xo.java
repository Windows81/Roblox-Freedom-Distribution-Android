package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum xo implements abg {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);

    private static final abh<xo> g = new abh<xo>() { // from class: com.google.android.gms.internal.ads.xp
        @Override // com.google.android.gms.internal.ads.abh
        public final /* synthetic */ abg a(int i2) {
            return xo.a(i2);
        }
    };
    private final int h;

    xo(int i2) {
        this.h = i2;
    }

    public static xo a(int i2) {
        switch (i2) {
            case 0:
                return UNKNOWN_PREFIX;
            case 1:
                return TINK;
            case 2:
                return LEGACY;
            case 3:
                return RAW;
            case 4:
                return CRUNCHY;
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
