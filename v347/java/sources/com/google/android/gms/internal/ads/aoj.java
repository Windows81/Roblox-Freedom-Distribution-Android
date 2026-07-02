package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.aoh;

/* JADX INFO: loaded from: classes.dex */
final class aoj extends aoh.a<apf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f4330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzjn f4331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ aoh f4333d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    aoj(aoh aohVar, Context context, zzjn zzjnVar, String str) {
        super();
        this.f4333d = aohVar;
        this.f4330a = context;
        this.f4331b = zzjnVar;
        this.f4332c = str;
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apf a() throws RemoteException {
        apf apfVarA = this.f4333d.f4323c.a(this.f4330a, this.f4331b, this.f4332c, null, 3);
        if (apfVarA != null) {
            return apfVarA;
        }
        aoh aohVar = this.f4333d;
        aoh.a(this.f4330a, "search");
        return new aqu();
    }

    @Override // com.google.android.gms.internal.ads.aoh.a
    public final /* synthetic */ apf a(apr aprVar) throws RemoteException {
        return aprVar.createSearchAdManager(com.google.android.gms.b.b.a(this.f4330a), this.f4331b, this.f4332c, 12451000);
    }
}
