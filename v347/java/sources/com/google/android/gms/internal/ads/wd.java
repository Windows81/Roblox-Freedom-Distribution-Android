package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wd extends abd<wd, a> implements acm {
    private static volatile acw<wd> zzakh;
    private static final wd zzdjt = new wd();
    private int zzdih;
    private vz zzdjj;
    private zv zzdjr = zv.f5750a;
    private zv zzdjs = zv.f5750a;

    public static final class a extends abd.a<wd, a> implements acm {
        private a() {
            super(wd.zzdjt);
        }

        /* synthetic */ a(we weVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((wd) this.f3743a).b(0);
            return this;
        }

        public final a a(vz vzVar) {
            b();
            ((wd) this.f3743a).a(vzVar);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((wd) this.f3743a).b(zvVar);
            return this;
        }

        public final a b(zv zvVar) {
            b();
            ((wd) this.f3743a).c(zvVar);
            return this;
        }
    }

    static {
        abd.a((Class<wd>) wd.class, zzdjt);
    }

    private wd() {
    }

    public static wd a(zv zvVar) throws abj {
        return (wd) abd.a(zzdjt, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(vz vzVar) {
        if (vzVar == null) {
            throw new NullPointerException();
        }
        this.zzdjj = vzVar;
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
        this.zzdjr = zvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(zv zvVar) {
        if (zvVar == null) {
            throw new NullPointerException();
        }
        this.zzdjs = zvVar;
    }

    public static a e() {
        return (a) ((abd.a) zzdjt.a(abd.e.e, (Object) null, (Object) null));
    }

    public static wd f() {
        return zzdjt;
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wd>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        we weVar = null;
        switch (we.f5636a[i - 1]) {
            case 1:
                return new wd();
            case 2:
                return new a(weVar);
            case 3:
                return a(zzdjt, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzdih", "zzdjj", "zzdjr", "zzdjs"});
            case 4:
                return zzdjt;
            case 5:
                acw<wd> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wd.class) {
                    acw<wd> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdjt);
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

    public final vz b() {
        return this.zzdjj == null ? vz.d() : this.zzdjj;
    }

    public final zv c() {
        return this.zzdjr;
    }

    public final zv d() {
        return this.zzdjs;
    }
}
