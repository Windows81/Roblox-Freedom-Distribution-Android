package com.google.android.gms.e;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.util.o;
import com.google.android.gms.common.util.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    private static ScheduledExecutorService m;
    private static InterfaceC0102a n = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PowerManager.WakeLock f3915a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WorkSource f3916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3917c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3918d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3919e;
    private final String f;
    private final String g;
    private final Context h;
    private boolean i;
    private final Map<String, Integer[]> j;
    private int k;
    private AtomicInteger l;

    /* JADX INFO: renamed from: com.google.android.gms.e.a$a, reason: collision with other inner class name */
    public interface InterfaceC0102a {
        boolean a();
    }

    public a(Context context, int i, @Nonnull String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    public a(Context context, int i, @Nonnull String str, @Nullable String str2, @Nonnull String str3) {
        this(context, i, str, str2, str3, null);
    }

    public a(Context context, int i, @Nonnull String str, @Nullable String str2, @Nonnull String str3, @Nullable String str4) {
        WorkSource workSourceA;
        this.i = true;
        this.j = new HashMap();
        this.l = new AtomicInteger(0);
        aa.a(str, (Object) "Wake lock name can NOT be empty");
        this.f3918d = i;
        this.f = str2;
        this.g = str4;
        this.h = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f3919e = str;
        } else {
            String strValueOf = String.valueOf(str);
            this.f3919e = strValueOf.length() != 0 ? "*gcore*:".concat(strValueOf) : new String("*gcore*:");
        }
        this.f3915a = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (r.a(context)) {
            str3 = o.a(str3) ? context.getPackageName() : str3;
            if (!n.a() || str3 == null || str4 == null) {
                workSourceA = r.a(context, str3);
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 42 + String.valueOf(str4).length());
                sb.append("Using experimental Pi WorkSource chains: ");
                sb.append(str3);
                sb.append(",");
                sb.append(str4);
                Log.d("WakeLock", sb.toString());
                this.f3917c = str3;
                workSourceA = r.a(context, str3, str4);
            }
            this.f3916b = workSourceA;
            a(this.f3916b);
        }
        if (m == null) {
            m = com.google.android.gms.common.c.a.a().a();
        }
    }

    private final String a(String str) {
        return (!this.i || TextUtils.isEmpty(str)) ? this.f : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i) {
        if (this.f3915a.isHeld()) {
            try {
                if (Build.VERSION.SDK_INT < 21 || i <= 0) {
                    this.f3915a.release();
                } else {
                    this.f3915a.release(i);
                }
            } catch (RuntimeException e2) {
                if (!e2.getClass().equals(RuntimeException.class)) {
                    throw e2;
                }
                Log.e("WakeLock", String.valueOf(this.f3919e).concat(" was already released!"), e2);
            }
        }
    }

    private final void a(String str, int i) {
        if (this.l.decrementAndGet() < 0) {
            Log.e("WakeLock", "release without a matched acquire!");
        }
        b(str, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e A[Catch: all -> 0x00b7, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000e, B:11:0x0021, B:13:0x0026, B:15:0x0030, B:22:0x0056, B:23:0x0076, B:16:0x003f, B:18:0x004e, B:20:0x0052, B:8:0x0012, B:10:0x001a), top: B:39:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0056 A[Catch: all -> 0x00b7, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000e, B:11:0x0021, B:13:0x0026, B:15:0x0030, B:22:0x0056, B:23:0x0076, B:16:0x003f, B:18:0x004e, B:20:0x0052, B:8:0x0012, B:10:0x001a), top: B:39:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void a(java.lang.String r13, long r14) {
        /*
            r12 = this;
            java.lang.String r5 = r12.a(r13)
            monitor-enter(r12)
            java.util.Map<java.lang.String, java.lang.Integer[]> r13 = r12.j     // Catch: java.lang.Throwable -> Lb7
            boolean r13 = r13.isEmpty()     // Catch: java.lang.Throwable -> Lb7
            r0 = 0
            if (r13 == 0) goto L12
            int r13 = r12.k     // Catch: java.lang.Throwable -> Lb7
            if (r13 <= 0) goto L21
        L12:
            android.os.PowerManager$WakeLock r13 = r12.f3915a     // Catch: java.lang.Throwable -> Lb7
            boolean r13 = r13.isHeld()     // Catch: java.lang.Throwable -> Lb7
            if (r13 != 0) goto L21
            java.util.Map<java.lang.String, java.lang.Integer[]> r13 = r12.j     // Catch: java.lang.Throwable -> Lb7
            r13.clear()     // Catch: java.lang.Throwable -> Lb7
            r12.k = r0     // Catch: java.lang.Throwable -> Lb7
        L21:
            boolean r13 = r12.i     // Catch: java.lang.Throwable -> Lb7
            r11 = 1
            if (r13 == 0) goto L4e
            java.util.Map<java.lang.String, java.lang.Integer[]> r13 = r12.j     // Catch: java.lang.Throwable -> Lb7
            java.lang.Object r13 = r13.get(r5)     // Catch: java.lang.Throwable -> Lb7
            java.lang.Integer[] r13 = (java.lang.Integer[]) r13     // Catch: java.lang.Throwable -> Lb7
            if (r13 != 0) goto L3f
            java.util.Map<java.lang.String, java.lang.Integer[]> r13 = r12.j     // Catch: java.lang.Throwable -> Lb7
            java.lang.Integer[] r1 = new java.lang.Integer[r11]     // Catch: java.lang.Throwable -> Lb7
            java.lang.Integer r2 = java.lang.Integer.valueOf(r11)     // Catch: java.lang.Throwable -> Lb7
            r1[r0] = r2     // Catch: java.lang.Throwable -> Lb7
            r13.put(r5, r1)     // Catch: java.lang.Throwable -> Lb7
            r0 = 1
            goto L4c
        L3f:
            r1 = r13[r0]     // Catch: java.lang.Throwable -> Lb7
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> Lb7
            int r1 = r1 + r11
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> Lb7
            r13[r0] = r1     // Catch: java.lang.Throwable -> Lb7
        L4c:
            if (r0 != 0) goto L56
        L4e:
            boolean r13 = r12.i     // Catch: java.lang.Throwable -> Lb7
            if (r13 != 0) goto L76
            int r13 = r12.k     // Catch: java.lang.Throwable -> Lb7
            if (r13 != 0) goto L76
        L56:
            com.google.android.gms.common.stats.e r0 = com.google.android.gms.common.stats.e.a()     // Catch: java.lang.Throwable -> Lb7
            android.content.Context r1 = r12.h     // Catch: java.lang.Throwable -> Lb7
            android.os.PowerManager$WakeLock r13 = r12.f3915a     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r2 = com.google.android.gms.common.stats.c.a(r13, r5)     // Catch: java.lang.Throwable -> Lb7
            r3 = 7
            java.lang.String r4 = r12.f3919e     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r6 = r12.g     // Catch: java.lang.Throwable -> Lb7
            int r7 = r12.f3918d     // Catch: java.lang.Throwable -> Lb7
            java.util.List r8 = r12.c()     // Catch: java.lang.Throwable -> Lb7
            r9 = r14
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> Lb7
            int r13 = r12.k     // Catch: java.lang.Throwable -> Lb7
            int r13 = r13 + r11
            r12.k = r13     // Catch: java.lang.Throwable -> Lb7
        L76:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lb7
            android.os.PowerManager$WakeLock r13 = r12.f3915a
            r13.acquire()
            r0 = 0
            int r13 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r13 <= 0) goto Lb6
            java.util.concurrent.ScheduledExecutorService r13 = com.google.android.gms.e.a.m
            com.google.android.gms.e.c r0 = new com.google.android.gms.e.c
            r0.<init>(r12)
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS
            r13.schedule(r0, r14, r1)
            boolean r13 = com.google.android.gms.common.util.m.a()
            if (r13 != 0) goto Lb6
            boolean r13 = r12.i
            if (r13 == 0) goto Lb6
            java.lang.String r13 = "WakeLock"
            java.lang.String r14 = "Do not acquire with timeout on reference counted wakeLocks before ICS. wakelock: "
            java.lang.String r15 = r12.f3919e
            java.lang.String r15 = java.lang.String.valueOf(r15)
            int r0 = r15.length()
            if (r0 == 0) goto Lad
            java.lang.String r14 = r14.concat(r15)
            goto Lb3
        Lad:
            java.lang.String r15 = new java.lang.String
            r15.<init>(r14)
            r14 = r15
        Lb3:
            android.util.Log.wtf(r13, r14)
        Lb6:
            return
        Lb7:
            r13 = move-exception
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lb7
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.e.a.a(java.lang.String, long):void");
    }

    private final void b(WorkSource workSource) {
        try {
            this.f3915a.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e2) {
            Log.wtf("WakeLock", e2.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[Catch: all -> 0x0061, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000a, B:18:0x003c, B:19:0x005c, B:9:0x0016, B:11:0x001e, B:12:0x0025, B:14:0x0034, B:16:0x0038), top: B:25:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[Catch: all -> 0x0061, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000a, B:18:0x003c, B:19:0x005c, B:9:0x0016, B:11:0x001e, B:12:0x0025, B:14:0x0034, B:16:0x0038), top: B:25:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void b(java.lang.String r11, int r12) {
        /*
            r10 = this;
            java.lang.String r5 = r10.a(r11)
            monitor-enter(r10)
            boolean r11 = r10.i     // Catch: java.lang.Throwable -> L61
            r9 = 1
            if (r11 == 0) goto L34
            java.util.Map<java.lang.String, java.lang.Integer[]> r11 = r10.j     // Catch: java.lang.Throwable -> L61
            java.lang.Object r11 = r11.get(r5)     // Catch: java.lang.Throwable -> L61
            java.lang.Integer[] r11 = (java.lang.Integer[]) r11     // Catch: java.lang.Throwable -> L61
            r0 = 0
            if (r11 != 0) goto L16
            goto L32
        L16:
            r1 = r11[r0]     // Catch: java.lang.Throwable -> L61
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L61
            if (r1 != r9) goto L25
            java.util.Map<java.lang.String, java.lang.Integer[]> r11 = r10.j     // Catch: java.lang.Throwable -> L61
            r11.remove(r5)     // Catch: java.lang.Throwable -> L61
            r0 = 1
            goto L32
        L25:
            r1 = r11[r0]     // Catch: java.lang.Throwable -> L61
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L61
            int r1 = r1 - r9
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L61
            r11[r0] = r1     // Catch: java.lang.Throwable -> L61
        L32:
            if (r0 != 0) goto L3c
        L34:
            boolean r11 = r10.i     // Catch: java.lang.Throwable -> L61
            if (r11 != 0) goto L5c
            int r11 = r10.k     // Catch: java.lang.Throwable -> L61
            if (r11 != r9) goto L5c
        L3c:
            com.google.android.gms.common.stats.e r0 = com.google.android.gms.common.stats.e.a()     // Catch: java.lang.Throwable -> L61
            android.content.Context r1 = r10.h     // Catch: java.lang.Throwable -> L61
            android.os.PowerManager$WakeLock r11 = r10.f3915a     // Catch: java.lang.Throwable -> L61
            java.lang.String r2 = com.google.android.gms.common.stats.c.a(r11, r5)     // Catch: java.lang.Throwable -> L61
            r3 = 8
            java.lang.String r4 = r10.f3919e     // Catch: java.lang.Throwable -> L61
            java.lang.String r6 = r10.g     // Catch: java.lang.Throwable -> L61
            int r7 = r10.f3918d     // Catch: java.lang.Throwable -> L61
            java.util.List r8 = r10.c()     // Catch: java.lang.Throwable -> L61
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L61
            int r11 = r10.k     // Catch: java.lang.Throwable -> L61
            int r11 = r11 - r9
            r10.k = r11     // Catch: java.lang.Throwable -> L61
        L5c:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L61
            r10.a(r12)
            return
        L61:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L61
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.e.a.b(java.lang.String, int):void");
    }

    private final List<String> c() {
        List<String> listB = r.b(this.f3916b);
        if (this.f3917c == null) {
            return listB;
        }
        ArrayList arrayList = new ArrayList(listB);
        arrayList.add(this.f3917c);
        return arrayList;
    }

    public void a() {
        a((String) null, 0);
    }

    public void a(long j) {
        this.l.incrementAndGet();
        a((String) null, j);
    }

    public void a(WorkSource workSource) {
        if (workSource == null || !r.a(this.h)) {
            return;
        }
        WorkSource workSource2 = this.f3916b;
        if (workSource2 != null) {
            workSource2.add(workSource);
        } else {
            this.f3916b = workSource;
        }
        b(this.f3916b);
    }

    public void a(boolean z) {
        this.f3915a.setReferenceCounted(z);
        this.i = z;
    }

    public boolean b() {
        return this.f3915a.isHeld();
    }
}
