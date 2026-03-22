package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class arn<T> implements Callable<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ are f4397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ arm f4398b;

    arn(arm armVar, are areVar) {
        this.f4398b = armVar;
        this.f4397a = areVar;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        return (T) this.f4397a.a(this.f4398b.f4396d);
    }
}
