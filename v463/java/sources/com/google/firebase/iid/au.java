package com.google.firebase.iid;

import android.os.Bundle;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class au implements com.google.android.gms.f.a<Bundle, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ar f5240a;

    au(ar arVar) {
        this.f5240a = arVar;
    }

    @Override // com.google.android.gms.f.a
    public final /* synthetic */ String a(com.google.android.gms.f.g<Bundle> gVar) throws Exception {
        Bundle bundleA = gVar.a(IOException.class);
        ar arVar = this.f5240a;
        return ar.a(bundleA);
    }
}
