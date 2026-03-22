package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fu implements Callable<List<ip>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ fe f4369b;

    fu(fe feVar, zzdz zzdzVar) {
        this.f4369b = feVar;
        this.f4368a = zzdzVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<ip> call() throws Exception {
        this.f4369b.f4320a.H();
        return this.f4369b.f4320a.D().a(this.f4368a.f4713a);
    }
}
