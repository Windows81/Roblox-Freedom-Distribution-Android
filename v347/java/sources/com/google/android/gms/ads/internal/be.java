package com.google.android.gms.ads.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class be implements Callable<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ba f3047a;

    be(ba baVar) {
        this.f3047a = baVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.f3047a.e.f3037d.a().a(this.f3047a.e.f3036c);
    }
}
