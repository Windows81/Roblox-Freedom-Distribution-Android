package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class uw extends abd<uw, a> implements acm {
    private static volatile acw<uw> zzakh;
    private static final uw zzdik = new uw();
    private int zzdih;
    private va zzdii;
    private wm zzdij;

    public static final class a extends abd.a<uw, a> implements acm {
        private a() {
            super(uw.zzdik);
        }

        /* synthetic */ a(ux uxVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((uw) this.f3743a).b(i);
            return this;
        }

        public final a a(va vaVar) {
            b();
            ((uw) this.f3743a).a(vaVar);
            return this;
        }

        public final a a(wm wmVar) {
            b();
            ((uw) this.f3743a).a(wmVar);
            return this;
        }
    }

    static {
        abd.a((Class<uw>) uw.class, zzdik);
    }

    private uw() {
    }

    public static uw a(zv zvVar) throws abj {
        return (uw) abd.a(zzdik, zvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(va vaVar) {
        if (vaVar == null) {
            throw new NullPointerException();
        }
        this.zzdii = vaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(wm wmVar) {
        if (wmVar == null) {
            throw new NullPointerException();
        }
        this.zzdij = wmVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i) {
        this.zzdih = i;
    }

    public static a d() {
        return (a) ((abd.a) zzdik.a(abd.e.e, (Object) null, (Object) null));
    }

    public final int a() {
        return this.zzdih;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.uw>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        ux uxVar = null;
        switch (ux.f5613a[i - 1]) {
            case 1:
                return new uw();
            case 2:
                return new a(uxVar);
            case 3:
                return a(zzdik, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzdih", "zzdii", "zzdij"});
            case 4:
                return zzdik;
            case 5:
                acw<uw> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (uw.class) {
                    acw<uw> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdik);
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

    public final va b() {
        return this.zzdii == null ? va.e() : this.zzdii;
    }

    public final wm c() {
        return this.zzdij == null ? wm.e() : this.zzdij;
    }
}
