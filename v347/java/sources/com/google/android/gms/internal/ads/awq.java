package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.d;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
final class awq implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ awo f4558a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ no f4559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zzsg f4560c;

    awq(awo awoVar, no noVar, zzsg zzsgVar) {
        this.f4558a = awoVar;
        this.f4559b = noVar;
        this.f4560c = zzsgVar;
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(Bundle bundle) {
        synchronized (this.f4558a.f4556d) {
            if (this.f4558a.f4554b) {
                return;
            }
            awo.a(this.f4558a, true);
            final awj awjVar = this.f4558a.f4553a;
            if (awjVar == null) {
                return;
            }
            final no noVar = this.f4559b;
            final zzsg zzsgVar = this.f4560c;
            final nd<?> ndVarA = jk.a(new Runnable(this, awjVar, noVar, zzsgVar) { // from class: com.google.android.gms.internal.ads.awr

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final awq f4561a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final awj f4562b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final no f4563c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private final zzsg f4564d;

                {
                    this.f4561a = this;
                    this.f4562b = awjVar;
                    this.f4563c = noVar;
                    this.f4564d = zzsgVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    awq awqVar = this.f4561a;
                    awj awjVar2 = this.f4562b;
                    no noVar2 = this.f4563c;
                    try {
                        noVar2.b(awjVar2.A().a(this.f4564d));
                    } catch (RemoteException e) {
                        jd.b("Unable to obtain a cache service instance.", e);
                        noVar2.a(e);
                        awqVar.f4558a.a();
                    }
                }
            });
            no noVar2 = this.f4559b;
            final no noVar3 = this.f4559b;
            noVar2.a(new Runnable(noVar3, ndVarA) { // from class: com.google.android.gms.internal.ads.aws

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final no f4565a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final Future f4566b;

                {
                    this.f4565a = noVar3;
                    this.f4566b = ndVarA;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    no noVar4 = this.f4565a;
                    Future future = this.f4566b;
                    if (noVar4.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, nj.f5347b);
        }
    }
}
