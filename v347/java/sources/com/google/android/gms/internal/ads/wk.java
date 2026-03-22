package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum wk implements abg {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA224(2),
    SHA256(3),
    SHA512(4),
    UNRECOGNIZED(-1);

    private static final abh<wk> g = new abh<wk>() { // from class: com.google.android.gms.internal.ads.wl
        @Override // com.google.android.gms.internal.ads.abh
        public final /* synthetic */ abg a(int i2) {
            return wk.a(i2);
        }
    };
    private final int h;

    wk(int i2) {
        this.h = i2;
    }

    public static wk a(int i2) {
        switch (i2) {
            case 0:
                return UNKNOWN_HASH;
            case 1:
                return SHA1;
            case 2:
                return SHA224;
            case 3:
                return SHA256;
            case 4:
                return SHA512;
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
