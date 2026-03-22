package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class t extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3413a;

    public t(Context context) {
        this.f3413a = context;
    }

    private final void c() {
        if (com.google.android.gms.common.k.c(this.f3413a, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        StringBuilder sb = new StringBuilder(52);
        sb.append("Calling UID ");
        sb.append(callingUid);
        sb.append(" is not Google Play services.");
        throw new SecurityException(sb.toString());
    }

    @Override // com.google.android.gms.auth.api.signin.internal.n
    public final void a() {
        c();
        c cVarA = c.a(this.f3413a);
        GoogleSignInAccount googleSignInAccountA = cVarA.a();
        GoogleSignInOptions googleSignInOptionsB = GoogleSignInOptions.f;
        if (googleSignInAccountA != null) {
            googleSignInOptionsB = cVarA.b();
        }
        com.google.android.gms.common.api.f fVarB = new f.a(this.f3413a).a(com.google.android.gms.auth.api.a.f3308e, googleSignInOptionsB).b();
        try {
            if (fVarB.f().b()) {
                if (googleSignInAccountA != null) {
                    com.google.android.gms.auth.api.a.h.a(fVarB);
                } else {
                    fVarB.i();
                }
            }
        } finally {
            fVarB.g();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.n
    public final void b() {
        c();
        m.a(this.f3413a).a();
    }
}
