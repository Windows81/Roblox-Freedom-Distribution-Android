package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.f;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class h extends com.google.android.gms.common.internal.j<r> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final GoogleSignInOptions f3406e;

    public h(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, GoogleSignInOptions googleSignInOptions, f.b bVar, f.c cVar) {
        super(context, looper, 91, eVar, bVar, cVar);
        googleSignInOptions = googleSignInOptions == null ? new GoogleSignInOptions.a().c() : googleSignInOptions;
        if (!eVar.e().isEmpty()) {
            GoogleSignInOptions.a aVar = new GoogleSignInOptions.a(googleSignInOptions);
            Iterator<Scope> it = eVar.e().iterator();
            while (it.hasNext()) {
                aVar.a(it.next(), new Scope[0]);
            }
            googleSignInOptions = aVar.c();
        }
        this.f3406e = googleSignInOptions;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof r ? (r) iInterfaceQueryLocalInterface : new s(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String a_() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String b() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean c() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final Intent d() {
        return i.a(t(), this.f3406e);
    }

    public final GoogleSignInOptions e() {
        return this.f3406e;
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int f() {
        return 12451000;
    }
}
