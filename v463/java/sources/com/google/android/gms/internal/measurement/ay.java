package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ay implements Callable<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aw f4059a;

    ay(aw awVar) {
        this.f4059a = awVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.f4059a.e();
    }
}
