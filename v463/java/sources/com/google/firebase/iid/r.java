package com.google.firebase.iid;

import com.google.firebase.iid.Registrar;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final /* synthetic */ class r implements com.google.firebase.components.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final com.google.firebase.components.d f5274a = new r();

    private r() {
    }

    @Override // com.google.firebase.components.d
    public final Object a(com.google.firebase.components.b bVar) {
        return new Registrar.a((FirebaseInstanceId) bVar.a(FirebaseInstanceId.class));
    }
}
