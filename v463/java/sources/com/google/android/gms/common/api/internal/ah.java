package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.SignInResponse;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ah extends com.google.android.gms.signin.internal.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<aa> f3488a;

    ah(aa aaVar) {
        this.f3488a = new WeakReference<>(aaVar);
    }

    @Override // com.google.android.gms.signin.internal.b, com.google.android.gms.signin.internal.d
    public final void a(SignInResponse signInResponse) {
        aa aaVar = this.f3488a.get();
        if (aaVar == null) {
            return;
        }
        aaVar.f3472a.a(new ai(this, aaVar, aaVar, signInResponse));
    }
}
