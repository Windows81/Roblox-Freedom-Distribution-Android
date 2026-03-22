package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class fe extends dq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ii f4320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f4321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4322c;

    public fe(ii iiVar) {
        this(iiVar, null);
    }

    private fe(ii iiVar, String str) {
        com.google.android.gms.common.internal.aa.a(iiVar);
        this.f4320a = iiVar;
        this.f4322c = null;
    }

    private final void a(Runnable runnable) {
        com.google.android.gms.common.internal.aa.a(runnable);
        if (dn.T.b().booleanValue() && this.f4320a.p().w()) {
            runnable.run();
        } else {
            this.f4320a.p().a(runnable);
        }
    }

    private final void a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.f4320a.q().v().a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f4321b == null) {
                    this.f4321b = Boolean.valueOf("com.google.android.gms".equals(this.f4322c) || com.google.android.gms.common.util.q.a(this.f4320a.k(), Binder.getCallingUid()) || com.google.android.gms.common.m.a(this.f4320a.k()).a(Binder.getCallingUid()));
                }
                if (this.f4321b.booleanValue()) {
                    return;
                }
            } catch (SecurityException e2) {
                this.f4320a.q().v().a("Measurement Service called with invalid calling package. appId", dx.a(str));
                throw e2;
            }
        }
        if (this.f4322c == null && com.google.android.gms.common.l.a(this.f4320a.k(), Binder.getCallingUid(), str)) {
            this.f4322c = str;
        }
        if (str.equals(this.f4322c)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    private final void b(zzdz zzdzVar, boolean z) {
        com.google.android.gms.common.internal.aa.a(zzdzVar);
        a(zzdzVar.f4713a, false);
        this.f4320a.m().e(zzdzVar.f4714b);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzjx> a(zzdz zzdzVar, boolean z) {
        b(zzdzVar, false);
        try {
            List<ip> list = (List) this.f4320a.p().a(new fu(this, zzdzVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (ip ipVar : list) {
                if (z || !iq.h(ipVar.f4562c)) {
                    arrayList.add(new zzjx(ipVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f4320a.q().v().a("Failed to get user attributes. appId", dx.a(zzdzVar.f4713a), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzed> a(String str, String str2, zzdz zzdzVar) {
        b(zzdzVar, false);
        try {
            return (List) this.f4320a.p().a(new fm(this, zzdzVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.f4320a.q().v().a("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzed> a(String str, String str2, String str3) {
        a(str, true);
        try {
            return (List) this.f4320a.p().a(new fn(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e2) {
            this.f4320a.q().v().a("Failed to get conditional user properties", e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzjx> a(String str, String str2, String str3, boolean z) {
        a(str, true);
        try {
            List<ip> list = (List) this.f4320a.p().a(new fl(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (ip ipVar : list) {
                if (z || !iq.h(ipVar.f4562c)) {
                    arrayList.add(new zzjx(ipVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f4320a.q().v().a("Failed to get user attributes. appId", dx.a(str), e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final List<zzjx> a(String str, String str2, boolean z, zzdz zzdzVar) {
        b(zzdzVar, false);
        try {
            List<ip> list = (List) this.f4320a.p().a(new fk(this, zzdzVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (ip ipVar : list) {
                if (z || !iq.h(ipVar.f4562c)) {
                    arrayList.add(new zzjx(ipVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e2) {
            this.f4320a.q().v().a("Failed to get user attributes. appId", dx.a(zzdzVar.f4713a), e2);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(long j, String str, String str2, String str3) {
        a(new fw(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzdz zzdzVar) {
        b(zzdzVar, false);
        a(new fv(this, zzdzVar));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzed zzedVar) {
        com.google.android.gms.common.internal.aa.a(zzedVar);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4720c);
        a(zzedVar.f4718a, true);
        zzed zzedVar2 = new zzed(zzedVar);
        a(zzedVar.f4720c.a() == null ? new fi(this, zzedVar2) : new fj(this, zzedVar2));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzed zzedVar, zzdz zzdzVar) {
        com.google.android.gms.common.internal.aa.a(zzedVar);
        com.google.android.gms.common.internal.aa.a(zzedVar.f4720c);
        b(zzdzVar, false);
        zzed zzedVar2 = new zzed(zzedVar);
        zzedVar2.f4718a = zzdzVar.f4713a;
        a(zzedVar.f4720c.a() == null ? new fg(this, zzedVar2, zzdzVar) : new fh(this, zzedVar2, zzdzVar));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzeu zzeuVar, zzdz zzdzVar) {
        com.google.android.gms.common.internal.aa.a(zzeuVar);
        b(zzdzVar, false);
        a(new fp(this, zzeuVar, zzdzVar));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzeu zzeuVar, String str, String str2) {
        com.google.android.gms.common.internal.aa.a(zzeuVar);
        com.google.android.gms.common.internal.aa.a(str);
        a(str, true);
        a(new fq(this, zzeuVar, str));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void a(zzjx zzjxVar, zzdz zzdzVar) {
        com.google.android.gms.common.internal.aa.a(zzjxVar);
        b(zzdzVar, false);
        a(zzjxVar.a() == null ? new fs(this, zzjxVar, zzdzVar) : new ft(this, zzjxVar, zzdzVar));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final byte[] a(zzeu zzeuVar, String str) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(zzeuVar);
        a(str, true);
        this.f4320a.q().B().a("Log and bundle. event", this.f4320a.n().a(zzeuVar.f4724a));
        long jC = this.f4320a.j().c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f4320a.p().b(new fr(this, zzeuVar, str)).get();
            if (bArr == null) {
                this.f4320a.q().v().a("Log and bundle returned null. appId", dx.a(str));
                bArr = new byte[0];
            }
            this.f4320a.q().B().a("Log and bundle processed. event, size, time_ms", this.f4320a.n().a(zzeuVar.f4724a), Integer.valueOf(bArr.length), Long.valueOf((this.f4320a.j().c() / 1000000) - jC));
            return bArr;
        } catch (InterruptedException | ExecutionException e2) {
            this.f4320a.q().v().a("Failed to log and bundle. appId, event, error", dx.a(str), this.f4320a.n().a(zzeuVar.f4724a), e2);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void b(zzdz zzdzVar) {
        b(zzdzVar, false);
        a(new ff(this, zzdzVar));
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final String c(zzdz zzdzVar) {
        b(zzdzVar, false);
        return this.f4320a.d(zzdzVar);
    }

    @Override // com.google.android.gms.internal.measurement.dp
    public final void d(zzdz zzdzVar) {
        a(zzdzVar.f4713a, false);
        a(new fo(this, zzdzVar));
    }
}
