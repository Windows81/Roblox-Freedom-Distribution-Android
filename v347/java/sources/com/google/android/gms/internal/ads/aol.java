package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.aoh;

/* JADX INFO: loaded from: classes.dex */
final class aol extends aoh.a<apa> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f4338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bbu f4340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ aoh f4341d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aol(aoh aohVar, Context context, String str, bbu bbuVar) {
        super();
        this.f4341d = aohVar;
        this.f4338a = context;
        this.f4339b = str;
        this.f4340c = bbuVar;
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apa a() throws RemoteException {
        apa apaVarA = this.f4341d.f4324d.a(this.f4338a, this.f4339b, this.f4340c);
        if (apaVarA != null) {
            return apaVarA;
        }
        aoh aohVar = this.f4341d;
        aoh.a(this.f4338a, "native_ad");
        return new aqq();
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apa a(apr aprVar) throws RemoteException {
        return aprVar.createAdLoaderBuilder(com.google.android.gms.b.b.a(this.f4338a), this.f4339b, this.f4340c, 12451000);
    }
}
