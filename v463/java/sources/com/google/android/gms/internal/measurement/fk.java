package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fk implements Callable<List<ip>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ fe f4338d;

    fk(fe feVar, zzdz zzdzVar, String str, String str2) {
        this.f4338d = feVar;
        this.f4335a = zzdzVar;
        this.f4336b = str;
        this.f4337c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<ip> call() throws Exception {
        this.f4338d.f4320a.H();
        return this.f4338d.f4320a.D().a(this.f4335a.f4713a, this.f4336b, this.f4337c);
    }
}
