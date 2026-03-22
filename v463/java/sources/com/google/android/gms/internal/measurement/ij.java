package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ij implements ed {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ii f4551b;

    ij(ii iiVar, String str) {
        this.f4551b = iiVar;
        this.f4550a = str;
    }

    @Override // com.google.android.gms.internal.measurement.ed
    public final void a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f4551b.a(i, th, bArr, this.f4550a);
    }
}
