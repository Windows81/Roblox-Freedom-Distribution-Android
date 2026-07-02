package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class jq extends BroadcastReceiver {
    private jq(jm jmVar) {
    }

    /* synthetic */ jq(jm jmVar, jn jnVar) {
        this(jmVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        mc.a();
        ja.a(context);
    }
}
