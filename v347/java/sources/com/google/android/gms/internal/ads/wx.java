package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wx extends abd<wx, a> implements acm {
    private static volatile acw<wx> zzakh;
    private static final wx zzdlk = new wx();
    private String zzdks = "";
    private zv zzdkt = zv.f5750a;
    private int zzdlj;

    public static final class a extends abd.a<wx, a> implements acm {
        private a() {
            super(wx.zzdlk);
        }

        /* synthetic */ a(wy wyVar) {
            this();
        }
    }

    static {
        abd.a((Class<wx>) wx.class, zzdlk);
    }

    private wx() {
    }

    public static wx c() {
        return zzdlk;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wx>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wy wyVar = null;
        switch (wy.f5658a[i - 1]) {
            case 1:
                return new wx();
            case 2:
                return new a(wyVar);
            case 3:
                return a(zzdlk, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzdks", "zzdkt", "zzdlj"});
            case 4:
                return zzdlk;
            case 5:
                acw<wx> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wx.class) {
                    acw<wx> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdlk);
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

    public final String a() {
        return this.zzdks;
    }

    public final zv b() {
        return this.zzdkt;
    }
}
