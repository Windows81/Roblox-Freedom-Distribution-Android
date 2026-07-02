package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vp extends abd<vp, a> implements acm {
    private static volatile acw<vp> zzakh;
    private static final vp zzdja = new vp();
    private int zzdir;

    public static final class a extends abd.a<vp, a> implements acm {
        private a() {
            super(vp.zzdja);
        }

        /* synthetic */ a(vq vqVar) {
            this();
        }
    }

    static {
        abd.a((Class<vp>) vp.class, zzdja);
    }

    private vp() {
    }

    public static vp a(zv zvVar) throws abj {
        return (vp) abd.a(zzdja, zvVar);
    }

    public final int a() {
        return this.zzdir;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vp>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vq vqVar = null;
        switch (vq.f5626a[i - 1]) {
            case 1:
                return new vp();
            case 2:
                return new a(vqVar);
            case 3:
                return a(zzdja, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0003\u0000\u0000\u0000\u0002\u000b", new Object[]{"zzdir"});
            case 4:
                return zzdja;
            case 5:
                acw<vp> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vp.class) {
                    acw<vp> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdja);
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
