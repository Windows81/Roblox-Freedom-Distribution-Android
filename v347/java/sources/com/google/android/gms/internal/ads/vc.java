package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vc extends abd<vc, a> implements acm {
    private static volatile acw<vc> zzakh;
    private static final vc zzdis = new vc();
    private ve zzdio;
    private int zzdir;

    public static final class a extends abd.a<vc, a> implements acm {
        private a() {
            super(vc.zzdis);
        }

        /* synthetic */ a(vd vdVar) {
            this();
        }
    }

    static {
        abd.a((Class<vc>) vc.class, zzdis);
    }

    private vc() {
    }

    public static vc a(zv zvVar) throws abj {
        return (vc) abd.a(zzdis, zvVar);
    }

    public static vc c() {
        return zzdis;
    }

    public final ve a() {
        return this.zzdio == null ? ve.b() : this.zzdio;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vc>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vd vdVar = null;
        switch (vd.f5616a[i - 1]) {
            case 1:
                return new vc();
            case 2:
                return new a(vdVar);
            case 3:
                return a(zzdis, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zzdio", "zzdir"});
            case 4:
                return zzdis;
            case 5:
                acw<vc> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vc.class) {
                    acw<vc> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdis);
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
