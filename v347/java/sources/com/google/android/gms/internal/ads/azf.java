package com.google.android.gms.internal.ads;

import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class azf implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ aza f4660b;

    azf(aza azaVar, String str) {
        this.f4660b = azaVar;
        this.f4659a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4660b.f4649a.loadData(this.f4659a, "text/html", Constants.UTF8_NAME);
    }
}
