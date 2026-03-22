package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fl implements Callable<List<ip>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ fe f4342d;

    fl(fe feVar, String str, String str2, String str3) {
        this.f4342d = feVar;
        this.f4339a = str;
        this.f4340b = str2;
        this.f4341c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<ip> call() throws Exception {
        this.f4342d.f4320a.H();
        return this.f4342d.f4320a.D().a(this.f4339a, this.f4340b, this.f4341c);
    }
}
