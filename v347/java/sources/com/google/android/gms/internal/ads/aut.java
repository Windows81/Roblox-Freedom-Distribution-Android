package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class aut extends com.google.android.gms.ads.formats.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final auq f4519a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final aue f4521c;
    private final c.a e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c.b> f4520b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.j f4522d = new com.google.android.gms.ads.j();

    public aut(auq auqVar) {
        aue aueVar;
        aub audVar;
        IBinder iBinder;
        aua auaVar = null;
        this.f4519a = auqVar;
        try {
            List listB = this.f4519a.b();
            if (listB != null) {
                for (Object obj : listB) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        audVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        audVar = iInterfaceQueryLocalInterface instanceof aub ? (aub) iInterfaceQueryLocalInterface : new aud(iBinder);
                    }
                    if (audVar != null) {
                        this.f4520b.add(new aue(audVar));
                    }
                }
            }
        } catch (RemoteException e) {
            mj.b("", e);
        }
        try {
            aub aubVarD = this.f4519a.d();
            aueVar = aubVarD != null ? new aue(aubVarD) : null;
        } catch (RemoteException e2) {
            mj.b("", e2);
            aueVar = null;
        }
        this.f4521c = aueVar;
        try {
            if (this.f4519a.r() != null) {
                auaVar = new aua(this.f4519a.r());
            }
        } catch (RemoteException e3) {
            mj.b("", e3);
        }
        this.e = auaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.formats.c
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final com.google.android.gms.b.a a() {
        try {
            return this.f4519a.j();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.g
    public final CharSequence b() {
        try {
            return this.f4519a.a();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.g
    public final List<c.b> c() {
        return this.f4520b;
    }

    @Override // com.google.android.gms.ads.formats.g
    public final CharSequence d() {
        try {
            return this.f4519a.c();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.g
    public final c.b e() {
        return this.f4521c;
    }

    @Override // com.google.android.gms.ads.formats.g
    public final CharSequence f() {
        try {
            return this.f4519a.e();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.g
    public final Double g() {
        try {
            double dF = this.f4519a.f();
            if (dF == -1.0d) {
                return null;
            }
            return Double.valueOf(dF);
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.g
    public final CharSequence h() {
        try {
            return this.f4519a.g();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.g
    public final CharSequence i() {
        try {
            return this.f4519a.h();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.g
    public final com.google.android.gms.ads.j j() {
        try {
            if (this.f4519a.i() != null) {
                this.f4522d.a(this.f4519a.i());
            }
        } catch (RemoteException e) {
            mj.b("Exception occurred while getting video controller", e);
        }
        return this.f4522d;
    }
}
