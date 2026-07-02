package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class wz extends abd<wz, a> implements acm {
    private static volatile acw<wz> zzakh;
    private static final wz zzdlp = new wz();
    private int zzdlm;
    private boolean zzdln;
    private String zzdll = "";
    private String zzdks = "";
    private String zzdlo = "";

    public static final class a extends abd.a<wz, a> implements acm {
        private a() {
            super(wz.zzdlp);
        }

        /* synthetic */ a(xa xaVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((wz) this.f3743a).b(0);
            return this;
        }

        public final a a(String str) {
            b();
            ((wz) this.f3743a).a(str);
            return this;
        }

        public final a a(boolean z) {
            b();
            ((wz) this.f3743a).a(true);
            return this;
        }

        public final a b(String str) {
            b();
            ((wz) this.f3743a).b(str);
            return this;
        }

        public final a c(String str) {
            b();
            ((wz) this.f3743a).c(str);
            return this;
        }
    }

    static {
        abd.a((Class<wz>) wz.class, zzdlp);
    }

    private wz() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdll = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(boolean z) {
        this.zzdln = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i) {
        this.zzdlm = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdks = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdlo = str;
    }

    public static a f() {
        return (a) ((abd.a) zzdlp.a(abd.e.e, (Object) null, (Object) null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.wz>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xa xaVar = null;
        switch (xa.f5659a[i - 1]) {
            case 1:
                return new wz();
            case 2:
                return new a(xaVar);
            case 3:
                return a(zzdlp, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0006\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzdll", "zzdks", "zzdlm", "zzdln", "zzdlo"});
            case 4:
                return zzdlp;
            case 5:
                acw<wz> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (wz.class) {
                    acw<wz> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdlp);
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
        return this.zzdll;
    }

    public final String b() {
        return this.zzdks;
    }

    public final int c() {
        return this.zzdlm;
    }

    public final boolean d() {
        return this.zzdln;
    }

    public final String e() {
        return this.zzdlo;
    }
}
