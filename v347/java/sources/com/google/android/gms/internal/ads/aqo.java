package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.aoh;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class aqo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bbt f4369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final aod f4371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.a f4372d;
    private anv e;
    private apf f;
    private String g;
    private com.google.android.gms.ads.reward.c h;
    private com.google.android.gms.ads.doubleclick.a i;
    private com.google.android.gms.ads.doubleclick.c j;
    private com.google.android.gms.ads.g k;
    private com.google.android.gms.ads.reward.b l;
    private boolean m;
    private boolean n;

    public aqo(Context context) {
        this(context, aod.f4317a, null);
    }

    public aqo(Context context, com.google.android.gms.ads.doubleclick.e eVar) {
        this(context, aod.f4317a, eVar);
    }

    private aqo(Context context, aod aodVar, com.google.android.gms.ads.doubleclick.e eVar) {
        this.f4369a = new bbt();
        this.f4370b = context;
        this.f4371c = aodVar;
    }

    private final void b(String str) {
        if (this.f == null) {
            throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 63).append("The ad unit ID must be set on InterstitialAd before ").append(str).append(" is called.").toString());
        }
    }

    public final String a() {
        return this.g;
    }

    public final void a(com.google.android.gms.ads.a aVar) {
        try {
            this.f4372d = aVar;
            if (this.f != null) {
                this.f.a(aVar != null ? new anx(aVar) : null);
            }
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void a(com.google.android.gms.ads.reward.b bVar) {
        try {
            this.l = bVar;
            if (this.f != null) {
                this.f.a(bVar != null ? new gm(bVar) : null);
            }
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void a(com.google.android.gms.ads.reward.c cVar) {
        try {
            this.h = cVar;
            if (this.f != null) {
                this.f.a(cVar != null ? new aoa(cVar) : null);
            }
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void a(anv anvVar) {
        try {
            this.e = anvVar;
            if (this.f != null) {
                this.f.a(anvVar != null ? new anw(anvVar) : null);
            }
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void a(aqj aqjVar) {
        try {
            if (this.f == null) {
                if (this.g == null) {
                    b("loadAd");
                }
                zzjn zzjnVarA = this.m ? zzjn.a() : new zzjn();
                aoh aohVarB = aoo.b();
                Context context = this.f4370b;
                this.f = (apf) aoh.a(context, false, (aoh.a) new aok(aohVarB, context, zzjnVarA, this.g, this.f4369a));
                if (this.f4372d != null) {
                    this.f.a(new anx(this.f4372d));
                }
                if (this.e != null) {
                    this.f.a(new anw(this.e));
                }
                if (this.h != null) {
                    this.f.a(new aoa(this.h));
                }
                if (this.i != null) {
                    this.f.a(new aof(this.i));
                }
                if (this.j != null) {
                    this.f.a(new asl(this.j));
                }
                if (this.k != null) {
                    this.f.a(this.k.a());
                }
                if (this.l != null) {
                    this.f.a(new gm(this.l));
                }
                this.f.c(this.n);
            }
            if (this.f.b(aod.a(this.f4370b, aqjVar))) {
                this.f4369a.a(aqjVar.j());
            }
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void a(String str) {
        if (this.g != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.g = str;
    }

    public final void a(boolean z) {
        this.m = true;
    }

    public final void b(boolean z) {
        try {
            this.n = z;
            if (this.f != null) {
                this.f.c(z);
            }
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
    }

    public final boolean b() {
        try {
            if (this.f == null) {
                return false;
            }
            return this.f.l();
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
            return false;
        }
    }

    public final Bundle c() {
        try {
            if (this.f != null) {
                return this.f.p();
            }
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
        return new Bundle();
    }

    public final void d() {
        try {
            b("show");
            this.f.H();
        } catch (RemoteException e) {
            mj.d("#008 Must be called on the main UI thread.", e);
        }
    }
}
