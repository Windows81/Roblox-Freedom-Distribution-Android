package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class je extends Handler {
    public je(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        try {
            super.dispatchMessage(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.aw.e();
            jm.a(com.google.android.gms.ads.internal.aw.i().m(), th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.aw.i().a(e, "AdMobHandler.handleMessage");
        }
    }
}
