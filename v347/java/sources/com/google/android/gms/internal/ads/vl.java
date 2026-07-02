package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vl extends abd<vl, a> implements acm {
    private static volatile acw<vl> zzakh;
    private static final vl zzdiy = new vl();
    private int zzdit;

    public static final class a extends abd.a<vl, a> implements acm {
        private a() {
            super(vl.zzdiy);
        }

        /* synthetic */ a(vm vmVar) {
            this();
        }
    }

    static {
        abd.a((Class<vl>) vl.class, zzdiy);
    }

    private vl() {
    }

    public static vl b() {
        return zzdiy;
    }

    public final int a() {
        return this.zzdit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vl>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vm vmVar = null;
        switch (vm.f5624a[i - 1]) {
            case 1:
                return new vl();
            case 2:
                return new a(vmVar);
            case 3:
                return a(zzdiy, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzdit"});
            case 4:
                return zzdiy;
            case 5:
                acw<vl> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vl.class) {
                    acw<vl> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdiy);
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
