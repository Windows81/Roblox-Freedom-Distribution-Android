package com.google.android.gms.ads.internal;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.internal.ads.agr;
import com.google.android.gms.internal.ads.agv;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aor;
import com.google.android.gms.internal.ads.aou;
import com.google.android.gms.internal.ads.apk;
import com.google.android.gms.internal.ads.apo;
import com.google.android.gms.internal.ads.apu;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.asi;
import com.google.android.gms.internal.ads.avc;
import com.google.android.gms.internal.ads.avf;
import com.google.android.gms.internal.ads.avj;
import com.google.android.gms.internal.ads.avm;
import com.google.android.gms.internal.ads.avp;
import com.google.android.gms.internal.ads.avs;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.fz;
import com.google.android.gms.internal.ads.gh;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.ik;
import com.google.android.gms.internal.ads.iv;
import com.google.android.gms.internal.ads.iy;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.kf;
import com.google.android.gms.internal.ads.ln;
import com.google.android.gms.internal.ads.ly;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzlu;
import com.google.android.gms.internal.ads.zzmu;
import com.google.android.gms.internal.ads.zzpl;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ax implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    List<Integer> A;
    asi B;
    gh C;
    fz D;
    public String E;
    List<String> F;
    public iv G;
    View H;
    public int I;
    boolean J;
    private HashSet<ik> K;
    private int L;
    private int M;
    private ln N;
    private boolean O;
    private boolean P;
    private boolean Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f3034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f3036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final agv f3037d;
    public final zzang e;
    ay f;
    public iy g;
    public kf h;
    public zzjn i;
    public ii j;
    public ij k;
    public ik l;
    aor m;
    aou n;
    apo o;
    apk p;
    apu q;
    avc r;
    avf s;
    avs t;
    android.support.v4.g.m<String, avj> u;
    android.support.v4.g.m<String, avm> v;
    zzpl w;
    zzmu x;
    zzlu y;
    avp z;

    public ax(Context context, zzjn zzjnVar, String str, zzang zzangVar) {
        this(context, zzjnVar, str, zzangVar, null);
    }

    private ax(Context context, zzjn zzjnVar, String str, zzang zzangVar, agv agvVar) {
        this.G = null;
        this.H = null;
        this.I = 0;
        this.J = false;
        this.K = null;
        this.L = -1;
        this.M = -1;
        this.O = true;
        this.P = true;
        this.Q = false;
        aro.a(context);
        if (aw.i().b() != null) {
            List<String> listB = aro.b();
            if (zzangVar.f5785b != 0) {
                listB.add(Integer.toString(zzangVar.f5785b));
            }
            aw.i().b().a(listB);
        }
        this.f3034a = UUID.randomUUID().toString();
        if (zzjnVar.f5806d || zzjnVar.h) {
            this.f = null;
        } else {
            this.f = new ay(context, str, zzangVar.f5784a, this, this);
            this.f.setMinimumWidth(zzjnVar.f);
            this.f.setMinimumHeight(zzjnVar.f5805c);
            this.f.setVisibility(4);
        }
        this.i = zzjnVar;
        this.f3035b = str;
        this.f3036c = context;
        this.e = zzangVar;
        this.f3037d = new agv(new h(this));
        this.N = new ln(200L);
        this.v = new android.support.v4.g.m<>();
    }

    private final void b(boolean z) {
        View viewFindViewById;
        if (this.f == null || this.j == null || this.j.f5114b == null || this.j.f5114b.v() == null) {
            return;
        }
        if (!z || this.N.a()) {
            if (this.j.f5114b.v().b()) {
                int[] iArr = new int[2];
                this.f.getLocationOnScreen(iArr);
                aoo.a();
                int iB = ly.b(this.f3036c, iArr[0]);
                aoo.a();
                int iB2 = ly.b(this.f3036c, iArr[1]);
                if (iB != this.L || iB2 != this.M) {
                    this.L = iB;
                    this.M = iB2;
                    this.j.f5114b.v().a(this.L, this.M, z ? false : true);
                }
            }
            if (this.f == null || (viewFindViewById = this.f.getRootView().findViewById(R.id.content)) == null) {
                return;
            }
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            this.f.getGlobalVisibleRect(rect);
            viewFindViewById.getGlobalVisibleRect(rect2);
            if (rect.top != rect2.top) {
                this.O = false;
            }
            if (rect.bottom != rect2.bottom) {
                this.P = false;
            }
        }
    }

    public final HashSet<ik> a() {
        return this.K;
    }

    final void a(View view) {
        agr agrVarA;
        if (((Boolean) aoo.f().a(aro.bG)).booleanValue() && (agrVarA = this.f3037d.a()) != null) {
            agrVarA.a(view);
        }
    }

    public final void a(HashSet<ik> hashSet) {
        this.K = hashSet;
    }

    public final void a(boolean z) {
        if (this.I == 0 && this.j != null && this.j.f5114b != null) {
            this.j.f5114b.stopLoading();
        }
        if (this.g != null) {
            this.g.b();
        }
        if (this.h != null) {
            this.h.b();
        }
        if (z) {
            this.j = null;
        }
    }

    public final void b() {
        if (this.j == null || this.j.f5114b == null) {
            return;
        }
        this.j.f5114b.destroy();
    }

    public final void c() {
        if (this.j == null || this.j.p == null) {
            return;
        }
        try {
            this.j.p.c();
        } catch (RemoteException e) {
            jd.e("Could not destroy mediation adapter.");
        }
    }

    public final boolean d() {
        return this.I == 0;
    }

    public final boolean e() {
        return this.I == 1;
    }

    public final String f() {
        return (this.O && this.P) ? "" : this.O ? this.Q ? "top-scrollable" : "top-locked" : this.P ? this.Q ? "bottom-scrollable" : "bottom-locked" : "";
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        b(false);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        b(true);
        this.Q = true;
    }
}
