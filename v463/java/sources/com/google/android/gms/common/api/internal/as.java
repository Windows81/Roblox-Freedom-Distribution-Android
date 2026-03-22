package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class as extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ am f3509a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    as(am amVar, Looper looper) {
        super(looper);
        this.f3509a = amVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.f3509a.q();
            return;
        }
        if (i == 2) {
            this.f3509a.p();
            return;
        }
        int i2 = message.what;
        StringBuilder sb = new StringBuilder(31);
        sb.append("Unknown message id: ");
        sb.append(i2);
        Log.w("GoogleApiClientImpl", sb.toString());
    }
}
