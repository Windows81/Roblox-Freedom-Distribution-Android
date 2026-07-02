package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.aoh;

/* JADX INFO: loaded from: classes.dex */
final class aok extends aoh.a<apf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f4334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzjn f4335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ bbu f4337d;
    private final /* synthetic */ aoh e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aok(aoh aohVar, Context context, zzjn zzjnVar, String str, bbu bbuVar) {
        super();
        this.e = aohVar;
        this.f4334a = context;
        this.f4335b = zzjnVar;
        this.f4336c = str;
        this.f4337d = bbuVar;
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apf a() throws RemoteException {
        apf apfVarA = this.e.f4323c.a(this.f4334a, this.f4335b, this.f4336c, this.f4337d, 2);
        if (apfVarA != null) {
            return apfVarA;
        }
        aoh aohVar = this.e;
        aoh.a(this.f4334a, "interstitial");
        return new aqu();
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apf a(apr aprVar) throws RemoteException {
        return aprVar.createInterstitialAdManager(com.google.android.gms.b.b.a(this.f4334a), this.f4335b, this.f4336c, this.f4337d, 12451000);
    }
}
