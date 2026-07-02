package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wm extends abd<wm, a> implements acm {
    private static volatile acw<wm> zzakh;
    private static final wm zzdkn = new wm();
    private int zzdih;
    private zv zzdip = zv.f5750a;
    private wq zzdkm;

    public static final class a extends abd.a<wm, a> implements acm {
        private a() {
            super(wm.zzdkn);
        }

        /* synthetic */ a(wn wnVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((wm) this.f3743a).b(0);
            return this;
        }

        public final a a(wq wqVar) {
            b();
            ((wm) this.f3743a).a(wqVar);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((wm) this.f3743a).b(zvVar);
            return this;
        }
    }

    static {
        abd.a((Class<wm>) wm.class, zzdkn);
    }

    private wm() {
    }

    public static wm a(zv zvVar) throws abj {
        return (wm) abd.a(zzdkn, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(wq wqVar) {
        if (wqVar == null) {
            throw new NullPointerException();
        }
        this.zzdkm = wqVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i) {
        this.zzdih = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(zv zvVar) {
        if (zvVar == null) {
            throw new NullPointerException();
        }
        this.zzdip = zvVar;
    }

    public static a d() {
        return (a) ((abd.a) zzdkn.a(abd.e.e, (Object) null, (Object) null));
    }

    public static wm e() {
        return zzdkn;
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wm>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wn wnVar = null;
        switch (wn.f5646a[i - 1]) {
            case 1:
                return new wm();
            case 2:
                return new a(wnVar);
            case 3:
                return a(zzdkn, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzdih", "zzdkm", "zzdip"});
            case 4:
                return zzdkn;
            case 5:
                acw<wm> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wm.class) {
                    acw<wm> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdkn);
                        zzakh = bVar;
                        obj3 = bVar;
                    }
                    break;
                }
                return obj3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final wq b() {
        return this.zzdkm == null ? wq.c() : this.zzdkm;
    }

    public final zv c() {
        return this.zzdip;
    }
}
