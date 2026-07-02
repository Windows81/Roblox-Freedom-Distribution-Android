package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class xb extends abd<xb, a> implements acm {
    private static volatile acw<xb> zzakh;
    private static final xb zzdlt = new xb();
    private int zzdlq;
    private int zzdlr;
    private abi<b> zzdls = m();

    public static final class a extends abd.a<xb, a> implements acm {
        private a() {
            super(xb.zzdlt);
        }

        /* synthetic */ a(xc xcVar) {
            this();
        }
    }

    public static final class b extends abd<b, a> implements acm {
        private static volatile acw<b> zzakh;
        private static final b zzdlx = new b();
        private int zzdlj;
        private ws zzdlu;
        private int zzdlv;
        private int zzdlw;

        public static final class a extends abd.a<b, a> implements acm {
            private a() {
                super(b.zzdlx);
            }

            /* synthetic */ a(xc xcVar) {
                this();
            }
        }

        static {
            abd.a((Class<b>) b.class, zzdlx);
        }

        private b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xb$b>] */
        @Override // com.google.android.gms.internal.ads.abd
        protected final Object a(int i, Object obj, Object obj2) {
            Object obj3;
            xc xcVar = null;
            switch (xc.f5660a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(xcVar);
                case 3:
                    return a(zzdlx, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzdlu", "zzdlv", "zzdlw", "zzdlj"});
                case 4:
                    return zzdlx;
                case 5:
                    acw<b> acwVar = zzakh;
                    if (acwVar != null) {
                        return acwVar;
                    }
                    synchronized (b.class) {
                        acw<b> acwVar2 = zzakh;
                        obj3 = acwVar2;
                        if (acwVar2 == null) {
                            ?? bVar = new abd.b(zzdlx);
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

        public final boolean a() {
            return this.zzdlu != null;
        }

        public final ws b() {
            return this.zzdlu == null ? ws.e() : this.zzdlu;
        }

        public final wv c() {
            wv wvVarA = wv.a(this.zzdlv);
            return wvVarA == null ? wv.UNRECOGNIZED : wvVarA;
        }

        public final int d() {
            return this.zzdlw;
        }

        public final xo e() {
            xo xoVarA = xo.a(this.zzdlj);
            return xoVarA == null ? xo.UNRECOGNIZED : xoVarA;
        }
    }

    static {
        abd.a((Class<xb>) xb.class, zzdlt);
    }

    private xb() {
    }

    public static xb a(byte[] bArr) throws abj {
        return (xb) abd.a(zzdlt, bArr);
    }

    public final int a() {
        return this.zzdlr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xb>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xc xcVar = null;
        switch (xc.f5660a[i - 1]) {
            case 1:
                return new xb();
            case 2:
                return new a(xcVar);
            case 3:
                return a(zzdlt, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzdlq", "zzdlr", "zzdls", b.class});
            case 4:
                return zzdlt;
            case 5:
                acw<xb> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (xb.class) {
                    acw<xb> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdlt);
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

    public final List<b> b() {
        return this.zzdls;
    }

    public final int c() {
        return this.zzdls.size();
    }
}
