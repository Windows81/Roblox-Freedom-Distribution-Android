package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.api.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class r extends com.google.android.gms.common.internal.j<s> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Bundle f3977e;

    public r(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, com.google.android.gms.auth.api.f fVar, f.b bVar, f.c cVar) {
        super(context, looper, 16, eVar, bVar, cVar);
        if (fVar != null) {
            throw new NoSuchMethodError();
        }
        this.f3977e = new Bundle();
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return iInterfaceQueryLocalInterface instanceof s ? (s) iInterfaceQueryLocalInterface : new t(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String a_() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String b() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int f() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean j() {
        com.google.android.gms.common.internal.e eVarD = D();
        return (TextUtils.isEmpty(eVarD.a()) || eVarD.a(com.google.android.gms.auth.api.d.f3369a).isEmpty()) ? false : true;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Bundle y() {
        return this.f3977e;
    }
}
