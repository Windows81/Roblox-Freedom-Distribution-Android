package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wo extends abd<wo, a> implements acm {
    private static volatile acw<wo> zzakh;
    private static final wo zzdko = new wo();
    private int zzdir;
    private wq zzdkm;

    public static final class a extends abd.a<wo, a> implements acm {
        private a() {
            super(wo.zzdko);
        }

        /* synthetic */ a(wp wpVar) {
            this();
        }
    }

    static {
        abd.a((Class<wo>) wo.class, zzdko);
    }

    private wo() {
    }

    public static wo a(zv zvVar) throws abj {
        return (wo) abd.a(zzdko, zvVar);
    }

    public static wo c() {
        return zzdko;
    }

    public final wq a() {
        return this.zzdkm == null ? wq.c() : this.zzdkm;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wo>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wp wpVar = null;
        switch (wp.f5647a[i - 1]) {
            case 1:
                return new wo();
            case 2:
                return new a(wpVar);
            case 3:
                return a(zzdko, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzdkm", "zzdir"});
            case 4:
                return zzdko;
            case 5:
                acw<wo> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wo.class) {
                    acw<wo> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdko);
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
