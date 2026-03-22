package com.google.android.gms.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class i extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ h f3654a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(h hVar, Looper looper) {
        super(looper);
        this.f3654a = hVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f3654a.a(message);
    }
}
