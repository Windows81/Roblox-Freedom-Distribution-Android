package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class by extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bw f3571a;

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            com.google.android.gms.common.api.g<?> gVar = (com.google.android.gms.common.api.g) message.obj;
            synchronized (this.f3571a.f3568e) {
                if (gVar == null) {
                    this.f3571a.f3565b.a(new Status(13, "Transform returned null"));
                } else if (gVar instanceof bo) {
                    this.f3571a.f3565b.a(((bo) gVar).d());
                } else {
                    this.f3571a.f3565b.a(gVar);
                }
            }
            return;
        }
        if (i == 1) {
            RuntimeException runtimeException = (RuntimeException) message.obj;
            String strValueOf = String.valueOf(runtimeException.getMessage());
            Log.e("TransformedResultImpl", strValueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(strValueOf) : new String("Runtime exception on the transformation worker thread: "));
            throw runtimeException;
        }
        int i2 = message.what;
        StringBuilder sb = new StringBuilder(70);
        sb.append("TransformationResultHandler received unknown message type: ");
        sb.append(i2);
        Log.e("TransformedResultImpl", sb.toString());
    }
}
