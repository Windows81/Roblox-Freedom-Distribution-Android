package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class xh extends abd<xh, a> implements acm {
    private static volatile acw<xh> zzakh;
    private static final xh zzdme = new xh();
    private String zzdmd = "";

    public static final class a extends abd.a<xh, a> implements acm {
        private a() {
            super(xh.zzdme);
        }

        /* synthetic */ a(xi xiVar) {
            this();
        }
    }

    static {
        abd.a((Class<xh>) xh.class, zzdme);
    }

    private xh() {
    }

    public static xh a(zv zvVar) throws abj {
        return (xh) abd.a(zzdme, zvVar);
    }

    public static xh b() {
        return zzdme;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xh>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xi xiVar = null;
        switch (xi.f5663a[i - 1]) {
            case 1:
                return new xh();
            case 2:
                return new a(xiVar);
            case 3:
                return a(zzdme, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzdmd"});
            case 4:
                return zzdme;
            case 5:
                acw<xh> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (xh.class) {
                    acw<xh> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdme);
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
        return this.zzdmd;
    }
}
