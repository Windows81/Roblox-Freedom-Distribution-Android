package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class p {
    public static void a(Status status, com.google.android.gms.f.h<Void> hVar) {
        a(status, null, hVar);
    }

    public static <TResult> void a(Status status, TResult tresult, com.google.android.gms.f.h<TResult> hVar) {
        if (status.d()) {
            hVar.a(tresult);
        } else {
            hVar.a((Exception) new com.google.android.gms.common.api.b(status));
        }
    }
}
