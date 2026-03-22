package android.support.v4.a;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@Deprecated
public abstract class i extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f623a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f624b = 1;

    public static ComponentName a(Context context, Intent intent) {
        synchronized (f623a) {
            int i = f624b;
            f624b++;
            if (f624b <= 0) {
                f624b = 1;
            }
            intent.putExtra("android.support.content.wakelockid", i);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:" + componentNameStartService.flattenToShortString());
            wakeLockNewWakeLock.setReferenceCounted(false);
            wakeLockNewWakeLock.acquire(60000L);
            f623a.put(i, wakeLockNewWakeLock);
            return componentNameStartService;
        }
    }

    public static boolean a(Intent intent) {
        boolean z = false;
        int intExtra = intent.getIntExtra("android.support.content.wakelockid", 0);
        if (intExtra != 0) {
            synchronized (f623a) {
                PowerManager.WakeLock wakeLock = f623a.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    f623a.remove(intExtra);
                    z = true;
                } else {
                    Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
                    z = true;
                }
            }
        }
        return z;
    }
}
