package com.google.firebase.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class w extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ v f5283a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    w(v vVar, Looper looper) {
        super(looper);
        this.f5283a = vVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.f5283a.a(message);
    }
}
