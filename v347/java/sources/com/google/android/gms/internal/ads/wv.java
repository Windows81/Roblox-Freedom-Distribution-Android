package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum wv implements abg {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);

    private static final abh<wv> f = new abh<wv>() { // from class: com.google.android.gms.internal.ads.ww
        @Override // com.google.android.gms.internal.ads.abh
        public final /* synthetic */ abg a(int i) {
            return wv.a(i);
        }
    };
    private final int g;

    wv(int i) {
        this.g = i;
    }

    public static wv a(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_STATUS;
            case 1:
                return ENABLED;
            case 2:
                return DISABLED;
            case 3:
                return DESTROYED;
            default:
                return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.abg
    public final int a() {
        if (this == UNRECOGNIZED) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return this.g;
    }
}
