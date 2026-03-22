package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.common.api.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k extends com.google.android.gms.common.internal.j<o> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a.C0077a f3976e;

    public k(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, a.C0077a c0077a, f.b bVar, f.c cVar) {
        super(context, looper, 68, eVar, bVar, cVar);
        this.f3976e = c0077a;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return iInterfaceQueryLocalInterface instanceof o ? (o) iInterfaceQueryLocalInterface : new p(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String a_() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String b() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    final a.C0077a e() {
        return this.f3976e;
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int f() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Bundle y() {
        a.C0077a c0077a = this.f3976e;
        return c0077a == null ? new Bundle() : c0077a.b();
    }
}
