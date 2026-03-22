package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ee implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ed f4243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Throwable f4245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f4246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4247e;
    private final Map<String, List<String>> f;

    private ee(String str, ed edVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        com.google.android.gms.common.internal.aa.a(edVar);
        this.f4243a = edVar;
        this.f4244b = i;
        this.f4245c = th;
        this.f4246d = bArr;
        this.f4247e = str;
        this.f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4243a.a(this.f4247e, this.f4244b, this.f4245c, this.f4246d, this.f);
    }
}
