package com.roblox.platform.a;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.roblox.platform.e;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public static int a() throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th;
        StringBuilder sb;
        String line = null;
        try {
            randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
            try {
                try {
                    line = randomAccessFile.readLine();
                    try {
                        randomAccessFile.close();
                    } catch (IOException e2) {
                        e = e2;
                        sb = new StringBuilder();
                        sb.append("File close failed: ");
                        sb.append(e.toString());
                        e.e("rbx.platform.utils", sb.toString());
                    }
                } catch (IOException e3) {
                    e = e3;
                    e.e("rbx.platform.utils", "File read failed: " + e.toString());
                    try {
                        randomAccessFile.close();
                    } catch (IOException e4) {
                        e = e4;
                        sb = new StringBuilder();
                        sb.append("File close failed: ");
                        sb.append(e.toString());
                        e.e("rbx.platform.utils", sb.toString());
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    randomAccessFile.close();
                } catch (IOException e5) {
                    e.e("rbx.platform.utils", "File close failed: " + e5.toString());
                }
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            randomAccessFile = null;
        } catch (Throwable th3) {
            randomAccessFile = null;
            th = th3;
            randomAccessFile.close();
            throw th;
        }
        if (line == null) {
            return 0;
        }
        String[] strArrSplit = line.split("\\s+");
        if (strArrSplit.length < 2) {
            return 0;
        }
        long j = 0;
        try {
            j = Long.parseLong(strArrSplit[1]) / 1024;
        } catch (NumberFormatException unused) {
            e.e("rbx.platform.utils", "NumberFormatException getDeviceTotalMegabytes()");
        }
        return (int) j;
    }

    public static Point a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static Point b(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point();
        point.x = (int) displayMetrics.xdpi;
        point.y = (int) displayMetrics.ydpi;
        return point;
    }

    public static Point c(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point();
        point.x = (int) (displayMetrics.widthPixels / displayMetrics.density);
        point.y = (int) (displayMetrics.heightPixels / displayMetrics.density);
        return point;
    }

    public static String b() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (!str2.startsWith(str)) {
            str2 = str + " " + str2;
        }
        return Character.toUpperCase(str2.charAt(0)) + str2.substring(1, str2.length());
    }
}
