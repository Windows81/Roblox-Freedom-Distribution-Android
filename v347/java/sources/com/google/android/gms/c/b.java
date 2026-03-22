package com.google.android.gms.c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.util.r;
import com.google.android.gms.common.util.u;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@ThreadSafe
public class b {
    private static ScheduledExecutorService m;
    private static a n = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PowerManager.WakeLock f3297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WorkSource f3298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3300d;
    private final String e;
    private final String f;
    private final String g;
    private final Context h;
    private boolean i;
    private final Map<String, Integer[]> j;
    private int k;
    private AtomicInteger l;

    public interface a {
        boolean a();
    }

    public b(Context context, int i, @Nonnull String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public b(Context context, int i, @Nonnull String str, @Nullable String str2, @Nonnull String str3) {
        this(context, i, str, str2, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public b(Context context, int i, @Nonnull String str, @Nullable String str2, @Nonnull String str3, @Nullable String str4) {
        this.i = true;
        this.j = new HashMap();
        this.l = new AtomicInteger(0);
        w.a(str, (Object) "Wake lock name can NOT be empty");
        this.f3300d = i;
        this.f = str2;
        this.g = str4;
        this.h = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.e = str;
        } else {
            String strValueOf = String.valueOf("*gcore*:");
            String strValueOf2 = String.valueOf(str);
            this.e = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        }
        this.f3297a = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (u.a(context)) {
            str3 = r.b(str3) ? context.getPackageName() : str3;
            if (!n.a() || str3 == null || str4 == null) {
                this.f3298b = u.a(context, str3);
            } else {
                Log.d("WakeLock", new StringBuilder(String.valueOf(str3).length() + 42 + String.valueOf(str4).length()).append("Using experimental Pi WorkSource chains: ").append(str3).append(",").append(str4).toString());
                this.f3299c = str3;
                this.f3298b = u.a(context, str3, str4);
            }
            a(this.f3298b);
        }
        if (m == null) {
            m = com.google.android.gms.common.b.a.a().a();
        }
    }

    private final String a(String str) {
        return (!this.i || TextUtils.isEmpty(str)) ? this.f : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i) {
        if (this.f3297a.isHeld()) {
            try {
                if (Build.VERSION.SDK_INT < 21 || i <= 0) {
                    this.f3297a.release();
                } else {
                    this.f3297a.release(i);
                }
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                Log.e("WakeLock", String.valueOf(this.e).concat(" was already released!"), e);
            }
        }
    }

    private final void a(String str, int i) {
        if (this.l.decrementAndGet() < 0) {
            Log.e("WakeLock", "release without a matched acquire!");
        }
        b(str, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0044 A[Catch: all -> 0x00b9, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000f, B:11:0x0023, B:13:0x0027, B:15:0x0031, B:21:0x004c, B:22:0x006d, B:35:0x00a9, B:17:0x0044, B:19:0x0048, B:8:0x0013, B:10:0x001b), top: B:40:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004c A[Catch: all -> 0x00b9, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000f, B:11:0x0023, B:13:0x0027, B:15:0x0031, B:21:0x004c, B:22:0x006d, B:35:0x00a9, B:17:0x0044, B:19:0x0048, B:8:0x0013, B:10:0x001b), top: B:40:0x0007 }] */
    @android.annotation.SuppressLint({"WakelockTimeout"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void a(java.lang.String r13, long r14) {
        /*
            r12 = this;
            r1 = 1
            r2 = 0
            java.lang.String r6 = r12.a(r13)
            monitor-enter(r12)
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r12.j     // Catch: java.lang.Throwable -> Lb9
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lb9
            if (r0 == 0) goto L13
            int r0 = r12.k     // Catch: java.lang.Throwable -> Lb9
            if (r0 <= 0) goto L23
        L13:
            android.os.PowerManager$WakeLock r0 = r12.f3297a     // Catch: java.lang.Throwable -> Lb9
            boolean r0 = r0.isHeld()     // Catch: java.lang.Throwable -> Lb9
            if (r0 != 0) goto L23
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r12.j     // Catch: java.lang.Throwable -> Lb9
            r0.clear()     // Catch: java.lang.Throwable -> Lb9
            r0 = 0
            r12.k = r0     // Catch: java.lang.Throwable -> Lb9
        L23:
            boolean r0 = r12.i     // Catch: java.lang.Throwable -> Lb9
            if (r0 == 0) goto L44
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r12.j     // Catch: java.lang.Throwable -> Lb9
            java.lang.Object r0 = r0.get(r6)     // Catch: java.lang.Throwable -> Lb9
            java.lang.Integer[] r0 = (java.lang.Integer[]) r0     // Catch: java.lang.Throwable -> Lb9
            if (r0 != 0) goto La7
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r12.j     // Catch: java.lang.Throwable -> Lb9
            r2 = 1
            java.lang.Integer[] r2 = new java.lang.Integer[r2]     // Catch: java.lang.Throwable -> Lb9
            r3 = 0
            r4 = 1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> Lb9
            r2[r3] = r4     // Catch: java.lang.Throwable -> Lb9
            r0.put(r6, r2)     // Catch: java.lang.Throwable -> Lb9
            r0 = r1
        L42:
            if (r0 != 0) goto L4c
        L44:
            boolean r0 = r12.i     // Catch: java.lang.Throwable -> Lb9
            if (r0 != 0) goto L6d
            int r0 = r12.k     // Catch: java.lang.Throwable -> Lb9
            if (r0 != 0) goto L6d
        L4c:
            com.google.android.gms.common.stats.e r1 = com.google.android.gms.common.stats.e.a()     // Catch: java.lang.Throwable -> Lb9
            android.content.Context r2 = r12.h     // Catch: java.lang.Throwable -> Lb9
            android.os.PowerManager$WakeLock r0 = r12.f3297a     // Catch: java.lang.Throwable -> Lb9
            java.lang.String r3 = com.google.android.gms.common.stats.c.a(r0, r6)     // Catch: java.lang.Throwable -> Lb9
            r4 = 7
            java.lang.String r5 = r12.e     // Catch: java.lang.Throwable -> Lb9
            java.lang.String r7 = r12.g     // Catch: java.lang.Throwable -> Lb9
            int r8 = r12.f3300d     // Catch: java.lang.Throwable -> Lb9
            java.util.List r9 = r12.c()     // Catch: java.lang.Throwable -> Lb9
            r10 = r14
            r1.a(r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lb9
            int r0 = r12.k     // Catch: java.lang.Throwable -> Lb9
            int r0 = r0 + 1
            r12.k = r0     // Catch: java.lang.Throwable -> Lb9
        L6d:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lb9
            android.os.PowerManager$WakeLock r0 = r12.f3297a
            r0.acquire()
            r0 = 0
            int r0 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r0 <= 0) goto La6
            java.util.concurrent.ScheduledExecutorService r0 = com.google.android.gms.c.b.m
            com.google.android.gms.c.d r1 = new com.google.android.gms.c.d
            r1.<init>(r12)
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS
            r0.schedule(r1, r14, r2)
            boolean r0 = com.google.android.gms.common.util.n.b()
            if (r0 != 0) goto La6
            boolean r0 = r12.i
            if (r0 == 0) goto La6
            java.lang.String r1 = "WakeLock"
            java.lang.String r2 = "Do not acquire with timeout on reference counted wakeLocks before ICS. wakelock: "
            java.lang.String r0 = r12.e
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r3 = r0.length()
            if (r3 == 0) goto Lbc
            java.lang.String r0 = r2.concat(r0)
        La3:
            android.util.Log.wtf(r1, r0)
        La6:
            return
        La7:
            r1 = 0
            r3 = 0
            r3 = r0[r3]     // Catch: java.lang.Throwable -> Lb9
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> Lb9
            int r3 = r3 + 1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> Lb9
            r0[r1] = r3     // Catch: java.lang.Throwable -> Lb9
            r0 = r2
            goto L42
        Lb9:
            r0 = move-exception
            monitor-exit(r12)     // Catch: java.lang.Throwable -> Lb9
            throw r0
        Lbc:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r2)
            goto La3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.b.a(java.lang.String, long):void");
    }

    private final void b(WorkSource workSource) {
        try {
            this.f3297a.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
            Log.wtf("WakeLock", e.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0018 A[Catch: all -> 0x0068, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:14:0x0020, B:15:0x0041, B:19:0x0047, B:21:0x004f, B:22:0x0056, B:10:0x0018, B:12:0x001c), top: B:26:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0020 A[Catch: all -> 0x0068, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:14:0x0020, B:15:0x0041, B:19:0x0047, B:21:0x004f, B:22:0x0056, B:10:0x0018, B:12:0x001c), top: B:26:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void b(java.lang.String r10, int r11) {
        /*
            r9 = this;
            r2 = 1
            r1 = 0
            java.lang.String r5 = r9.a(r10)
            monitor-enter(r9)
            boolean r0 = r9.i     // Catch: java.lang.Throwable -> L68
            if (r0 == 0) goto L18
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r9.j     // Catch: java.lang.Throwable -> L68
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.Throwable -> L68
            java.lang.Integer[] r0 = (java.lang.Integer[]) r0     // Catch: java.lang.Throwable -> L68
            if (r0 != 0) goto L46
            r0 = r1
        L16:
            if (r0 != 0) goto L20
        L18:
            boolean r0 = r9.i     // Catch: java.lang.Throwable -> L68
            if (r0 != 0) goto L41
            int r0 = r9.k     // Catch: java.lang.Throwable -> L68
            if (r0 != r2) goto L41
        L20:
            com.google.android.gms.common.stats.e r0 = com.google.android.gms.common.stats.e.a()     // Catch: java.lang.Throwable -> L68
            android.content.Context r1 = r9.h     // Catch: java.lang.Throwable -> L68
            android.os.PowerManager$WakeLock r2 = r9.f3297a     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = com.google.android.gms.common.stats.c.a(r2, r5)     // Catch: java.lang.Throwable -> L68
            r3 = 8
            java.lang.String r4 = r9.e     // Catch: java.lang.Throwable -> L68
            java.lang.String r6 = r9.g     // Catch: java.lang.Throwable -> L68
            int r7 = r9.f3300d     // Catch: java.lang.Throwable -> L68
            java.util.List r8 = r9.c()     // Catch: java.lang.Throwable -> L68
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L68
            int r0 = r9.k     // Catch: java.lang.Throwable -> L68
            int r0 = r0 + (-1)
            r9.k = r0     // Catch: java.lang.Throwable -> L68
        L41:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L68
            r9.a(r11)
            return
        L46:
            r3 = 0
            r3 = r0[r3]     // Catch: java.lang.Throwable -> L68
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L68
            if (r3 != r2) goto L56
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r9.j     // Catch: java.lang.Throwable -> L68
            r0.remove(r5)     // Catch: java.lang.Throwable -> L68
            r0 = r2
            goto L16
        L56:
            r3 = 0
            r4 = 0
            r4 = r0[r4]     // Catch: java.lang.Throwable -> L68
            int r4 = r4.intValue()     // Catch: java.lang.Throwable -> L68
            int r4 = r4 + (-1)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L68
            r0[r3] = r4     // Catch: java.lang.Throwable -> L68
            r0 = r1
            goto L16
        L68:
            r0 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L68
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.b.b(java.lang.String, int):void");
    }

    private final List<String> c() {
        List<String> listB = u.b(this.f3298b);
        if (this.f3299c == null) {
            return listB;
        }
        ArrayList arrayList = new ArrayList(listB);
        arrayList.add(this.f3299c);
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
        if (workSource == null || !u.a(this.h)) {
            return;
        }
        if (this.f3298b != null) {
            this.f3298b.add(workSource);
        } else {
            this.f3298b = workSource;
        }
        b(this.f3298b);
    }

    public void a(boolean z) {
        this.f3297a.setReferenceCounted(z);
        this.i = z;
    }

    public boolean b() {
        return this.f3297a.isHeld();
    }
}
