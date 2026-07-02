package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class qg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ View f5469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ht f5470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f5471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ qe f5472d;

    qg(qe qeVar, View view, ht htVar, int i) {
        this.f5472d = qeVar;
        this.f5469a = view;
        this.f5470b = htVar;
        this.f5471c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5472d.a(this.f5469a, this.f5470b, this.f5471c - 1);
    }
}
