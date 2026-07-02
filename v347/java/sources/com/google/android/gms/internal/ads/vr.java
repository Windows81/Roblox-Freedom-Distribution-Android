package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class vr extends abd<vr, a> implements acm {
    private static volatile acw<vr> zzakh;
    private static final vr zzdjb = new vr();
    private int zzdih;
    private zv zzdip = zv.f5750a;

    public static final class a extends abd.a<vr, a> implements acm {
        private a() {
            super(vr.zzdjb);
        }

        /* synthetic */ a(vs vsVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((vr) this.f3743a).b(0);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((vr) this.f3743a).b(zvVar);
            return this;
        }
    }

    static {
        abd.a((Class<vr>) vr.class, zzdjb);
    }

    private vr() {
    }

    public static vr a(zv zvVar) throws abj {
        return (vr) abd.a(zzdjb, zvVar);
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
        return (a) ((abd.a) zzdjb.a(abd.e.e, (Object) null, (Object) null));
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.vr>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        vs vsVar = null;
        switch (vs.f5627a[i - 1]) {
            case 1:
                return new vr();
            case 2:
                return new a(vsVar);
            case 3:
                return a(zzdjb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzdih", "zzdip"});
            case 4:
                return zzdjb;
            case 5:
                acw<vr> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (vr.class) {
                    acw<vr> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdjb);
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
