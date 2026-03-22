package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fr implements Callable<byte[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzeu f4359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ fe f4361c;

    fr(fe feVar, zzeu zzeuVar, String str) {
        this.f4361c = feVar;
        this.f4359a = zzeuVar;
        this.f4360b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        this.f4361c.f4320a.H();
        return this.f4361c.f4320a.b(this.f4359a, this.f4360b);
    }
}
