package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.aoh;

/* JADX INFO: loaded from: classes.dex */
final class aoi extends aoh.a<apf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f4326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzjn f4327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ bbu f4329d;
    private final /* synthetic */ aoh e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aoi(aoh aohVar, Context context, zzjn zzjnVar, String str, bbu bbuVar) {
        super();
        this.e = aohVar;
        this.f4326a = context;
        this.f4327b = zzjnVar;
        this.f4328c = str;
        this.f4329d = bbuVar;
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apf a() throws RemoteException {
        apf apfVarA = this.e.f4323c.a(this.f4326a, this.f4327b, this.f4328c, this.f4329d, 1);
        if (apfVarA != null) {
            return apfVarA;
        }
        aoh aohVar = this.e;
        aoh.a(this.f4326a, "banner");
        return new aqu();
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apf a(apr aprVar) throws RemoteException {
        return aprVar.createBannerAdManager(com.google.android.gms.b.b.a(this.f4326a), this.f4327b, this.f4328c, this.f4329d, 12451000);
    }
}
