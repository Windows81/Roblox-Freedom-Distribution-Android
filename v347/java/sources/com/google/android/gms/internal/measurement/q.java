package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f6007a = String.valueOf(com.google.android.gms.common.f.f3430b / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f6008b;

    static {
        String strValueOf = String.valueOf(f6007a);
        f6008b = strValueOf.length() != 0 ? "ma".concat(strValueOf) : new String("ma");
    }
}
