package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wb extends abd<wb, a> implements acm {
    private static volatile acw<wb> zzakh;
    private static final wb zzdjq = new wb();
    private int zzdih;
    private zv zzdip = zv.f5750a;
    private wd zzdjp;

    public static final class a extends abd.a<wb, a> implements acm {
        private a() {
            super(wb.zzdjq);
        }

        /* synthetic */ a(wc wcVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((wb) this.f3743a).b(0);
            return this;
        }

        public final a a(wd wdVar) {
            b();
            ((wb) this.f3743a).a(wdVar);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((wb) this.f3743a).b(zvVar);
            return this;
        }
    }

    static {
        abd.a((Class<wb>) wb.class, zzdjq);
    }

    private wb() {
    }

    public static wb a(zv zvVar) throws abj {
        return (wb) abd.a(zzdjq, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(wd wdVar) {
        if (wdVar == null) {
            throw new NullPointerException();
        }
        this.zzdjp = wdVar;
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
        return (a) ((abd.a) zzdjq.a(abd.e.e, (Object) null, (Object) null));
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wb>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wc wcVar = null;
        switch (wc.f5635a[i - 1]) {
            case 1:
                return new wb();
            case 2:
                return new a(wcVar);
            case 3:
                return a(zzdjq, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzdih", "zzdjp", "zzdip"});
            case 4:
                return zzdjq;
            case 5:
                acw<wb> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wb.class) {
                    acw<wb> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdjq);
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

    public final wd b() {
        return this.zzdjp == null ? wd.f() : this.zzdjp;
    }

    public final zv c() {
        return this.zzdip;
    }
}
