package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.aoh;

/* JADX INFO: loaded from: classes.dex */
final class aon extends aoh.a<r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f4345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ aoh f4346b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aon(aoh aohVar, Activity activity) {
        super();
        this.f4346b = aohVar;
        this.f4345a = activity;
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ r a() throws RemoteException {
        r rVarA = this.f4346b.h.a(this.f4345a);
        if (rVarA != null) {
            return rVarA;
        }
        aoh aohVar = this.f4346b;
        aoh.a(this.f4345a, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ r a(apr aprVar) throws RemoteException {
        return aprVar.createAdOverlay(com.google.android.gms.b.b.a(this.f4345a));
    }
}
