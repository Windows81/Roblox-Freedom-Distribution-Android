package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class xm extends abd<xm, a> implements acm {
    private static volatile acw<xm> zzakh;
    private static final xm zzdmj = new xm();
    private String zzdmh = "";
    private wx zzdmi;

    public static final class a extends abd.a<xm, a> implements acm {
        private a() {
            super(xm.zzdmj);
        }

        /* synthetic */ a(xn xnVar) {
            this();
        }
    }

    static {
        abd.a((Class<xm>) xm.class, zzdmj);
    }

    private xm() {
    }

    public static xm a(zv zvVar) throws abj {
        return (xm) abd.a(zzdmj, zvVar);
    }

    public static xm c() {
        return zzdmj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xm>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xn xnVar = null;
        switch (xn.f5669a[i - 1]) {
            case 1:
                return new xm();
            case 2:
                return new a(xnVar);
            case 3:
                return a(zzdmj, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zzdmh", "zzdmi"});
            case 4:
                return zzdmj;
            case 5:
                acw<xm> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (xm.class) {
                    acw<xm> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdmj);
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

    public final String a() {
        return this.zzdmh;
    }

    public final wx b() {
        return this.zzdmi == null ? wx.c() : this.zzdmi;
    }
}
