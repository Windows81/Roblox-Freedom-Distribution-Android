package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Status f3572a = new Status(8, "The connection to Google Play services was lost");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final BasePendingResult<?>[] f3573c = new BasePendingResult[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Set<BasePendingResult<?>> f3574b = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cc f3575d = new ca(this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<a.c<?>, a.f> f3576e;

    public bz(Map<a.c<?>, a.f> map) {
        this.f3576e = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f3574b.toArray(f3573c)) {
            com.google.android.gms.common.api.s sVar = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            basePendingResult.a((cc) null);
            if (basePendingResult.c() == null) {
                if (basePendingResult.g()) {
                }
            } else {
                basePendingResult.a((com.google.android.gms.common.api.m) null);
                IBinder iBinderL = this.f3576e.get(((c.a) basePendingResult).d()).l();
                if (basePendingResult.f()) {
                    basePendingResult.a(new cb(basePendingResult, objArr4 == true ? 1 : 0, iBinderL, objArr3 == true ? 1 : 0));
                } else {
                    if (iBinderL == null || !iBinderL.isBinderAlive()) {
                        basePendingResult.a((cc) null);
                    } else {
                        cb cbVar = new cb(basePendingResult, objArr2 == true ? 1 : 0, iBinderL, objArr == true ? 1 : 0);
                        basePendingResult.a(cbVar);
                        try {
                            iBinderL.linkToDeath(cbVar, 0);
                        } catch (RemoteException unused) {
                            basePendingResult.a();
                            sVar.a(basePendingResult.c().intValue());
                        }
                    }
                    basePendingResult.a();
                    sVar.a(basePendingResult.c().intValue());
                }
            }
            this.f3574b.remove(basePendingResult);
        }
    }

    final void a(BasePendingResult<? extends com.google.android.gms.common.api.l> basePendingResult) {
        this.f3574b.add(basePendingResult);
        basePendingResult.a(this.f3575d);
    }

    public final void b() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f3574b.toArray(f3573c)) {
            basePendingResult.c(f3572a);
        }
    }
}
