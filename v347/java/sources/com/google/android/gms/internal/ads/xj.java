package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class xj extends abd<xj, a> implements acm {
    private static volatile acw<xj> zzakh;
    private static final xj zzdmg = new xj();
    private int zzdih;
    private xm zzdmf;

    public static final class a extends abd.a<xj, a> implements acm {
        private a() {
            super(xj.zzdmg);
        }

        /* synthetic */ a(xl xlVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((xj) this.f3743a).b(0);
            return this;
        }

        public final a a(xm xmVar) {
            b();
            ((xj) this.f3743a).a(xmVar);
            return this;
        }
    }

    static {
        abd.a((Class<xj>) xj.class, zzdmg);
    }

    private xj() {
    }

    public static xj a(zv zvVar) throws abj {
        return (xj) abd.a(zzdmg, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(xm xmVar) {
        if (xmVar == null) {
            throw new NullPointerException();
        }
        this.zzdmf = xmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i) {
        this.zzdih = i;
    }

    public static a c() {
        return (a) ((abd.a) zzdmg.a(abd.e.e, (Object) null, (Object) null));
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xj>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xl xlVar = null;
        switch (xl.f5668a[i - 1]) {
            case 1:
                return new xj();
            case 2:
                return new a(xlVar);
            case 3:
                return a(zzdmg, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zzdih", "zzdmf"});
            case 4:
                return zzdmg;
            case 5:
                acw<xj> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (xj.class) {
                    acw<xj> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdmg);
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

    public final xm b() {
        return this.zzdmf == null ? xm.c() : this.zzdmf;
    }
}
