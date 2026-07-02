package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class xf extends abd<xf, a> implements acm {
    private static volatile acw<xf> zzakh;
    private static final xf zzdmc = new xf();
    private int zzdih;
    private xh zzdmb;

    public static final class a extends abd.a<xf, a> implements acm {
        private a() {
            super(xf.zzdmc);
        }

        /* synthetic */ a(xg xgVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((xf) this.f3743a).b(0);
            return this;
        }

        public final a a(xh xhVar) {
            b();
            ((xf) this.f3743a).a(xhVar);
            return this;
        }
    }

    static {
        abd.a((Class<xf>) xf.class, zzdmc);
    }

    private xf() {
    }

    public static xf a(zv zvVar) throws abj {
        return (xf) abd.a(zzdmc, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(xh xhVar) {
        if (xhVar == null) {
            throw new NullPointerException();
        }
        this.zzdmb = xhVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i) {
        this.zzdih = i;
    }

    public static a c() {
        return (a) ((abd.a) zzdmc.a(abd.e.e, (Object) null, (Object) null));
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xf>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xg xgVar = null;
        switch (xg.f5662a[i - 1]) {
            case 1:
                return new xf();
            case 2:
                return new a(xgVar);
            case 3:
                return a(zzdmc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzdih", "zzdmb"});
            case 4:
                return zzdmc;
            case 5:
                acw<xf> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (xf.class) {
                    acw<xf> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdmc);
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

    public final xh b() {
        return this.zzdmb == null ? xh.b() : this.zzdmb;
    }
}
