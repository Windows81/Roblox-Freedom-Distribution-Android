package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public enum an {
    NONE,
    GZIP;

    public static an a(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
