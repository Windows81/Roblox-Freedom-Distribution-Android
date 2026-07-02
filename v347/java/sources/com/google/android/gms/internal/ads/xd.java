package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
public final class xd extends abd<xd, a> implements acm {
    private static volatile acw<xd> zzakh;
    private static final xd zzdlz = new xd();
    private int zzdlq;
    private int zzdlr;
    private abi<b> zzdly = m();

    public static final class a extends abd.a<xd, a> implements acm {
        private a() {
            super(xd.zzdlz);
        }

        /* synthetic */ a(xe xeVar) {
            this();
        }

        public final a a(int i) {
            b();
            ((xd) this.f3743a).b(i);
            return this;
        }

        public final a a(b bVar) {
            b();
            ((xd) this.f3743a).a(bVar);
            return this;
        }
    }

    public static final class b extends abd<b, a> implements acm {
        private static volatile acw<b> zzakh;
        private static final b zzdma = new b();
        private String zzdks = "";
        private int zzdlj;
        private int zzdlv;
        private int zzdlw;

        public static final class a extends abd.a<b, a> implements acm {
            private a() {
                super(b.zzdma);
            }

            /* synthetic */ a(xe xeVar) {
                this();
            }

            public final a a(int i) {
                b();
                ((b) this.f3743a).b(i);
                return this;
            }

            public final a a(wv wvVar) {
                b();
                ((b) this.f3743a).a(wvVar);
                return this;
            }

            public final a a(xo xoVar) {
                b();
                ((b) this.f3743a).a(xoVar);
                return this;
            }

            public final a a(String str) {
                b();
                ((b) this.f3743a).a(str);
                return this;
            }
        }

        static {
            abd.a((Class<b>) b.class, zzdma);
        }

        private b() {
        }

        public static a a() {
            return (a) ((abd.a) zzdma.a(abd.e.e, (Object) null, (Object) null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(wv wvVar) {
            if (wvVar == null) {
                throw new NullPointerException();
            }
            this.zzdlv = wvVar.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(xo xoVar) {
            if (xoVar == null) {
                throw new NullPointerException();
            }
            this.zzdlj = xoVar.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdks = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(int i) {
            this.zzdlw = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xd$b>] */
        @Override // com.google.android.gms.internal.ads.abd
        protected final Object a(int i, Object obj, Object obj2) {
            Object obj3;
            xe xeVar = null;
            switch (xe.f5661a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(xeVar);
                case 3:
                    return a(zzdma, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzdks", "zzdlv", "zzdlw", "zzdlj"});
                case 4:
                    return zzdma;
                case 5:
                    acw<b> acwVar = zzakh;
                    if (acwVar != null) {
                        return acwVar;
                    }
                    synchronized (b.class) {
                        acw<b> acwVar2 = zzakh;
                        obj3 = acwVar2;
                        if (acwVar2 == null) {
                            ?? bVar = new abd.b(zzdma);
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
    }

    static {
        abd.a((Class<xd>) xd.class, zzdlz);
    }

    private xd() {
    }

    public static a a() {
        return (a) ((abd.a) zzdlz.a(abd.e.e, (Object) null, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b bVar) {
        if (bVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzdly.a()) {
            abi<b> abiVar = this.zzdly;
            int size = abiVar.size();
            this.zzdly = abiVar.a(size == 0 ? 10 : size << 1);
        }
        this.zzdly.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(int i) {
        this.zzdlr = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xd>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xe xeVar = null;
        switch (xe.f5661a[i - 1]) {
            case 1:
                return new xd();
            case 2:
                return new a(xeVar);
            case 3:
                return a(zzdlz, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzdlq", "zzdlr", "zzdly", b.class});
            case 4:
                return zzdlz;
            case 5:
                acw<xd> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (xd.class) {
                    acw<xd> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdlz);
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
}
