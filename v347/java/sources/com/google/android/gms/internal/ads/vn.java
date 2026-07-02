package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vn extends abd<vn, a> implements acm {
    private static volatile acw<vn> zzakh;
    private static final vn zzdiz = new vn();
    private int zzdih;
    private zv zzdip = zv.f5750a;

    public static final class a extends abd.a<vn, a> implements acm {
        private a() {
            super(vn.zzdiz);
        }

        /* synthetic */ a(vo voVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((vn) this.f3743a).b(0);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((vn) this.f3743a).b(zvVar);
            return this;
        }
    }

    static {
        abd.a((Class<vn>) vn.class, zzdiz);
    }

    private vn() {
    }

    public static vn a(zv zvVar) throws abj {
        return (vn) abd.a(zzdiz, zvVar);
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

    public static a c() {
        return (a) ((abd.a) zzdiz.a(abd.e.e, (Object) null, (Object) null));
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vn>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vo voVar = null;
        switch (vo.f5625a[i - 1]) {
            case 1:
                return new vn();
            case 2:
                return new a(voVar);
            case 3:
                return a(zzdiz, "\u0000\u0002\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzdih", "zzdip"});
            case 4:
                return zzdiz;
            case 5:
                acw<vn> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vn.class) {
                    acw<vn> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdiz);
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

    public final zv b() {
        return this.zzdip;
    }
}
