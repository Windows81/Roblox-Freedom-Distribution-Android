package com.google.android.gms.common.api;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Status f3326a;

    /* JADX WARN: Illegal instructions before constructor call */
    public b(Status status) {
        int iC = status.c();
        String strB = status.b() != null ? status.b() : "";
        super(new StringBuilder(String.valueOf(strB).length() + 13).append(iC).append(": ").append(strB).toString());
        this.f3326a = status;
    }
}
