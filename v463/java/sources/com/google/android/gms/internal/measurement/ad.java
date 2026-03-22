package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f4008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f4009b;

    static {
        String strReplaceAll = String.valueOf(com.google.android.gms.common.f.f3704b / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
        f4008a = strReplaceAll;
        String strValueOf = String.valueOf(strReplaceAll);
        f4009b = strValueOf.length() != 0 ? "ma".concat(strValueOf) : new String("ma");
    }
}
