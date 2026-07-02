package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class uy extends abd<uy, a> implements acm {
    private static volatile acw<uy> zzakh;
    private static final uy zzdin = new uy();
    private vc zzdil;
    private wo zzdim;

    public static final class a extends abd.a<uy, a> implements acm {
        private a() {
            super(uy.zzdin);
        }

        /* synthetic */ a(uz uzVar) {
            this();
        }
    }

    static {
        abd.a((Class<uy>) uy.class, zzdin);
    }

    private uy() {
    }

    public static uy a(zv zvVar) throws abj {
        return (uy) abd.a(zzdin, zvVar);
    }

    public final vc a() {
        return this.zzdil == null ? vc.c() : this.zzdil;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.uy>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        uz uzVar = null;
        switch (uz.f5614a[i - 1]) {
            case 1:
                return new uy();
            case 2:
                return new a(uzVar);
            case 3:
                return a(zzdin, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zzdil", "zzdim"});
            case 4:
                return zzdin;
            case 5:
                acw<uy> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (uy.class) {
                    acw<uy> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdin);
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

    public final wo b() {
        return this.zzdim == null ? wo.c() : this.zzdim;
    }
}
