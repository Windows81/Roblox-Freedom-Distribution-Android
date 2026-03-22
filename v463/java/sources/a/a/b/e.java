package a.a.b;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {
    public static boolean a(Context context) {
        return androidx.core.a.b.a(context, "android.permission.BLUETOOTH") == 0;
    }

    public static boolean b(Context context) {
        return androidx.core.a.b.a(context, "android.permission.ACCESS_WIFI_STATE") == 0;
    }

    public static boolean c(Context context) {
        return androidx.core.a.b.a(context, "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }
}
