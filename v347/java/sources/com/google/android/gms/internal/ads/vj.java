package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vj extends abd<vj, a> implements acm {
    private static volatile acw<vj> zzakh;
    private static final vj zzdix = new vj();
    private int zzdir;
    private vl zzdiv;

    public static final class a extends abd.a<vj, a> implements acm {
        private a() {
            super(vj.zzdix);
        }

        /* synthetic */ a(vk vkVar) {
            this();
        }
    }

    static {
        abd.a((Class<vj>) vj.class, zzdix);
    }

    private vj() {
    }

    public static vj a(zv zvVar) throws abj {
        return (vj) abd.a(zzdix, zvVar);
    }

    public final vl a() {
        return this.zzdiv == null ? vl.b() : this.zzdiv;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vj>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vk vkVar = null;
        switch (vk.f5623a[i - 1]) {
            case 1:
                return new vj();
            case 2:
                return new a(vkVar);
            case 3:
                return a(zzdix, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzdiv", "zzdir"});
            case 4:
                return zzdix;
            case 5:
                acw<vj> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vj.class) {
                    acw<vj> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdix);
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

    public final int b() {
        return this.zzdir;
    }
}
