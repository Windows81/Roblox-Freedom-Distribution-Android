package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class ajj extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aji f4080a;

    ajj(aji ajiVar) {
        this.f4080a = ajiVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f4080a.a(3);
    }
}
