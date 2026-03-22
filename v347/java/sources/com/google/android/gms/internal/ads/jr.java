package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class jr extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ jm f5195a;

    private jr(jm jmVar) {
        this.f5195a = jmVar;
    }

    /* synthetic */ jr(jm jmVar, jn jnVar) {
        this(jmVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.f5195a.f5186c = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.f5195a.f5186c = false;
        }
    }
}
