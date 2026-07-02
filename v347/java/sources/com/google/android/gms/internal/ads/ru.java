package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class ru implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f5522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ht f5523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f5524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ rs f5525d;

    ru(rs rsVar, View view, ht htVar, int i) {
        this.f5525d = rsVar;
        this.f5522a = view;
        this.f5523b = htVar;
        this.f5524c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5525d.a(this.f5522a, this.f5523b, this.f5524c - 1);
    }
}
