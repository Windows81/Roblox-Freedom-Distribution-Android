package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vx extends abd<vx, a> implements acm {
    private static volatile acw<vx> zzakh;
    private static final vx zzdjk = new vx();
    private vz zzdjj;

    public static final class a extends abd.a<vx, a> implements acm {
        private a() {
            super(vx.zzdjk);
        }

        /* synthetic */ a(vy vyVar) {
            this();
        }
    }

    static {
        abd.a((Class<vx>) vx.class, zzdjk);
    }

    private vx() {
    }

    public static vx a(zv zvVar) throws abj {
        return (vx) abd.a(zzdjk, zvVar);
    }

    public final vz a() {
        return this.zzdjj == null ? vz.d() : this.zzdjj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vx>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vy vyVar = null;
        switch (vy.f5633a[i - 1]) {
            case 1:
                return new vx();
            case 2:
                return new a(vyVar);
            case 3:
                return a(zzdjk, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\t", new Object[]{"zzdjj"});
            case 4:
                return zzdjk;
            case 5:
                acw<vx> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vx.class) {
                    acw<vx> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdjk);
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
