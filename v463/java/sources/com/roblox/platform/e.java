package com.roblox.platform;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f7670a = new a() { // from class: com.roblox.platform.e.1
        @Override // com.roblox.platform.e.a
        public b a(String str) {
            return new b(str);
        }
    };

    interface a {
        b a(String str);
    }

    public static int a(String str, String str2) {
        return a(str).a(1).a(str2);
    }

    public static int b(String str, String str2) {
        return a(str).a(1).b(str2);
    }

    public static int c(String str, String str2) {
        return a(str).a(1).c(str2);
    }

    public static int d(String str, String str2) {
        return a(str).a(1).d(str2);
    }

    public static int e(String str, String str2) {
        return a(str).a(1).e(str2);
    }

    public static b a(String str) {
        return f7670a.a(str);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f7671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f7672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f7673c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7674d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7675e = 1;
        private final int f = 4;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f7676a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f7677b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f7678c;

            a() {
            }

            public String toString() {
                String str;
                String str2 = this.f7676a;
                return (str2 == null || (str = this.f7677b) == null) ? "No trace" : String.format("[%s.%s()-%d]", str2, str, Integer.valueOf(this.f7678c));
            }
        }

        public b(String str) {
            this.f7671a = str;
        }

        public b a() {
            this.f7673c = true;
            return this;
        }

        b a(int i) {
            this.f7674d = i;
            return this;
        }

        public int a(String str) {
            int i = 0;
            if (!this.f7673c) {
                a[] aVarArrC = c();
                String str2 = this.f7672b;
                if (str2 == null) {
                    str2 = this.f7671a;
                }
                int iV = Log.v(str2, a(aVarArrC[0], str));
                for (int i2 = 1; i2 < aVarArrC.length; i2++) {
                    String str3 = this.f7672b;
                    if (str3 == null) {
                        str3 = this.f7671a;
                    }
                    iV = Log.v(str3, a(aVarArrC[i2], i2));
                }
                i = iV;
            }
            b();
            return i;
        }

        public int b(String str) {
            int i = 0;
            if (!this.f7673c) {
                a[] aVarArrC = c();
                String str2 = this.f7672b;
                if (str2 == null) {
                    str2 = this.f7671a;
                }
                int i2 = Log.i(str2, a(aVarArrC[0], str));
                for (int i3 = 1; i3 < aVarArrC.length; i3++) {
                    String str3 = this.f7672b;
                    if (str3 == null) {
                        str3 = this.f7671a;
                    }
                    i2 = Log.i(str3, a(aVarArrC[i3], i3));
                }
                i = i2;
            }
            b();
            return i;
        }

        public int c(String str) {
            int i = 0;
            if (!this.f7673c) {
                a[] aVarArrC = c();
                String str2 = this.f7672b;
                if (str2 == null) {
                    str2 = this.f7671a;
                }
                int iD = Log.d(str2, a(aVarArrC[0], str));
                for (int i2 = 1; i2 < aVarArrC.length; i2++) {
                    String str3 = this.f7672b;
                    if (str3 == null) {
                        str3 = this.f7671a;
                    }
                    iD = Log.d(str3, a(aVarArrC[i2], i2));
                }
                i = iD;
            }
            b();
            return i;
        }

        public int d(String str) {
            int i = 0;
            if (!this.f7673c) {
                a[] aVarArrC = c();
                String str2 = this.f7672b;
                if (str2 == null) {
                    str2 = this.f7671a;
                }
                int iW = Log.w(str2, a(aVarArrC[0], str));
                for (int i2 = 1; i2 < aVarArrC.length; i2++) {
                    String str3 = this.f7672b;
                    if (str3 == null) {
                        str3 = this.f7671a;
                    }
                    iW = Log.w(str3, a(aVarArrC[i2], i2));
                }
                i = iW;
            }
            b();
            return i;
        }

        public int e(String str) {
            int i = 0;
            if (!this.f7673c) {
                a[] aVarArrC = c();
                String str2 = this.f7672b;
                if (str2 == null) {
                    str2 = this.f7671a;
                }
                int iE = Log.e(str2, a(aVarArrC[0], str));
                for (int i2 = 1; i2 < aVarArrC.length; i2++) {
                    String str3 = this.f7672b;
                    if (str3 == null) {
                        str3 = this.f7671a;
                    }
                    iE = Log.e(str3, a(aVarArrC[i2], i2));
                }
                i = iE;
            }
            b();
            return i;
        }

        private void b() {
            this.f7673c = false;
            this.f7672b = null;
            this.f7674d = 0;
        }

        private String a(a aVar, String str) {
            return aVar.toString() + ": " + str;
        }

        private String a(a aVar, int i) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < i; i2++) {
                sb.append("  ");
            }
            sb.append(aVar.toString());
            return sb.toString();
        }

        private a[] c() {
            int i = this.f7675e;
            a[] aVarArr = new a[i];
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int i2 = this.f7674d + 4;
            for (int i3 = 0; i3 < i; i3++) {
                int i4 = i2 + i3;
                if (stackTrace != null && stackTrace.length > i4) {
                    a aVar = new a();
                    aVar.f7676a = a(stackTrace[i4]);
                    aVar.f7677b = stackTrace[i4].getMethodName();
                    aVar.f7678c = stackTrace[i4].getLineNumber();
                    aVarArr[i3] = aVar;
                } else {
                    aVarArr[i3] = new a();
                }
            }
            return aVarArr;
        }

        private String a(StackTraceElement stackTraceElement) {
            String className = stackTraceElement.getClassName();
            int iLastIndexOf = className.lastIndexOf(46);
            return iLastIndexOf == -1 ? className : className.substring(iLastIndexOf + 1);
        }
    }
}
