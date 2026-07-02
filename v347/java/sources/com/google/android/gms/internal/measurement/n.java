package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class n implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ i f6004a;

    n(i iVar) {
        this.f6004a = iVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        this.f6004a.f5994a.f();
        return null;
    }
}
