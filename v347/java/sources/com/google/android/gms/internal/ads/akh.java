package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class akh extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ akf f4118a;

    akh(akf akfVar) {
        this.f4118a = akfVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f4118a.a(3);
    }
}
