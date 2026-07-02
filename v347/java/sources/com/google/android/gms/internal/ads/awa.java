package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class awa extends com.google.android.gms.ads.formats.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final avx f4541a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final aue f4543c;
    private final c.a e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c.b> f4542b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.j f4544d = new com.google.android.gms.ads.j();

    public awa(avx avxVar) {
        aue aueVar;
        aub audVar;
        IBinder iBinder;
        aua auaVar = null;
        this.f4541a = avxVar;
        try {
            List listB = this.f4541a.b();
            if (listB != null) {
                for (Object obj : listB) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        audVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        audVar = iInterfaceQueryLocalInterface instanceof aub ? (aub) iInterfaceQueryLocalInterface : new aud(iBinder);
                    }
                    if (audVar != null) {
                        this.f4542b.add(new aue(audVar));
                    }
                }
            }
        } catch (RemoteException e) {
            mj.b("", e);
        }
        try {
            aub aubVarD = this.f4541a.d();
            aueVar = aubVarD != null ? new aue(aubVarD) : null;
        } catch (RemoteException e2) {
            mj.b("", e2);
            aueVar = null;
        }
        this.f4543c = aueVar;
        try {
            if (this.f4541a.s() != null) {
                auaVar = new aua(this.f4541a.s());
            }
        } catch (RemoteException e3) {
            mj.b("", e3);
        }
        this.e = auaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.formats.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final com.google.android.gms.b.a k() {
        try {
            return this.f4541a.n();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final String a() {
        try {
            return this.f4541a.a();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final List<c.b> b() {
        return this.f4542b;
    }

    @Override // com.google.android.gms.ads.formats.j
    public final String c() {
        try {
            return this.f4541a.c();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final c.b d() {
        return this.f4543c;
    }

    @Override // com.google.android.gms.ads.formats.j
    public final String e() {
        try {
            return this.f4541a.e();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final String f() {
        try {
            return this.f4541a.f();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final Double g() {
        try {
            double dG = this.f4541a.g();
            if (dG == -1.0d) {
                return null;
            }
            return Double.valueOf(dG);
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final String h() {
        try {
            return this.f4541a.h();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final String i() {
        try {
            return this.f4541a.i();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.j
    public final com.google.android.gms.ads.j j() {
        try {
            if (this.f4541a.j() != null) {
                this.f4544d.a(this.f4541a.j());
            }
        } catch (RemoteException e) {
            mj.b("Exception occurred while getting video controller", e);
        }
        return this.f4544d;
    }

    @Override // com.google.android.gms.ads.formats.j
    public final Object l() {
        try {
            com.google.android.gms.b.a aVarP = this.f4541a.p();
            if (aVarP != null) {
                return com.google.android.gms.b.b.a(aVarP);
            }
        } catch (RemoteException e) {
            mj.b("", e);
        }
        return null;
    }
}
