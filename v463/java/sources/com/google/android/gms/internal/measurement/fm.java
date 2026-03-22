package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fm implements Callable<List<zzed>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdz f4343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ fe f4346d;

    fm(fe feVar, zzdz zzdzVar, String str, String str2) {
        this.f4346d = feVar;
        this.f4343a = zzdzVar;
        this.f4344b = str;
        this.f4345c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzed> call() throws Exception {
        this.f4346d.f4320a.H();
        return this.f4346d.f4320a.D().b(this.f4343a.f4713a, this.f4344b, this.f4345c);
    }
}
