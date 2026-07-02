package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class acr<T> implements add<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ack f3802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final adw<?, ?> f3803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final aas<?> f3805d;

    private acr(adw<?, ?> adwVar, aas<?> aasVar, ack ackVar) {
        this.f3803b = adwVar;
        this.f3804c = aasVar.a(ackVar);
        this.f3805d = aasVar;
        this.f3802a = ackVar;
    }

    static <T> acr<T> a(adw<?, ?> adwVar, aas<?> aasVar, ack ackVar) {
        return new acr<>(adwVar, aasVar, ackVar);
    }

    @Override // com.google.android.gms.internal.ads.add
    public final int a(T t) {
        int iHashCode = this.f3803b.b(t).hashCode();
        return this.f3804c ? (iHashCode * 53) + this.f3805d.a(t).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.ads.add
    public final T a() {
        return (T) this.f3802a.o().d();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0037 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[LOOP:0: B:45:0x0010->B:53:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.add
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(T r12, com.google.android.gms.internal.ads.adc r13, com.google.android.gms.internal.ads.aaq r14) throws java.io.IOException {
        /*
            r11 = this;
            r1 = 0
            r10 = 2147483647(0x7fffffff, float:NaN)
            com.google.android.gms.internal.ads.adw<?, ?> r4 = r11.f3803b
            com.google.android.gms.internal.ads.aas<?> r5 = r11.f3805d
            java.lang.Object r6 = r4.c(r12)
            com.google.android.gms.internal.ads.aav r7 = r5.b(r12)
        L10:
            int r0 = r13.a()     // Catch: java.lang.Throwable -> L6c
            if (r0 != r10) goto L1a
            r4.b(r12, r6)
        L19:
            return
        L1a:
            int r0 = r13.b()     // Catch: java.lang.Throwable -> L6c
            r2 = 11
            if (r0 == r2) goto L45
            r2 = r0 & 7
            r3 = 2
            if (r2 != r3) goto L40
            com.google.android.gms.internal.ads.ack r2 = r11.f3802a     // Catch: java.lang.Throwable -> L6c
            int r0 = r0 >>> 3
            java.lang.Object r0 = r5.a(r14, r2, r0)     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L3b
            r5.a(r13, r0, r14, r7)     // Catch: java.lang.Throwable -> L6c
        L34:
            r0 = 1
        L35:
            if (r0 != 0) goto L10
            r4.b(r12, r6)
            goto L19
        L3b:
            boolean r0 = r4.a(r6, r13)     // Catch: java.lang.Throwable -> L6c
            goto L35
        L40:
            boolean r0 = r13.c()     // Catch: java.lang.Throwable -> L6c
            goto L35
        L45:
            r0 = 0
            r2 = r1
            r3 = r0
            r0 = r1
        L49:
            int r8 = r13.a()     // Catch: java.lang.Throwable -> L6c
            if (r8 == r10) goto L7c
            int r8 = r13.b()     // Catch: java.lang.Throwable -> L6c
            r9 = 16
            if (r8 != r9) goto L62
            int r3 = r13.o()     // Catch: java.lang.Throwable -> L6c
            com.google.android.gms.internal.ads.ack r0 = r11.f3802a     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r0 = r5.a(r14, r0, r3)     // Catch: java.lang.Throwable -> L6c
            goto L49
        L62:
            r9 = 26
            if (r8 != r9) goto L76
            if (r0 == 0) goto L71
            r5.a(r13, r0, r14, r7)     // Catch: java.lang.Throwable -> L6c
            goto L49
        L6c:
            r0 = move-exception
            r4.b(r12, r6)
            throw r0
        L71:
            com.google.android.gms.internal.ads.zv r2 = r13.n()     // Catch: java.lang.Throwable -> L6c
            goto L49
        L76:
            boolean r8 = r13.c()     // Catch: java.lang.Throwable -> L6c
            if (r8 != 0) goto L49
        L7c:
            int r8 = r13.b()     // Catch: java.lang.Throwable -> L6c
            r9 = 12
            if (r8 == r9) goto L89
            com.google.android.gms.internal.ads.abj r0 = com.google.android.gms.internal.ads.abj.e()     // Catch: java.lang.Throwable -> L6c
            throw r0     // Catch: java.lang.Throwable -> L6c
        L89:
            if (r2 == 0) goto L34
            if (r0 == 0) goto L91
            r5.a(r2, r0, r14, r7)     // Catch: java.lang.Throwable -> L6c
            goto L34
        L91:
            r4.a(r6, r3, r2)     // Catch: java.lang.Throwable -> L6c
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.acr.a(java.lang.Object, com.google.android.gms.internal.ads.adc, com.google.android.gms.internal.ads.aaq):void");
    }

    @Override // com.google.android.gms.internal.ads.add
    public final void a(T t, aeq aeqVar) throws IOException {
        Iterator itE = this.f3805d.a(t).e();
        while (itE.hasNext()) {
            Map.Entry entry = (Map.Entry) itE.next();
            aax aaxVar = (aax) entry.getKey();
            if (aaxVar.c() != aep.MESSAGE || aaxVar.d() || aaxVar.e()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof abo) {
                aeqVar.a(aaxVar.a(), (Object) ((abo) entry).a().c());
            } else {
                aeqVar.a(aaxVar.a(), entry.getValue());
            }
        }
        adw<?, ?> adwVar = this.f3803b;
        adwVar.b(adwVar.b(t), aeqVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0043. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0069 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.add
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.ads.zs r14) throws java.io.IOException {
        /*
            r9 = this;
            r7 = 2
            r0 = r10
            com.google.android.gms.internal.ads.abd r0 = (com.google.android.gms.internal.ads.abd) r0
            com.google.android.gms.internal.ads.adx r4 = r0.zzdtt
            com.google.android.gms.internal.ads.adx r0 = com.google.android.gms.internal.ads.adx.a()
            if (r4 != r0) goto L14
            com.google.android.gms.internal.ads.adx r4 = com.google.android.gms.internal.ads.adx.b()
            com.google.android.gms.internal.ads.abd r10 = (com.google.android.gms.internal.ads.abd) r10
            r10.zzdtt = r4
        L14:
            if (r12 >= r13) goto L74
            int r2 = com.google.android.gms.internal.ads.zr.a(r11, r12, r14)
            int r0 = r14.f5744a
            r1 = 11
            if (r0 == r1) goto L31
            r1 = r0 & 7
            if (r1 != r7) goto L2c
            r1 = r11
            r3 = r13
            r5 = r14
            int r12 = com.google.android.gms.internal.ads.zr.a(r0, r1, r2, r3, r4, r5)
            goto L14
        L2c:
            int r12 = com.google.android.gms.internal.ads.zr.a(r0, r11, r2, r13, r14)
            goto L14
        L31:
            r1 = 0
            r0 = 0
            r8 = r0
            r0 = r2
            r2 = r1
            r1 = r8
        L37:
            if (r0 >= r13) goto L69
            int r0 = com.google.android.gms.internal.ads.zr.a(r11, r0, r14)
            int r3 = r14.f5744a
            int r5 = r3 >>> 3
            r6 = r3 & 7
            switch(r5) {
                case 2: goto L4f;
                case 3: goto L5b;
                default: goto L46;
            }
        L46:
            r5 = 12
            if (r3 == r5) goto L69
            int r0 = com.google.android.gms.internal.ads.zr.a(r3, r11, r0, r13, r14)
            goto L37
        L4f:
            if (r6 != 0) goto L46
            int r2 = com.google.android.gms.internal.ads.zr.a(r11, r0, r14)
            int r0 = r14.f5744a
            r8 = r0
            r0 = r2
            r2 = r8
            goto L37
        L5b:
            if (r6 != r7) goto L46
            int r1 = com.google.android.gms.internal.ads.zr.e(r11, r0, r14)
            java.lang.Object r0 = r14.f5746c
            com.google.android.gms.internal.ads.zv r0 = (com.google.android.gms.internal.ads.zv) r0
            r8 = r0
            r0 = r1
            r1 = r8
            goto L37
        L69:
            if (r1 == 0) goto L72
            int r2 = r2 << 3
            r2 = r2 | 2
            r4.a(r2, r1)
        L72:
            r12 = r0
            goto L14
        L74:
            if (r12 == r13) goto L7b
            com.google.android.gms.internal.ads.abj r0 = com.google.android.gms.internal.ads.abj.g()
            throw r0
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.acr.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zs):void");
    }

    @Override // com.google.android.gms.internal.ads.add
    public final boolean a(T t, T t2) {
        if (!this.f3803b.b(t).equals(this.f3803b.b(t2))) {
            return false;
        }
        if (this.f3804c) {
            return this.f3805d.a(t).equals(this.f3805d.a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.add
    public final int b(T t) {
        adw<?, ?> adwVar = this.f3803b;
        int iE = adwVar.e(adwVar.b(t)) + 0;
        return this.f3804c ? iE + this.f3805d.a(t).i() : iE;
    }

    @Override // com.google.android.gms.internal.ads.add
    public final void b(T t, T t2) {
        adf.a(this.f3803b, t, t2);
        if (this.f3804c) {
            adf.a(this.f3805d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.add
    public final void c(T t) {
        this.f3803b.d(t);
        this.f3805d.c(t);
    }

    @Override // com.google.android.gms.internal.ads.add
    public final boolean d(T t) {
        return this.f3805d.a(t).g();
    }
}
