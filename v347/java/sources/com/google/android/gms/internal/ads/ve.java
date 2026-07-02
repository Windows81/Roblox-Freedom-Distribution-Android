package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class ve extends abd<ve, a> implements acm {
    private static volatile acw<ve> zzakh;
    private static final ve zzdiu = new ve();
    private int zzdit;

    public static final class a extends abd.a<ve, a> implements acm {
        private a() {
            super(ve.zzdiu);
        }

        /* synthetic */ a(vf vfVar) {
            this();
        }
    }

    static {
        abd.a((Class<ve>) ve.class, zzdiu);
    }

    private ve() {
    }

    public static ve b() {
        return zzdiu;
    }

    public final int a() {
        return this.zzdit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.ve>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vf vfVar = null;
        switch (vf.f5617a[i - 1]) {
            case 1:
                return new ve();
            case 2:
                return new a(vfVar);
            case 3:
                return a(zzdiu, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzdit"});
            case 4:
                return zzdiu;
            case 5:
                acw<ve> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (ve.class) {
                    acw<ve> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdiu);
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
