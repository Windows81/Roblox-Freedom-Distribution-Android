package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.signin.internal.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends j<e> implements com.google.android.gms.signin.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f4774e;
    private final com.google.android.gms.common.internal.e f;
    private final Bundle g;
    private Integer h;

    public g(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.e eVar, Bundle bundle, f.b bVar, f.c cVar) {
        super(context, looper, 44, eVar, bVar, cVar);
        this.f4774e = z;
        this.f = eVar;
        this.g = bundle;
        this.h = eVar.j();
    }

    public g(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.e eVar, com.google.android.gms.signin.c cVar, f.b bVar, f.c cVar2) {
        this(context, looper, z, eVar, a(eVar), bVar, cVar2);
    }

    public static Bundle a(com.google.android.gms.common.internal.e eVar) {
        com.google.android.gms.signin.c cVarI = eVar.i();
        Integer numJ = eVar.j();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.b());
        if (numJ != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", numJ.intValue());
        }
        if (cVarI != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", cVarI.a());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", cVarI.b());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", cVarI.c());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", cVarI.d());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", cVarI.e());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", cVarI.f());
            if (cVarI.g() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", cVarI.g().longValue());
            }
            if (cVarI.h() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", cVarI.h().longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.signin.b
    public void a(q qVar, boolean z) {
        try {
            ((e) A()).a(qVar, this.h.intValue(), z);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.signin.b
    public void a(d dVar) {
        aa.a(dVar, "Expecting a valid ISignInCallbacks");
        try {
            Account accountC = this.f.c();
            ((e) A()).a(new SignInRequest(new ResolveAccountRequest(accountC, this.h.intValue(), "<<default account>>".equals(accountC.name) ? com.google.android.gms.auth.api.signin.internal.c.a(t()).a() : null)), dVar);
        } catch (RemoteException e2) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                dVar.a(new SignInResponse(8));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e2);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d
    protected String a_() {
        return "com.google.android.gms.signin.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e a(IBinder iBinder) {
        return e.a.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected String b() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.signin.b
    public void e() {
        try {
            ((e) A()).a(this.h.intValue());
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public int f() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public boolean j() {
        return this.f4774e;
    }

    @Override // com.google.android.gms.signin.b
    public void o() {
        a(new d.g());
    }

    @Override // com.google.android.gms.common.internal.d
    protected Bundle y() {
        if (!t().getPackageName().equals(this.f.g())) {
            this.g.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f.g());
        }
        return this.g;
    }
}
