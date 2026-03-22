package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f3812a = 15;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f3813b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3814c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3815d;

    public n(String str) {
        this(str, null);
    }

    public n(String str, String str2) {
        aa.a(str, (Object) "log tag cannot be null");
        aa.b(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f3814c = str;
        if (str2 == null || str2.length() <= 0) {
            this.f3815d = null;
        } else {
            this.f3815d = str2;
        }
    }
}
