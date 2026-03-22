package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.h;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f3860b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f3859a = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f3861c = false;

    public static e a() {
        return f3859a;
    }

    public void a(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        a(context, str, i, str2, str3, str4, i2, list, 0L);
    }

    public void a(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        List<String> list2 = list;
        if (f3860b == null) {
            f3860b = false;
        }
        if (f3860b.booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                String strValueOf = String.valueOf(str);
                Log.e("WakeLockTracker", strValueOf.length() != 0 ? "missing wakeLock key. ".concat(strValueOf) : new String("missing wakeLock key. "));
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (7 == i || 8 == i || 10 == i || 11 == i) {
                if (list2 != null && list.size() == 1 && "com.google.android.gms".equals(list2.get(0))) {
                    list2 = null;
                }
                List<String> list3 = list2;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int iA = h.a(context);
                String packageName = context.getPackageName();
                try {
                    context.startService(new Intent().setComponent(b.f3854a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(jCurrentTimeMillis, i, str2, i2, list3, str, jElapsedRealtime, iA, str3, "com.google.android.gms".equals(packageName) ? null : packageName, h.b(context), j, str4)));
                } catch (Exception e2) {
                    Log.wtf("WakeLockTracker", e2);
                }
            }
        }
    }
}
