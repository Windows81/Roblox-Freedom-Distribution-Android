package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class gz extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final hn f4452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private dp f4453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Boolean f4454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final df f4455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final id f4456e;
    private final List<Runnable> f;
    private final df g;

    protected gz(fc fcVar) {
        super(fcVar);
        this.f = new ArrayList();
        this.f4456e = new id(fcVar.j());
        this.f4452a = new hn(this);
        this.f4455d = new ha(this, fcVar);
        this.g = new hf(this, fcVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C() {
        c();
        this.f4456e.a();
        this.f4455d.a(dn.H.b().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D() {
        c();
        if (v()) {
            q().C().a("Inactivity, disconnecting from the service");
            B();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I() {
        c();
        q().C().a("Processing queued up service tasks", Integer.valueOf(this.f.size()));
        Iterator<Runnable> it = this.f.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (Exception e2) {
                q().v().a("Task exception while flushing queue", e2);
            }
        }
        this.f.clear();
        this.g.c();
    }

    static /* synthetic */ dp a(gz gzVar, dp dpVar) {
        gzVar.f4453b = null;
        return null;
    }

    private final zzdz a(boolean z) {
        return f().a(z ? q().D() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(ComponentName componentName) {
        c();
        if (this.f4453b != null) {
            this.f4453b = null;
            q().C().a("Disconnected from device MeasurementService", componentName);
            c();
            z();
        }
    }

    private final void a(Runnable runnable) throws IllegalStateException {
        c();
        if (v()) {
            runnable.run();
        } else {
            if (this.f.size() >= 1000) {
                q().v().a("Discarding data. Max runnable queue size reached");
                return;
            }
            this.f.add(runnable);
            this.g.a(60000L);
            z();
        }
    }

    final Boolean A() {
        return this.f4454c;
    }

    public final void B() {
        c();
        F();
        try {
            com.google.android.gms.common.stats.a.a().a(k(), this.f4452a);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f4453b = null;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    protected final void a(dp dpVar) {
        c();
        com.google.android.gms.common.internal.aa.a(dpVar);
        this.f4453b = dpVar;
        C();
        I();
    }

    final void a(dp dpVar, AbstractSafeParcelable abstractSafeParcelable, zzdz zzdzVar) throws Throwable {
        int size;
        dz dzVarV;
        String str;
        c();
        F();
        int i = 0;
        int i2 = 100;
        while (i < 1001 && i2 == 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> listA = l().a(100);
            if (listA != null) {
                arrayList.addAll(listA);
                size = listA.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            ArrayList arrayList2 = arrayList;
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj = arrayList2.get(i3);
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzeu) {
                    try {
                        dpVar.a((zzeu) abstractSafeParcelable2, zzdzVar);
                    } catch (RemoteException e2) {
                        e = e2;
                        dzVarV = q().v();
                        str = "Failed to send event to the service";
                        dzVarV.a(str, e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzjx) {
                    try {
                        dpVar.a((zzjx) abstractSafeParcelable2, zzdzVar);
                    } catch (RemoteException e3) {
                        e = e3;
                        dzVarV = q().v();
                        str = "Failed to send attribute to the service";
                        dzVarV.a(str, e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzed) {
                    try {
                        dpVar.a((zzed) abstractSafeParcelable2, zzdzVar);
                    } catch (RemoteException e4) {
                        e = e4;
                        dzVarV = q().v();
                        str = "Failed to send conditional property to the service";
                        dzVarV.a(str, e);
                    }
                } else {
                    q().v().a("Discarding data. Unrecognized parcel type.");
                }
            }
            i++;
            i2 = size;
        }
    }

    protected final void a(gv gvVar) {
        c();
        F();
        a(new he(this, gvVar));
    }

    protected final void a(zzed zzedVar) {
        com.google.android.gms.common.internal.aa.a(zzedVar);
        c();
        F();
        a(new hi(this, true, l().a(zzedVar), new zzed(zzedVar), a(true), zzedVar));
    }

    protected final void a(zzeu zzeuVar, String str) {
        com.google.android.gms.common.internal.aa.a(zzeuVar);
        c();
        F();
        a(new hh(this, true, l().a(zzeuVar), zzeuVar, a(true), str));
    }

    protected final void a(zzjx zzjxVar) {
        c();
        F();
        a(new hl(this, l().a(zzjxVar), zzjxVar, a(true)));
    }

    public final void a(AtomicReference<String> atomicReference) {
        c();
        F();
        a(new hc(this, atomicReference, a(false)));
    }

    protected final void a(AtomicReference<List<zzed>> atomicReference, String str, String str2, String str3) {
        c();
        F();
        a(new hj(this, atomicReference, str, str2, str3, a(false)));
    }

    protected final void a(AtomicReference<List<zzjx>> atomicReference, String str, String str2, String str3, boolean z) {
        c();
        F();
        a(new hk(this, atomicReference, str, str2, str3, z, a(false)));
    }

    protected final void a(AtomicReference<List<zzjx>> atomicReference, boolean z) {
        c();
        F();
        a(new hm(this, atomicReference, a(false), z));
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        return false;
    }

    public final boolean v() {
        c();
        F();
        return this.f4453b != null;
    }

    protected final void w() {
        c();
        F();
        a(new hg(this, a(true)));
    }

    protected final void x() {
        c();
        F();
        zzdz zzdzVarA = a(false);
        l().v();
        a(new hb(this, zzdzVarA));
    }

    protected final void y() {
        c();
        F();
        a(new hd(this, a(true)));
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void z() {
        /*
            Method dump skipped, instruction units count: 346
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.gz.z():void");
    }
}
