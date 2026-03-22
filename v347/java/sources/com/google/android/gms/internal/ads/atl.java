package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class atl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<qd> f4485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4486b;

    public atl(qd qdVar) {
        this.f4485a = new WeakReference<>(qdVar);
    }

    public final void a(bq bqVar) {
        bqVar.a("/loadHtml", new atm(this, bqVar));
        bqVar.a("/showOverlay", new ato(this, bqVar));
        bqVar.a("/hideOverlay", new atp(this, bqVar));
        qd qdVar = this.f4485a.get();
        if (qdVar != null) {
            qdVar.a("/sendMessageToSdk", new atq(this, bqVar));
        }
    }
}
