package com.google.android.gms.common.api;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Status f3446a;

    public b(Status status) {
        int iE = status.e();
        String strA = status.a() != null ? status.a() : "";
        StringBuilder sb = new StringBuilder(String.valueOf(strA).length() + 13);
        sb.append(iE);
        sb.append(": ");
        sb.append(strA);
        super(sb.toString());
        this.f3446a = status;
    }

    public int a() {
        return this.f3446a.e();
    }
}
