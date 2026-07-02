package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wq extends abd<wq, a> implements acm {
    private static volatile acw<wq> zzakh;
    private static final wq zzdkr = new wq();
    private int zzdkp;
    private int zzdkq;

    public static final class a extends abd.a<wq, a> implements acm {
        private a() {
            super(wq.zzdkr);
        }

        /* synthetic */ a(wr wrVar) {
            this();
        }
    }

    static {
        abd.a((Class<wq>) wq.class, zzdkr);
    }

    private wq() {
    }

    public static wq c() {
        return zzdkr;
    }

    public final wk a() {
        wk wkVarA = wk.a(this.zzdkp);
        return wkVarA == null ? wk.UNRECOGNIZED : wkVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wq>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wr wrVar = null;
        switch (wr.f5648a[i - 1]) {
            case 1:
                return new wq();
            case 2:
                return new a(wrVar);
            case 3:
                return a(zzdkr, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzdkp", "zzdkq"});
            case 4:
                return zzdkr;
            case 5:
                acw<wq> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wq.class) {
                    acw<wq> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdkr);
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
        return this.zzdkq;
    }
}
