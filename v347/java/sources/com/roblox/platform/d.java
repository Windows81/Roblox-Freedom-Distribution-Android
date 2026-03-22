package com.roblox.platform;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f8017a = new a() { // from class: com.roblox.platform.d.1
        @Override // com.roblox.platform.d.a
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
        return f8017a.a(str);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f8018a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f8019b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f8020c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8021d = 0;
        private int e = 1;
        private final int f = 4;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f8022a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f8023b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f8024c;

            a() {
            }

            public String toString() {
                return (this.f8022a == null || this.f8023b == null) ? "No trace" : String.format("[%s.%s()-%d]", this.f8022a, this.f8023b, Integer.valueOf(this.f8024c));
            }
        }

        public b(String str) {
            this.f8018a = str;
        }

        public b a() {
            this.f8020c = true;
            return this;
        }

        b a(int i) {
            this.f8021d = i;
            return this;
        }

        public int a(String str) {
            int iV = 0;
            if (!this.f8020c) {
                a[] aVarArrC = c();
                iV = Log.v(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[0], str));
                for (int i = 1; i < aVarArrC.length; i++) {
                    iV = Log.v(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[i], i));
                }
            }
            b();
            return iV;
        }

        public int b(String str) {
            int i = 0;
            if (!this.f8020c) {
                a[] aVarArrC = c();
                i = Log.i(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[0], str));
                for (int i2 = 1; i2 < aVarArrC.length; i2++) {
                    i = Log.i(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[i2], i2));
                }
            }
            b();
            return i;
        }

        public int c(String str) {
            int iD = 0;
            if (!this.f8020c) {
                a[] aVarArrC = c();
                iD = Log.d(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[0], str));
                for (int i = 1; i < aVarArrC.length; i++) {
                    iD = Log.d(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[i], i));
                }
            }
            b();
            return iD;
        }

        public int d(String str) {
            int iW = 0;
            if (!this.f8020c) {
                a[] aVarArrC = c();
                iW = Log.w(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[0], str));
                for (int i = 1; i < aVarArrC.length; i++) {
                    iW = Log.w(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[i], i));
                }
            }
            b();
            return iW;
        }

        public int e(String str) {
            int iE = 0;
            if (!this.f8020c) {
                a[] aVarArrC = c();
                iE = Log.e(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[0], str));
                for (int i = 1; i < aVarArrC.length; i++) {
                    iE = Log.e(this.f8019b != null ? this.f8019b : this.f8018a, a(aVarArrC[i], i));
                }
            }
            b();
            return iE;
        }

        private void b() {
            this.f8020c = false;
            this.f8019b = null;
            this.f8021d = 0;
        }

        private String a(a aVar, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(aVar.toString()).append(": ").append(str);
            return sb.toString();
        }

        private String a(a aVar, int i) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < i; i2++) {
                sb.append("  ");
            }
            return sb.append(aVar.toString()).toString();
        }

        private a[] c() {
            a[] aVarArr = new a[this.e];
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int i = this.f8021d + 4;
            for (int i2 = 0; i2 < aVarArr.length; i2++) {
                int i3 = i + i2;
                if (stackTrace != null && stackTrace.length > i3) {
                    a aVar = new a();
                    aVar.f8022a = a(stackTrace[i3]);
                    aVar.f8023b = stackTrace[i3].getMethodName();
                    aVar.f8024c = stackTrace[i3].getLineNumber();
                    aVarArr[i2] = aVar;
                } else {
                    aVarArr[i2] = new a();
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
