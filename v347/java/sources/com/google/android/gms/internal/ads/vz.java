package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vz extends abd<vz, a> implements acm {
    private static volatile acw<vz> zzakh;
    private static final vz zzdjo = new vz();
    private wf zzdjl;
    private vv zzdjm;
    private int zzdjn;

    public static final class a extends abd.a<vz, a> implements acm {
        private a() {
            super(vz.zzdjo);
        }

        /* synthetic */ a(wa waVar) {
            this();
        }
    }

    static {
        abd.a((Class<vz>) vz.class, zzdjo);
    }

    private vz() {
    }

    public static vz d() {
        return zzdjo;
    }

    public final wf a() {
        return this.zzdjl == null ? wf.d() : this.zzdjl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vz>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wa waVar = null;
        switch (wa.f5634a[i - 1]) {
            case 1:
                return new vz();
            case 2:
                return new a(waVar);
            case 3:
                return a(zzdjo, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zzdjl", "zzdjm", "zzdjn"});
            case 4:
                return zzdjo;
            case 5:
                acw<vz> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vz.class) {
                    acw<vz> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdjo);
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

    public final vv b() {
        return this.zzdjm == null ? vv.b() : this.zzdjm;
    }

    public final vt c() {
        vt vtVarA = vt.a(this.zzdjn);
        return vtVarA == null ? vt.UNRECOGNIZED : vtVarA;
    }
}
