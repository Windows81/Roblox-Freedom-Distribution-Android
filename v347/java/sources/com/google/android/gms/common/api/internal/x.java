package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class x extends com.google.android.gms.signin.internal.b implements f.a, f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a.AbstractC0068a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> f3409a = com.google.android.gms.signin.a.f6037c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f3411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a.AbstractC0068a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> f3412d;
    private Set<Scope> e;
    private com.google.android.gms.common.internal.e f;
    private com.google.android.gms.signin.b g;
    private ab h;

    public x(Context context, Handler handler, com.google.android.gms.common.internal.e eVar) {
        this(context, handler, eVar, f3409a);
    }

    public x(Context context, Handler handler, com.google.android.gms.common.internal.e eVar, a.AbstractC0068a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0068a) {
        this.f3410b = context;
        this.f3411c = handler;
        this.f = (com.google.android.gms.common.internal.e) com.google.android.gms.common.internal.w.a(eVar, "ClientSettings must not be null");
        this.e = eVar.c();
        this.f3412d = abstractC0068a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(SignInResponse signInResponse) {
        ConnectionResult connectionResultA = signInResponse.a();
        if (connectionResultA.b()) {
            ResolveAccountResponse resolveAccountResponseB = signInResponse.b();
            ConnectionResult connectionResultB = resolveAccountResponseB.b();
            if (!connectionResultB.b()) {
                String strValueOf = String.valueOf(connectionResultB);
                Log.wtf("SignInCoordinator", new StringBuilder(String.valueOf(strValueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(strValueOf).toString(), new Exception());
                this.h.b(connectionResultB);
                this.g.a();
                return;
            }
            this.h.a(resolveAccountResponseB.a(), this.e);
        } else {
            this.h.b(connectionResultA);
        }
        this.g.a();
    }

    public final void a() {
        if (this.g != null) {
            this.g.a();
        }
    }

    @Override // com.google.android.gms.common.api.f.a
    public final void a(int i) {
        this.g.a();
    }

    @Override // com.google.android.gms.common.api.f.a
    public final void a(Bundle bundle) {
        this.g.a(this);
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(ConnectionResult connectionResult) {
        this.h.b(connectionResult);
    }

    public final void a(ab abVar) {
        if (this.g != null) {
            this.g.a();
        }
        this.f.a(Integer.valueOf(System.identityHashCode(this)));
        this.g = (com.google.android.gms.signin.b) this.f3412d.a(this.f3410b, this.f3411c.getLooper(), this.f, this.f.g(), this, this);
        this.h = abVar;
        if (this.e == null || this.e.isEmpty()) {
            this.f3411c.post(new y(this));
        } else {
            this.g.j();
        }
    }

    @Override // com.google.android.gms.signin.internal.b, com.google.android.gms.signin.internal.d
    public final void a(SignInResponse signInResponse) {
        this.f3411c.post(new aa(this, signInResponse));
    }
}
