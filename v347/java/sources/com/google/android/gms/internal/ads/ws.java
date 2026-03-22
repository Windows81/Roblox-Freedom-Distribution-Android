package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ws extends abd<ws, a> implements acm {
    private static volatile acw<ws> zzakh;
    private static final ws zzdkv = new ws();
    private String zzdks = "";
    private zv zzdkt = zv.f5750a;
    private int zzdku;

    public static final class a extends abd.a<ws, a> implements acm {
        private a() {
            super(ws.zzdkv);
        }

        /* synthetic */ a(wt wtVar) {
            this();
        }

        public final a a(b bVar) {
            b();
            ((ws) this.f3743a).a(bVar);
            return this;
        }

        public final a a(zv zvVar) {
            b();
            ((ws) this.f3743a).a(zvVar);
            return this;
        }

        public final a a(String str) {
            b();
            ((ws) this.f3743a).a(str);
            return this;
        }
    }

    public enum b implements abg {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        private static final abh<b> g = new wu();
        private final int h;

        b(int i2) {
            this.h = i2;
        }

        public static b a(int i2) {
            switch (i2) {
                case 0:
                    return UNKNOWN_KEYMATERIAL;
                case 1:
                    return SYMMETRIC;
                case 2:
                    return ASYMMETRIC_PRIVATE;
                case 3:
                    return ASYMMETRIC_PUBLIC;
                case 4:
                    return REMOTE;
                default:
                    return null;
            }
        }

        @Override // com.google.android.gms.internal.ads.abg
        public final int a() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.h;
        }
    }

    static {
        abd.a((Class<ws>) ws.class, zzdkv);
    }

    private ws() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(b bVar) {
        if (bVar == null) {
            throw new NullPointerException();
        }
        this.zzdku = bVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(zv zvVar) {
        if (zvVar == null) {
            throw new NullPointerException();
        }
        this.zzdkt = zvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzdks = str;
    }

    public static a d() {
        return (a) ((abd.a) zzdkv.a(abd.e.e, (Object) null, (Object) null));
    }

    public static ws e() {
        return zzdkv;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.ws>] */
    @Override // com.google.android.gms.internal.ads.abd
    protected final Object a(int i, Object obj, Object obj2) {
        Object obj3;
        wt wtVar = null;
        switch (wt.f5653a[i - 1]) {
            case 1:
                return new ws();
            case 2:
                return new a(wtVar);
            case 3:
                return a(zzdkv, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzdks", "zzdkt", "zzdku"});
            case 4:
                return zzdkv;
            case 5:
                acw<ws> acwVar = zzakh;
                if (acwVar != null) {
                    return acwVar;
                }
                synchronized (ws.class) {
                    acw<ws> acwVar2 = zzakh;
                    obj3 = acwVar2;
                    if (acwVar2 == null) {
                        ?? bVar = new abd.b(zzdkv);
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
        return this.zzdks;
    }

    public final zv b() {
        return this.zzdkt;
    }

    public final b c() {
        b bVarA = b.a(this.zzdku);
        return bVarA == null ? b.UNRECOGNIZED : bVarA;
    }
}
