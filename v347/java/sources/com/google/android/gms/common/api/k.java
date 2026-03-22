package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class k extends UnsupportedOperationException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Feature f3415a;

    public k(Feature feature) {
        this.f3415a = feature;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String strValueOf = String.valueOf(this.f3415a);
        return new StringBuilder(String.valueOf(strValueOf).length() + 8).append("Missing ").append(strValueOf).toString();
    }
}
