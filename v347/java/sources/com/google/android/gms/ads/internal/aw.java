package com.google.android.gms.ads.internal;

import android.os.Build;
import com.google.android.gms.internal.ads.akx;
import com.google.android.gms.internal.ads.alu;
import com.google.android.gms.internal.ads.alv;
import com.google.android.gms.internal.ads.amh;
import com.google.android.gms.internal.ads.art;
import com.google.android.gms.internal.ads.axz;
import com.google.android.gms.internal.ads.ayu;
import com.google.android.gms.internal.ads.bam;
import com.google.android.gms.internal.ads.bbn;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.cn;
import com.google.android.gms.internal.ads.fe;
import com.google.android.gms.internal.ads.hy;
import com.google.android.gms.internal.ads.in;
import com.google.android.gms.internal.ads.iw;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.js;
import com.google.android.gms.internal.ads.jx;
import com.google.android.gms.internal.ads.jy;
import com.google.android.gms.internal.ads.jz;
import com.google.android.gms.internal.ads.ka;
import com.google.android.gms.internal.ads.kb;
import com.google.android.gms.internal.ads.kd;
import com.google.android.gms.internal.ads.ke;
import com.google.android.gms.internal.ads.kn;
import com.google.android.gms.internal.ads.lk;
import com.google.android.gms.internal.ads.ll;
import com.google.android.gms.internal.ads.lu;
import com.google.android.gms.internal.ads.np;
import com.google.android.gms.internal.ads.nw;
import com.google.android.gms.internal.ads.pn;
import com.google.android.gms.internal.ads.qk;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3030a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static aw f3031b;
    private final ac A;
    private final com.google.android.gms.internal.ads.p B;
    private final amh C;
    private final hy D;
    private final pn E;
    private final nw F;
    private final ayu G;
    private final ke H;
    private final lu I;
    private final iw J;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.overlay.a f3032c = new com.google.android.gms.ads.internal.overlay.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn f3033d = new cn();
    private final com.google.android.gms.ads.internal.overlay.k e = new com.google.android.gms.ads.internal.overlay.k();
    private final com.google.android.gms.internal.ads.ao f = new com.google.android.gms.internal.ads.ao();
    private final jm g = new jm();
    private final qk h = new qk();
    private final js i;
    private final akx j;
    private final in k;
    private final alu l;
    private final alv m;
    private final com.google.android.gms.common.util.d n;
    private final e o;
    private final art p;
    private final kn q;
    private final fe r;
    private final np s;
    private final axz t;
    private final bam u;
    private final lk v;
    private final com.google.android.gms.ads.internal.overlay.t w;
    private final com.google.android.gms.ads.internal.overlay.u x;
    private final bbn y;
    private final ll z;

    static {
        aw awVar = new aw();
        synchronized (f3030a) {
            f3031b = awVar;
        }
    }

    protected aw() {
        int i = Build.VERSION.SDK_INT;
        this.i = i >= 21 ? new kd() : i >= 19 ? new kb() : i >= 18 ? new jz() : i >= 17 ? new jy() : i >= 16 ? new ka() : new jx();
        this.j = new akx();
        this.k = new in();
        this.J = new iw();
        this.l = new alu();
        this.m = new alv();
        this.n = com.google.android.gms.common.util.g.d();
        this.o = new e();
        this.p = new art();
        this.q = new kn();
        this.r = new fe();
        this.G = new ayu();
        this.s = new np();
        this.t = new axz();
        this.u = new bam();
        this.v = new lk();
        this.w = new com.google.android.gms.ads.internal.overlay.t();
        this.x = new com.google.android.gms.ads.internal.overlay.u();
        this.y = new bbn();
        this.z = new ll();
        this.A = new ac();
        this.B = new com.google.android.gms.internal.ads.p();
        this.C = new amh();
        this.D = new hy();
        this.E = new pn();
        this.F = new nw();
        this.H = new ke();
        this.I = new lu();
    }

    public static nw A() {
        return F().F;
    }

    public static hy B() {
        return F().D;
    }

    public static ayu C() {
        return F().G;
    }

    public static ke D() {
        return F().H;
    }

    public static lu E() {
        return F().I;
    }

    private static aw F() {
        aw awVar;
        synchronized (f3030a) {
            awVar = f3031b;
        }
        return awVar;
    }

    public static cn a() {
        return F().f3033d;
    }

    public static com.google.android.gms.ads.internal.overlay.a b() {
        return F().f3032c;
    }

    public static com.google.android.gms.ads.internal.overlay.k c() {
        return F().e;
    }

    public static com.google.android.gms.internal.ads.ao d() {
        return F().f;
    }

    public static jm e() {
        return F().g;
    }

    public static qk f() {
        return F().h;
    }

    public static js g() {
        return F().i;
    }

    public static akx h() {
        return F().j;
    }

    public static in i() {
        return F().k;
    }

    public static iw j() {
        return F().J;
    }

    public static alv k() {
        return F().m;
    }

    public static com.google.android.gms.common.util.d l() {
        return F().n;
    }

    public static e m() {
        return F().o;
    }

    public static art n() {
        return F().p;
    }

    public static kn o() {
        return F().q;
    }

    public static fe p() {
        return F().r;
    }

    public static np q() {
        return F().s;
    }

    public static axz r() {
        return F().t;
    }

    public static bam s() {
        return F().u;
    }

    public static lk t() {
        return F().v;
    }

    public static com.google.android.gms.internal.ads.p u() {
        return F().B;
    }

    public static com.google.android.gms.ads.internal.overlay.t v() {
        return F().w;
    }

    public static com.google.android.gms.ads.internal.overlay.u w() {
        return F().x;
    }

    public static bbn x() {
        return F().y;
    }

    public static ll y() {
        return F().z;
    }

    public static pn z() {
        return F().E;
    }
}
