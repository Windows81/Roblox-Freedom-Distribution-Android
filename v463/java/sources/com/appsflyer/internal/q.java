package com.appsflyer.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.appsflyer.AFLogger;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class q {
    q() {
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public static Map<String, String> m184(Context context) {
        HashMap map = new HashMap();
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = context.getResources().getConfiguration().screenLayout & 15;
            map.put("x_px", String.valueOf(displayMetrics.widthPixels));
            map.put("y_px", String.valueOf(displayMetrics.heightPixels));
            map.put("d_dpi", String.valueOf(displayMetrics.densityDpi));
            map.put("size", String.valueOf(i));
            map.put("xdp", String.valueOf(displayMetrics.xdpi));
            map.put("ydp", String.valueOf(displayMetrics.ydpi));
        } catch (Throwable th) {
            AFLogger.afErrorLog("Couldn't aggregate screen stats: ", th);
        }
        return map;
    }
}
