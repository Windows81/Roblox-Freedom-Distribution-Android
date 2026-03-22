package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum vt implements abg {
    UNKNOWN_FORMAT(0),
    UNCOMPRESSED(1),
    COMPRESSED(2),
    UNRECOGNIZED(-1);

    private static final abh<vt> e = new abh<vt>() { // from class: com.google.android.gms.internal.ads.vu
        @Override // com.google.android.gms.internal.ads.abh
        public final /* synthetic */ abg a(int i) {
            return vt.a(i);
        }
    };
    private final int f;

    vt(int i) {
        this.f = i;
    }

    public static vt a(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_FORMAT;
            case 1:
                return UNCOMPRESSED;
            case 2:
                return COMPRESSED;
            default:
                return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.abg
    public final int a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.f;
    }
}
