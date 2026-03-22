package androidx.legacy.a;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@Deprecated
public abstract class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f2091a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f2092b = 1;

    public static ComponentName a_(Context context, Intent intent) {
        synchronized (f2091a) {
            int i = f2092b;
            int i2 = f2092b + 1;
            f2092b = i2;
            if (i2 <= 0) {
                f2092b = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + componentNameStartService.flattenToShortString());
            wakeLockNewWakeLock.setReferenceCounted(false);
            wakeLockNewWakeLock.acquire(60000L);
            f2091a.put(i, wakeLockNewWakeLock);
            return componentNameStartService;
        }
    }

    public static boolean a(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        synchronized (f2091a) {
            PowerManager.WakeLock wakeLock = f2091a.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                f2091a.remove(intExtra);
                return true;
            }
            Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
            return true;
        }
    }
}
