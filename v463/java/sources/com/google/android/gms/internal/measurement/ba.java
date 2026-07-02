package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public enum ba {
    NONE,
    GZIP;

    public static ba a(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
