package com.google.android.gms.internal.measurement;

import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class kj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f4660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f4663e;
    private final boolean f;

    public kj(Uri uri) {
        this(null, uri, "", "", false, false);
    }

    private kj(String str, Uri uri, String str2, String str3, boolean z, boolean z2) {
        this.f4659a = null;
        this.f4660b = uri;
        this.f4661c = str2;
        this.f4662d = str3;
        this.f4663e = false;
        this.f = false;
    }

    public final jy<Double> a(String str, double d2) {
        return jy.b(this, str, d2);
    }

    public final jy<Integer> a(String str, int i) {
        return jy.b(this, str, i);
    }

    public final jy<Long> a(String str, long j) {
        return jy.b(this, str, j);
    }

    public final jy<String> a(String str, String str2) {
        return jy.b(this, str, str2);
    }

    public final jy<Boolean> a(String str, boolean z) {
        return jy.b(this, str, z);
    }
}
