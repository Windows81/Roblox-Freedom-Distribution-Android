package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class amk {

    public static final class a extends abd<a, C0084a> implements acm {
        private static final a zzakg = new a();
        private static volatile acw<a> zzakh;

        /* JADX INFO: renamed from: com.google.android.gms.internal.ads.amk$a$a, reason: collision with other inner class name */
        public static final class C0084a extends abd.a<a, C0084a> implements acm {
            private C0084a() {
                super(a.zzakg);
            }

            /* synthetic */ C0084a(aml amlVar) {
                this();
            }
        }

        public enum b implements abg {
            UNKNOWN_EVENT_TYPE(0),
            AD_REQUEST(1),
            AD_LOADED(2),
            AD_FAILED_TO_LOAD(3),
            AD_FAILED_TO_LOAD_NO_FILL(4),
            AD_IMPRESSION(5),
            AD_FIRST_CLICK(6),
            AD_SUBSEQUENT_CLICK(7),
            REQUEST_WILL_START(8),
            REQUEST_DID_END(9),
            REQUEST_WILL_UPDATE_SIGNALS(10),
            REQUEST_DID_UPDATE_SIGNALS(11),
            REQUEST_WILL_BUILD_URL(12),
            REQUEST_DID_BUILD_URL(13),
            REQUEST_WILL_MAKE_NETWORK_REQUEST(14),
            REQUEST_DID_RECEIVE_NETWORK_RESPONSE(15),
            REQUEST_WILL_PROCESS_RESPONSE(16),
            REQUEST_DID_PROCESS_RESPONSE(17),
            REQUEST_WILL_RENDER(18),
            REQUEST_DID_RENDER(19),
            REQUEST_WILL_UPDATE_GMS_SIGNALS(1000),
            REQUEST_DID_UPDATE_GMS_SIGNALS(1001),
            REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(1002),
            REQUEST_FAILED_TO_BUILD_URL(1003),
            REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(1004),
            REQUEST_FAILED_TO_PROCESS_RESPONSE(1005),
            REQUEST_FAILED_TO_UPDATE_SIGNALS(1006),
            BANNER_SIZE_INVALID(10000),
            BANNER_SIZE_VALID(10001);

            private static final abh<b> D = new amm();
            private final int E;

            b(int i) {
                this.E = i;
            }

            public static b a(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN_EVENT_TYPE;
                    case 1:
                        return AD_REQUEST;
                    case 2:
                        return AD_LOADED;
                    case 3:
                        return AD_FAILED_TO_LOAD;
                    case 4:
                        return AD_FAILED_TO_LOAD_NO_FILL;
                    case 5:
                        return AD_IMPRESSION;
                    case 6:
                        return AD_FIRST_CLICK;
                    case 7:
                        return AD_SUBSEQUENT_CLICK;
                    case 8:
                        return REQUEST_WILL_START;
                    case 9:
                        return REQUEST_DID_END;
                    case 10:
                        return REQUEST_WILL_UPDATE_SIGNALS;
                    case 11:
                        return REQUEST_DID_UPDATE_SIGNALS;
                    case 12:
                        return REQUEST_WILL_BUILD_URL;
                    case 13:
                        return REQUEST_DID_BUILD_URL;
                    case 14:
                        return REQUEST_WILL_MAKE_NETWORK_REQUEST;
                    case 15:
                        return REQUEST_DID_RECEIVE_NETWORK_RESPONSE;
                    case 16:
                        return REQUEST_WILL_PROCESS_RESPONSE;
                    case 17:
                        return REQUEST_DID_PROCESS_RESPONSE;
                    case 18:
                        return REQUEST_WILL_RENDER;
                    case 19:
                        return REQUEST_DID_RENDER;
                    case 1000:
                        return REQUEST_WILL_UPDATE_GMS_SIGNALS;
                    case 1001:
                        return REQUEST_DID_UPDATE_GMS_SIGNALS;
                    case 1002:
                        return REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS;
                    case 1003:
                        return REQUEST_FAILED_TO_BUILD_URL;
                    case 1004:
                        return REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST;
                    case 1005:
                        return REQUEST_FAILED_TO_PROCESS_RESPONSE;
                    case 1006:
                        return REQUEST_FAILED_TO_UPDATE_SIGNALS;
                    case 10000:
                        return BANNER_SIZE_INVALID;
                    case 10001:
                        return BANNER_SIZE_VALID;
                    default:
                        return null;
                }
            }

            @Override // com.google.android.gms.internal.ads.abg
            public final int a() {
                return this.E;
            }
        }

        static {
            abd.a((Class<a>) a.class, zzakg);
        }

        private a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.internal.ads.abd$b, com.google.android.gms.internal.ads.acw<com.google.android.gms.internal.ads.amk$a>] */
        @Override // com.google.android.gms.internal.ads.abd
        protected final Object a(int i, Object obj, Object obj2) {
            Object obj3;
            aml amlVar = null;
            switch (aml.f4210a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new C0084a(amlVar);
                case 3:
                    return a(zzakg, "\u0001\u0000", (Object[]) null);
                case 4:
                    return zzakg;
                case 5:
                    acw<a> acwVar = zzakh;
                    if (acwVar != null) {
                        return acwVar;
                    }
                    synchronized (a.class) {
                        acw<a> acwVar2 = zzakh;
                        obj3 = acwVar2;
                        if (acwVar2 == null) {
                            ?? bVar = new abd.b(zzakg);
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
}
