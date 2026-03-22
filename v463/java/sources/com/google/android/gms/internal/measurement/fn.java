package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class fn implements Callable<List<zzed>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ fe f4350d;

    fn(fe feVar, String str, String str2, String str3) {
        this.f4350d = feVar;
        this.f4347a = str;
        this.f4348b = str2;
        this.f4349c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzed> call() throws Exception {
        this.f4350d.f4320a.H();
        return this.f4350d.f4320a.D().b(this.f4347a, this.f4348b, this.f4349c);
    }
}
