package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bp extends com.google.android.gms.signin.internal.b implements f.b, f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> f3548a = com.google.android.gms.signin.a.f4745c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f3550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> f3551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set<Scope> f3552e;
    private com.google.android.gms.common.internal.e f;
    private com.google.android.gms.signin.b g;
    private bt h;

    public bp(Context context, Handler handler, com.google.android.gms.common.internal.e eVar) {
        this(context, handler, eVar, f3548a);
    }

    public bp(Context context, Handler handler, com.google.android.gms.common.internal.e eVar, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a) {
        this.f3549b = context;
        this.f3550c = handler;
        this.f = (com.google.android.gms.common.internal.e) com.google.android.gms.common.internal.aa.a(eVar, "ClientSettings must not be null");
        this.f3552e = eVar.d();
        this.f3551d = abstractC0083a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(SignInResponse signInResponse) {
        ConnectionResult connectionResultA = signInResponse.a();
        if (connectionResultA.b()) {
            ResolveAccountResponse resolveAccountResponseB = signInResponse.b();
            connectionResultA = resolveAccountResponseB.b();
            if (connectionResultA.b()) {
                this.h.a(resolveAccountResponseB.a(), this.f3552e);
            } else {
                String strValueOf = String.valueOf(connectionResultA);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(strValueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
                this.h.b(connectionResultA);
            }
        } else {
            this.h.b(connectionResultA);
        }
        this.g.g();
    }

    public final com.google.android.gms.signin.b a() {
        return this.g;
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(int i) {
        this.g.g();
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(Bundle bundle) {
        this.g.a(this);
    }

    @Override // com.google.android.gms.common.api.f.c
    public final void a(ConnectionResult connectionResult) {
        this.h.b(connectionResult);
    }

    public final void a(bt btVar) {
        com.google.android.gms.signin.b bVar = this.g;
        if (bVar != null) {
            bVar.g();
        }
        this.f.a(Integer.valueOf(System.identityHashCode(this)));
        a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a = this.f3551d;
        Context context = this.f3549b;
        Looper looper = this.f3550c.getLooper();
        com.google.android.gms.common.internal.e eVar = this.f;
        this.g = (com.google.android.gms.signin.b) abstractC0083a.a(context, looper, eVar, eVar.i(), this, this);
        this.h = btVar;
        Set<Scope> set = this.f3552e;
        if (set == null || set.isEmpty()) {
            this.f3550c.post(new bq(this));
        } else {
            this.g.o();
        }
    }

    @Override // com.google.android.gms.signin.internal.b, com.google.android.gms.signin.internal.d
    public final void a(SignInResponse signInResponse) {
        this.f3550c.post(new bs(this, signInResponse));
    }

    public final void b() {
        com.google.android.gms.signin.b bVar = this.g;
        if (bVar != null) {
            bVar.g();
        }
    }
}
