package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wf extends abd<wf, a> implements acm {
    private static volatile acw<wf> zzakh;
    private static final wf zzdjx = new wf();
    private int zzdju;
    private int zzdjv;
    private zv zzdjw = zv.f5750a;

    public static final class a extends abd.a<wf, a> implements acm {
        private a() {
            super(wf.zzdjx);
        }

        /* synthetic */ a(wg wgVar) {
            this();
        }
    }

    static {
        abd.a((Class<wf>) wf.class, zzdjx);
    }

    private wf() {
    }

    public static wf d() {
        return zzdjx;
    }

    public final wh a() {
        wh whVarA = wh.a(this.zzdju);
        return whVarA == null ? wh.UNRECOGNIZED : whVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wf>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wg wgVar = null;
        switch (wg.f5637a[i - 1]) {
            case 1:
                return new wf();
            case 2:
                return new a(wgVar);
            case 3:
                return a(zzdjx, "\u0000\u0003\u0000\u0000\u0001\u000b\u000b\f\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zzdju", "zzdjv", "zzdjw"});
            case 4:
                return zzdjx;
            case 5:
                acw<wf> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wf.class) {
                    acw<wf> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdjx);
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

    public final wk b() {
        wk wkVarA = wk.a(this.zzdjv);
        return wkVarA == null ? wk.UNRECOGNIZED : wkVarA;
    }

    public final zv c() {
        return this.zzdjw;
    }
}
