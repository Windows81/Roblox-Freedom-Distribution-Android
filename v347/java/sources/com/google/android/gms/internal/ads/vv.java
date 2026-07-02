package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vv extends abd<vv, a> implements acm {
    private static volatile acw<vv> zzakh;
    private static final vv zzdji = new vv();
    private wx zzdjh;

    public static final class a extends abd.a<vv, a> implements acm {
        private a() {
            super(vv.zzdji);
        }

        /* synthetic */ a(vw vwVar) {
            this();
        }
    }

    static {
        abd.a((Class<vv>) vv.class, zzdji);
    }

    private vv() {
    }

    public static vv b() {
        return zzdji;
    }

    public final wx a() {
        return this.zzdjh == null ? wx.c() : this.zzdjh;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vv>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vw vwVar = null;
        switch (vw.f5632a[i - 1]) {
            case 1:
                return new vv();
            case 2:
                return new a(vwVar);
            case 3:
                return a(zzdji, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0003\u0000\u0000\u0000\u0002\t", new Object[]{"zzdjh"});
            case 4:
                return zzdji;
            case 5:
                acw<vv> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vv.class) {
                    acw<vv> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdji);
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
}
