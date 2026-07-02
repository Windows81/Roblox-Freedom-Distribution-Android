package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class aah implements adc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aae f3695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3698d = 0;

    private aah(aae aaeVar) {
        this.f3695a = (aae) abf.a(aaeVar, "input");
        this.f3695a.f3692c = this;
    }

    public static aah a(aae aaeVar) {
        return aaeVar.f3692c != null ? aaeVar.f3692c : new aah(aaeVar);
    }

    private final Object a(aek aekVar, Class<?> cls, aaq aaqVar) throws IOException {
        switch (aai.f3699a[aekVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(k());
            case 2:
                return n();
            case 3:
                return Double.valueOf(d());
            case 4:
                return Integer.valueOf(p());
            case 5:
                return Integer.valueOf(j());
            case 6:
                return Long.valueOf(i());
            case 7:
                return Float.valueOf(e());
            case 8:
                return Integer.valueOf(h());
            case 9:
                return Long.valueOf(g());
            case 10:
                a(2);
                return c(acx.a().a((Class) cls), aaqVar);
            case 11:
                return Integer.valueOf(q());
            case 12:
                return Long.valueOf(r());
            case 13:
                return Integer.valueOf(s());
            case 14:
                return Long.valueOf(t());
            case 15:
                return m();
            case 16:
                return Integer.valueOf(o());
            case 17:
                return Long.valueOf(f());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final void a(int i) throws IOException {
        if ((this.f3696b & 7) != i) {
            throw abj.f();
        }
    }

    private final void a(List<String> list, boolean z) throws IOException {
        int iA;
        int iA2;
        if ((this.f3696b & 7) != 2) {
            throw abj.f();
        }
        if (!(list instanceof abt) || z) {
            do {
                list.add(z ? m() : l());
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abt abtVar = (abt) list;
        do {
            abtVar.a(n());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    private static void b(int i) throws IOException {
        if ((i & 7) != 0) {
            throw abj.g();
        }
    }

    private final <T> T c(add<T> addVar, aaq aaqVar) throws IOException {
        int iM = this.f3695a.m();
        if (this.f3695a.f3690a >= this.f3695a.f3691b) {
            throw new abj("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iC = this.f3695a.c(iM);
        T tA = addVar.a();
        this.f3695a.f3690a++;
        addVar.a(tA, this, aaqVar);
        addVar.c(tA);
        this.f3695a.a(0);
        aae aaeVar = this.f3695a;
        aaeVar.f3690a--;
        this.f3695a.d(iC);
        return tA;
    }

    private static void c(int i) throws IOException {
        if ((i & 3) != 0) {
            throw abj.g();
        }
    }

    private final <T> T d(add<T> addVar, aaq aaqVar) throws IOException {
        int i = this.f3697c;
        this.f3697c = ((this.f3696b >>> 3) << 3) | 4;
        try {
            T tA = addVar.a();
            addVar.a(tA, this, aaqVar);
            addVar.c(tA);
            if (this.f3696b != this.f3697c) {
                throw abj.g();
            }
            return tA;
        } finally {
            this.f3697c = i;
        }
    }

    private final void d(int i) throws IOException {
        if (this.f3695a.u() != i) {
            throw abj.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int a() throws IOException {
        if (this.f3698d != 0) {
            this.f3696b = this.f3698d;
            this.f3698d = 0;
        } else {
            this.f3696b = this.f3695a.a();
        }
        if (this.f3696b == 0 || this.f3696b == this.f3697c) {
            return Integer.MAX_VALUE;
        }
        return this.f3696b >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final <T> T a(add<T> addVar, aaq aaqVar) throws IOException {
        a(2);
        return (T) c(addVar, aaqVar);
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void a(List<Double> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof aam)) {
            switch (this.f3696b & 7) {
                case 1:
                    break;
                case 2:
                    int iM = this.f3695a.m();
                    b(iM);
                    int iU = iM + this.f3695a.u();
                    do {
                        list.add(Double.valueOf(this.f3695a.b()));
                    } while (this.f3695a.u() < iU);
                    return;
                default:
                    throw abj.f();
            }
            do {
                list.add(Double.valueOf(this.f3695a.b()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        aam aamVar = (aam) list;
        switch (this.f3696b & 7) {
            case 1:
                break;
            case 2:
                int iM2 = this.f3695a.m();
                b(iM2);
                int iU2 = iM2 + this.f3695a.u();
                do {
                    aamVar.a(this.f3695a.b());
                } while (this.f3695a.u() < iU2);
                return;
            default:
                throw abj.f();
        }
        do {
            aamVar.a(this.f3695a.b());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.adc
    public final <T> void a(List<T> list, add<T> addVar, aaq aaqVar) throws IOException {
        int iA;
        if ((this.f3696b & 7) != 2) {
            throw abj.f();
        }
        int i = this.f3696b;
        do {
            list.add(c(addVar, aaqVar));
            if (this.f3695a.t() || this.f3698d != 0) {
                return;
            } else {
                iA = this.f3695a.a();
            }
        } while (iA == i);
        this.f3698d = iA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        r7.put(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.adc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <K, V> void a(java.util.Map<K, V> r7, com.google.android.gms.internal.ads.acd<K, V> r8, com.google.android.gms.internal.ads.aaq r9) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 2
            r6.a(r0)
            com.google.android.gms.internal.ads.aae r0 = r6.f3695a
            int r0 = r0.m()
            com.google.android.gms.internal.ads.aae r1 = r6.f3695a
            int r2 = r1.c(r0)
            K r1 = r8.f3786b
            V r0 = r8.f3788d
        L14:
            int r3 = r6.a()     // Catch: java.lang.Throwable -> L45
            r4 = 2147483647(0x7fffffff, float:NaN)
            if (r3 == r4) goto L62
            com.google.android.gms.internal.ads.aae r4 = r6.f3695a     // Catch: java.lang.Throwable -> L45
            boolean r4 = r4.t()     // Catch: java.lang.Throwable -> L45
            if (r4 != 0) goto L62
            switch(r3) {
                case 1: goto L4c;
                case 2: goto L55;
                default: goto L28;
            }
        L28:
            boolean r3 = r6.c()     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            if (r3 != 0) goto L14
            com.google.android.gms.internal.ads.abj r3 = new com.google.android.gms.internal.ads.abj     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            java.lang.String r4 = "Unable to parse map entry."
            r3.<init>(r4)     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            throw r3     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
        L36:
            r3 = move-exception
            boolean r3 = r6.c()     // Catch: java.lang.Throwable -> L45
            if (r3 != 0) goto L14
            com.google.android.gms.internal.ads.abj r0 = new com.google.android.gms.internal.ads.abj     // Catch: java.lang.Throwable -> L45
            java.lang.String r1 = "Unable to parse map entry."
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L45
            throw r0     // Catch: java.lang.Throwable -> L45
        L45:
            r0 = move-exception
            com.google.android.gms.internal.ads.aae r1 = r6.f3695a
            r1.d(r2)
            throw r0
        L4c:
            com.google.android.gms.internal.ads.aek r3 = r8.f3785a     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            r4 = 0
            r5 = 0
            java.lang.Object r1 = r6.a(r3, r4, r5)     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            goto L14
        L55:
            com.google.android.gms.internal.ads.aek r3 = r8.f3787c     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            V r4 = r8.f3788d     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            java.lang.Class r4 = r4.getClass()     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            java.lang.Object r0 = r6.a(r3, r4, r9)     // Catch: com.google.android.gms.internal.ads.abk -> L36 java.lang.Throwable -> L45
            goto L14
        L62:
            r7.put(r1, r0)     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.aae r0 = r6.f3695a
            r0.d(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aah.a(java.util.Map, com.google.android.gms.internal.ads.acd, com.google.android.gms.internal.ads.aaq):void");
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int b() {
        return this.f3696b;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final <T> T b(add<T> addVar, aaq aaqVar) throws IOException {
        a(3);
        return (T) d(addVar, aaqVar);
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void b(List<Float> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof abb)) {
            switch (this.f3696b & 7) {
                case 2:
                    int iM = this.f3695a.m();
                    c(iM);
                    int iU = iM + this.f3695a.u();
                    do {
                        list.add(Float.valueOf(this.f3695a.c()));
                    } while (this.f3695a.u() < iU);
                    return;
                case 3:
                case 4:
                default:
                    throw abj.f();
                case 5:
                    break;
            }
            do {
                list.add(Float.valueOf(this.f3695a.c()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abb abbVar = (abb) list;
        switch (this.f3696b & 7) {
            case 2:
                int iM2 = this.f3695a.m();
                c(iM2);
                int iU2 = iM2 + this.f3695a.u();
                do {
                    abbVar.a(this.f3695a.c());
                } while (this.f3695a.u() < iU2);
                return;
            case 3:
            case 4:
            default:
                throw abj.f();
            case 5:
                break;
        }
        do {
            abbVar.a(this.f3695a.c());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.adc
    public final <T> void b(List<T> list, add<T> addVar, aaq aaqVar) throws IOException {
        int iA;
        if ((this.f3696b & 7) != 3) {
            throw abj.f();
        }
        int i = this.f3696b;
        do {
            list.add(d(addVar, aaqVar));
            if (this.f3695a.t() || this.f3698d != 0) {
                return;
            } else {
                iA = this.f3695a.a();
            }
        } while (iA == i);
        this.f3698d = iA;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void c(List<Long> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof aby)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Long.valueOf(this.f3695a.d()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f3695a.d()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        aby abyVar = (aby) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    abyVar.a(this.f3695a.d());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            abyVar.a(this.f3695a.d());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final boolean c() throws IOException {
        if (this.f3695a.t() || this.f3696b == this.f3697c) {
            return false;
        }
        return this.f3695a.b(this.f3696b);
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final double d() throws IOException {
        a(1);
        return this.f3695a.b();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void d(List<Long> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof aby)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Long.valueOf(this.f3695a.e()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f3695a.e()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        aby abyVar = (aby) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    abyVar.a(this.f3695a.e());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            abyVar.a(this.f3695a.e());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final float e() throws IOException {
        a(5);
        return this.f3695a.c();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void e(List<Integer> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof abe)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Integer.valueOf(this.f3695a.f()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f3695a.f()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abe abeVar = (abe) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    abeVar.c(this.f3695a.f());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            abeVar.c(this.f3695a.f());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final long f() throws IOException {
        a(0);
        return this.f3695a.d();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void f(List<Long> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof aby)) {
            switch (this.f3696b & 7) {
                case 1:
                    break;
                case 2:
                    int iM = this.f3695a.m();
                    b(iM);
                    int iU = iM + this.f3695a.u();
                    do {
                        list.add(Long.valueOf(this.f3695a.g()));
                    } while (this.f3695a.u() < iU);
                    return;
                default:
                    throw abj.f();
            }
            do {
                list.add(Long.valueOf(this.f3695a.g()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        aby abyVar = (aby) list;
        switch (this.f3696b & 7) {
            case 1:
                break;
            case 2:
                int iM2 = this.f3695a.m();
                b(iM2);
                int iU2 = iM2 + this.f3695a.u();
                do {
                    abyVar.a(this.f3695a.g());
                } while (this.f3695a.u() < iU2);
                return;
            default:
                throw abj.f();
        }
        do {
            abyVar.a(this.f3695a.g());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final long g() throws IOException {
        a(0);
        return this.f3695a.e();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void g(List<Integer> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof abe)) {
            switch (this.f3696b & 7) {
                case 2:
                    int iM = this.f3695a.m();
                    c(iM);
                    int iU = iM + this.f3695a.u();
                    do {
                        list.add(Integer.valueOf(this.f3695a.h()));
                    } while (this.f3695a.u() < iU);
                    return;
                case 3:
                case 4:
                default:
                    throw abj.f();
                case 5:
                    break;
            }
            do {
                list.add(Integer.valueOf(this.f3695a.h()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abe abeVar = (abe) list;
        switch (this.f3696b & 7) {
            case 2:
                int iM2 = this.f3695a.m();
                c(iM2);
                int iU2 = iM2 + this.f3695a.u();
                do {
                    abeVar.c(this.f3695a.h());
                } while (this.f3695a.u() < iU2);
                return;
            case 3:
            case 4:
            default:
                throw abj.f();
            case 5:
                break;
        }
        do {
            abeVar.c(this.f3695a.h());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int h() throws IOException {
        a(0);
        return this.f3695a.f();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void h(List<Boolean> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof zt)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Boolean.valueOf(this.f3695a.i()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Boolean.valueOf(this.f3695a.i()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        zt ztVar = (zt) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    ztVar.a(this.f3695a.i());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            ztVar.a(this.f3695a.i());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final long i() throws IOException {
        a(1);
        return this.f3695a.g();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void i(List<String> list) throws IOException {
        a(list, false);
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int j() throws IOException {
        a(5);
        return this.f3695a.h();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void j(List<String> list) throws IOException {
        a(list, true);
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void k(List<zv> list) throws IOException {
        int iA;
        if ((this.f3696b & 7) != 2) {
            throw abj.f();
        }
        do {
            list.add(n());
            if (this.f3695a.t()) {
                return;
            } else {
                iA = this.f3695a.a();
            }
        } while (iA == this.f3696b);
        this.f3698d = iA;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final boolean k() throws IOException {
        a(0);
        return this.f3695a.i();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final String l() throws IOException {
        a(2);
        return this.f3695a.j();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void l(List<Integer> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof abe)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Integer.valueOf(this.f3695a.m()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f3695a.m()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abe abeVar = (abe) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    abeVar.c(this.f3695a.m());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            abeVar.c(this.f3695a.m());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final String m() throws IOException {
        a(2);
        return this.f3695a.k();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void m(List<Integer> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof abe)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Integer.valueOf(this.f3695a.n()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f3695a.n()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abe abeVar = (abe) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    abeVar.c(this.f3695a.n());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            abeVar.c(this.f3695a.n());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final zv n() throws IOException {
        a(2);
        return this.f3695a.l();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void n(List<Integer> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof abe)) {
            switch (this.f3696b & 7) {
                case 2:
                    int iM = this.f3695a.m();
                    c(iM);
                    int iU = iM + this.f3695a.u();
                    do {
                        list.add(Integer.valueOf(this.f3695a.o()));
                    } while (this.f3695a.u() < iU);
                    return;
                case 3:
                case 4:
                default:
                    throw abj.f();
                case 5:
                    break;
            }
            do {
                list.add(Integer.valueOf(this.f3695a.o()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abe abeVar = (abe) list;
        switch (this.f3696b & 7) {
            case 2:
                int iM2 = this.f3695a.m();
                c(iM2);
                int iU2 = iM2 + this.f3695a.u();
                do {
                    abeVar.c(this.f3695a.o());
                } while (this.f3695a.u() < iU2);
                return;
            case 3:
            case 4:
            default:
                throw abj.f();
            case 5:
                break;
        }
        do {
            abeVar.c(this.f3695a.o());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int o() throws IOException {
        a(0);
        return this.f3695a.m();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void o(List<Long> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof aby)) {
            switch (this.f3696b & 7) {
                case 1:
                    break;
                case 2:
                    int iM = this.f3695a.m();
                    b(iM);
                    int iU = iM + this.f3695a.u();
                    do {
                        list.add(Long.valueOf(this.f3695a.p()));
                    } while (this.f3695a.u() < iU);
                    return;
                default:
                    throw abj.f();
            }
            do {
                list.add(Long.valueOf(this.f3695a.p()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        aby abyVar = (aby) list;
        switch (this.f3696b & 7) {
            case 1:
                break;
            case 2:
                int iM2 = this.f3695a.m();
                b(iM2);
                int iU2 = iM2 + this.f3695a.u();
                do {
                    abyVar.a(this.f3695a.p());
                } while (this.f3695a.u() < iU2);
                return;
            default:
                throw abj.f();
        }
        do {
            abyVar.a(this.f3695a.p());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int p() throws IOException {
        a(0);
        return this.f3695a.n();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void p(List<Integer> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof abe)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Integer.valueOf(this.f3695a.q()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Integer.valueOf(this.f3695a.q()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        abe abeVar = (abe) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    abeVar.c(this.f3695a.q());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            abeVar.c(this.f3695a.q());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int q() throws IOException {
        a(5);
        return this.f3695a.o();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final void q(List<Long> list) throws IOException {
        int iA;
        int iA2;
        if (!(list instanceof aby)) {
            switch (this.f3696b & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw abj.f();
                case 2:
                    int iM = this.f3695a.m() + this.f3695a.u();
                    do {
                        list.add(Long.valueOf(this.f3695a.r()));
                    } while (this.f3695a.u() < iM);
                    d(iM);
                    return;
            }
            do {
                list.add(Long.valueOf(this.f3695a.r()));
                if (this.f3695a.t()) {
                    return;
                } else {
                    iA = this.f3695a.a();
                }
            } while (iA == this.f3696b);
            this.f3698d = iA;
            return;
        }
        aby abyVar = (aby) list;
        switch (this.f3696b & 7) {
            case 0:
                break;
            case 1:
            default:
                throw abj.f();
            case 2:
                int iM2 = this.f3695a.m() + this.f3695a.u();
                do {
                    abyVar.a(this.f3695a.r());
                } while (this.f3695a.u() < iM2);
                d(iM2);
                return;
        }
        do {
            abyVar.a(this.f3695a.r());
            if (this.f3695a.t()) {
                return;
            } else {
                iA2 = this.f3695a.a();
            }
        } while (iA2 == this.f3696b);
        this.f3698d = iA2;
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final long r() throws IOException {
        a(1);
        return this.f3695a.p();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final int s() throws IOException {
        a(0);
        return this.f3695a.q();
    }

    @Override // com.google.android.gms.internal.ads.adc
    public final long t() throws IOException {
        a(0);
        return this.f3695a.r();
    }
}
