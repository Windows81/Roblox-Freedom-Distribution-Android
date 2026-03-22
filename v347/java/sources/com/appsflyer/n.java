package com.appsflyer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2231c;

    n(long j, String str) {
        this.f2229a = new Object();
        this.f2230b = 0L;
        this.f2231c = "";
        this.f2230b = j;
        this.f2231c = str;
    }

    n(String str) {
        this(System.currentTimeMillis(), str);
    }

    static n a(String str) {
        if (str == null) {
            return b();
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length < 2) {
            return b();
        }
        return new n(Long.parseLong(strArrSplit[0]), strArrSplit[1]);
    }

    private static n b() {
        return new n(0L, "");
    }

    final boolean a(n nVar) {
        if (nVar != null) {
            return a(nVar.c(), nVar.a());
        }
        n nVarB = b();
        return a(nVarB.f2230b, nVarB.a());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(long r4, java.lang.String r6) {
        /*
            r3 = this;
            java.lang.Object r1 = r3.f2229a
            monitor-enter(r1)
            if (r6 == 0) goto L1a
            java.lang.String r0 = r3.f2231c     // Catch: java.lang.Throwable -> L1d
            boolean r0 = r6.equals(r0)     // Catch: java.lang.Throwable -> L1d
            if (r0 != 0) goto L1a
            boolean r0 = r3.a(r4)     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L1a
            r3.f2230b = r4     // Catch: java.lang.Throwable -> L1d
            r3.f2231c = r6     // Catch: java.lang.Throwable -> L1d
            r0 = 1
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1d
        L19:
            return r0
        L1a:
            r0 = 0
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1d
            goto L19
        L1d:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.n.a(long, java.lang.String):boolean");
    }

    private boolean a(long j) {
        return j - this.f2230b > 2000;
    }

    public final String toString() {
        return this.f2230b + "," + this.f2231c;
    }

    private long c() {
        return this.f2230b;
    }

    final String a() {
        return this.f2231c;
    }
}
