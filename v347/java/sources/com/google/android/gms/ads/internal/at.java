package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.agu;
import com.google.android.gms.internal.ads.agv;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class at implements Callable<agv> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aq f3024a;

    at(aq aqVar) {
        this.f3024a = aqVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ agv call() throws Exception {
        return new agv(agu.a(this.f3024a.f3018a.f5784a, this.f3024a.f3021d, false));
    }
}
