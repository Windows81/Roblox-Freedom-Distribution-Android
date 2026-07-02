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
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.signin.internal.e;

/* JADX INFO: loaded from: classes.dex */
public class g extends j<e> implements com.google.android.gms.signin.b {
    private final boolean e;
    private final com.google.android.gms.common.internal.e f;
    private final Bundle g;
    private Integer h;

    public g(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.e eVar, Bundle bundle, f.a aVar, f.b bVar) {
        super(context, looper, 44, eVar, aVar, bVar);
        this.e = z;
        this.f = eVar;
        this.g = bundle;
        this.h = eVar.h();
    }

    public g(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.e eVar, com.google.android.gms.signin.c cVar, f.a aVar, f.b bVar) {
        this(context, looper, z, eVar, a(eVar), aVar, bVar);
    }

    public static Bundle a(com.google.android.gms.common.internal.e eVar) {
        com.google.android.gms.signin.c cVarG = eVar.g();
        Integer numH = eVar.h();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.a());
        if (numH != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", numH.intValue());
        }
        if (cVarG != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", cVarG.a());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", cVarG.b());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", cVarG.c());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", cVarG.d());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", cVarG.e());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", cVarG.f());
            if (cVarG.g() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", cVarG.g().longValue());
            }
            if (cVarG.h() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", cVarG.h().longValue());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.signin.b
    public void a(d dVar) {
        w.a(dVar, "Expecting a valid ISignInCallbacks");
        try {
            Account accountB = this.f.b();
            ((e) x()).a(new SignInRequest(new ResolveAccountRequest(accountB, this.h.intValue(), "<<default account>>".equals(accountB.name) ? com.google.android.gms.auth.api.signin.a.a.a(p()).a() : null)), dVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                dVar.a(new SignInResponse(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e a(IBinder iBinder) {
        return e.a.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public boolean d() {
        return this.e;
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public int g() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.d
    protected String i() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.signin.b
    public void j() {
        a(new d.g());
    }

    @Override // com.google.android.gms.common.internal.d
    protected String l() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.d
    protected Bundle u() {
        if (!p().getPackageName().equals(this.f.e())) {
            this.g.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f.e());
        }
        return this.g;
    }
}
