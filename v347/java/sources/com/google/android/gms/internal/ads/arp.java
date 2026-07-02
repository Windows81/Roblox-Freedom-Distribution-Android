package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class arp implements Callable<Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f4404a;

    arp(Context context) {
        this.f4404a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        aoo.f().a(this.f4404a);
        return null;
    }
}
