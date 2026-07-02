package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class va extends abd<va, a> implements acm {
    private static volatile acw<va> zzakh;
    private static final va zzdiq = new va();
    private int zzdih;
    private ve zzdio;
    private zv zzdip = zv.f5750a;

    public static final class a extends abd.a<va, a> implements acm {
        private a() {
            super(va.zzdiq);
        }

        /* synthetic */ a(vb vbVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((va) this.f3743a).b(0);
            return this;
        }

        public final a a(ve veVar) {
            b();
            ((va) this.f3743a).a(veVar);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((va) this.f3743a).b(zvVar);
            return this;
        }
    }

    static {
        abd.a((Class<va>) va.class, zzdiq);
    }

    private va() {
    }

    public static va a(zv zvVar) throws abj {
        return (va) abd.a(zzdiq, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(ve veVar) {
        if (veVar == null) {
            throw new NullPointerException();
        }
        this.zzdio = veVar;
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
        return (a) ((abd.a) zzdiq.a(abd.e.e, (Object) null, (Object) null));
    }

    public static va e() {
        return zzdiq;
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.va>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vb vbVar = null;
        switch (vb.f5615a[i - 1]) {
            case 1:
                return new va();
            case 2:
                return new a(vbVar);
            case 3:
                return a(zzdiq, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzdih", "zzdio", "zzdip"});
            case 4:
                return zzdiq;
            case 5:
                acw<va> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (va.class) {
                    acw<va> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdiq);
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

    public final ve b() {
        return this.zzdio == null ? ve.b() : this.zzdio;
    }

    public final zv c() {
        return this.zzdip;
    }
}
