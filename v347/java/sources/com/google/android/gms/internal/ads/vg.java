package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vg extends abd<vg, a> implements acm {
    private static volatile acw<vg> zzakh;
    private static final vg zzdiw = new vg();
    private int zzdih;
    private zv zzdip = zv.f5750a;
    private vl zzdiv;

    public static final class a extends abd.a<vg, a> implements acm {
        private a() {
            super(vg.zzdiw);
        }

        /* synthetic */ a(vh vhVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((vg) this.f3743a).b(0);
            return this;
        }

        public final a a(vl vlVar) {
            b();
            ((vg) this.f3743a).a(vlVar);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((vg) this.f3743a).b(zvVar);
            return this;
        }
    }

    static {
        abd.a((Class<vg>) vg.class, zzdiw);
    }

    private vg() {
    }

    public static vg a(zv zvVar) throws abj {
        return (vg) abd.a(zzdiw, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(vl vlVar) {
        if (vlVar == null) {
            throw new NullPointerException();
        }
        this.zzdiv = vlVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i) {
        this.zzdih = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(zv zvVar) {
        if (zvVar == null) {
            throw new NullPointerException();
        }
        this.zzdip = zvVar;
    }

    public static a d() {
        return (a) ((abd.a) zzdiw.a(abd.e.e, (Object) null, (Object) null));
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vg>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vh vhVar = null;
        switch (vh.f5618a[i - 1]) {
            case 1:
                return new vg();
            case 2:
                return new a(vhVar);
            case 3:
                return a(zzdiw, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzdih", "zzdiv", "zzdip"});
            case 4:
                return zzdiw;
            case 5:
                acw<vg> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vg.class) {
                    acw<vg> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdiw);
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

    public final vl b() {
        return this.zzdiv == null ? vl.b() : this.zzdiv;
    }

    public final zv c() {
        return this.zzdip;
    }
}
