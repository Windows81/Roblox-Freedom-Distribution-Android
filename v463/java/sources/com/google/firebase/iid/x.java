package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static x f5284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.c.g<String, String> f5286c = new androidx.c.g<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Boolean f5287d = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Queue<Intent> f5285a = new ArrayDeque();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Queue<Intent> f5288e = new ArrayDeque();

    public static synchronized x a() {
        if (f5284b == null) {
            f5284b = new x();
        }
        return f5284b;
    }

    private x() {
    }

    public static PendingIntent a(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(context, i, b(context, "com.google.firebase.MESSAGING_EVENT", intent), 1073741824);
    }

    public static void a(Context context, Intent intent) {
        context.sendBroadcast(b(context, "com.google.firebase.INSTANCE_ID_EVENT", intent));
    }

    public static void b(Context context, Intent intent) {
        context.sendBroadcast(b(context, "com.google.firebase.MESSAGING_EVENT", intent));
    }

    private static Intent b(Context context, String str, Intent intent) {
        Intent intent2 = new Intent(context, (Class<?>) FirebaseInstanceIdReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return intent2;
    }

    public final Intent b() {
        return this.f5288e.poll();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int a(android.content.Context r4, java.lang.String r5, android.content.Intent r6) {
        /*
            r3 = this;
            int r0 = r5.hashCode()
            r1 = -842411455(0xffffffffcdc9d241, float:-4.2324995E8)
            r2 = 1
            if (r0 == r1) goto L1a
            r1 = 41532704(0x279bd20, float:1.8347907E-37)
            if (r0 == r1) goto L10
            goto L24
        L10:
            java.lang.String r0 = "com.google.firebase.MESSAGING_EVENT"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L24
            r0 = 1
            goto L25
        L1a:
            java.lang.String r0 = "com.google.firebase.INSTANCE_ID_EVENT"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L24
            r0 = 0
            goto L25
        L24:
            r0 = -1
        L25:
            if (r0 == 0) goto L4e
            if (r0 == r2) goto L48
            java.lang.String r4 = "Unknown service action: "
            java.lang.String r5 = java.lang.String.valueOf(r5)
            int r6 = r5.length()
            if (r6 == 0) goto L3a
            java.lang.String r4 = r4.concat(r5)
            goto L40
        L3a:
            java.lang.String r5 = new java.lang.String
            r5.<init>(r4)
            r4 = r5
        L40:
            java.lang.String r5 = "FirebaseInstanceId"
            android.util.Log.w(r5, r4)
            r4 = 500(0x1f4, float:7.0E-43)
            return r4
        L48:
            java.util.Queue<android.content.Intent> r0 = r3.f5288e
            r0.offer(r6)
            goto L53
        L4e:
            java.util.Queue<android.content.Intent> r0 = r3.f5285a
            r0.offer(r6)
        L53:
            android.content.Intent r6 = new android.content.Intent
            r6.<init>(r5)
            java.lang.String r5 = r4.getPackageName()
            r6.setPackage(r5)
            int r4 = r3.c(r4, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.x.a(android.content.Context, java.lang.String, android.content.Intent):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int c(android.content.Context r7, android.content.Intent r8) {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.x.c(android.content.Context, android.content.Intent):int");
    }
}
