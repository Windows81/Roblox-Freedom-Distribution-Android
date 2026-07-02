package com.google.android.gms.internal.ads;

import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class azg implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ aza f4662b;

    azg(aza azaVar, String str) {
        this.f4662b = azaVar;
        this.f4661a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4662b.f4649a.loadData(this.f4661a, "text/html", Constants.UTF8_NAME);
    }
}
