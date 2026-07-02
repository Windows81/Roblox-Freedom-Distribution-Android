package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class xq extends abd<xq, a> implements acm {
    private static volatile acw<xq> zzakh;
    private static final xq zzdmt = new xq();
    private int zzdlq;
    private String zzdmr = "";
    private abi<wz> zzdms = m();

    public static final class a extends abd.a<xq, a> implements acm {
        private a() {
            super(xq.zzdmt);
        }

        /* synthetic */ a(xr xrVar) {
            this();
        }

        public final a a(wz wzVar) {
            b();
            ((xq) this.f3743a).a(wzVar);
            return this;
        }

        public final a a(String str) {
            b();
            ((xq) this.f3743a).a(str);
            return this;
        }
    }

    static {
        abd.a((Class<xq>) xq.class, zzdmt);
    }

    private xq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(wz wzVar) {
        if (wzVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzdms.a()) {
            abi<wz> abiVar = this.zzdms;
            int size = abiVar.size();
            this.zzdms = abiVar.a(size == 0 ? 10 : size << 1);
        }
        this.zzdms.add(wzVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdmr = str;
    }

    public static a b() {
        return (a) ((abd.a) zzdmt.a(abd.e.e, (Object) null, (Object) null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.xq>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        xr xrVar = null;
        switch (xr.f5674a[i - 1]) {
            case 1:
                return new xq();
            case 2:
                return new a(xrVar);
            case 3:
                return a(zzdmt, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzdlq", "zzdmr", "zzdms", wz.class});
            case 4:
                return zzdmt;
            case 5:
                acw<xq> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (xq.class) {
                    acw<xq> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdmt);
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

    public final List<wz> a() {
        return this.zzdms;
    }
}
