package com.roblox.platform;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.roblox.client.contacts.model.ContactRequestObject;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f8056a;

    public String toString() {
        return this.f8056a;
    }

    public i(Context context, String str, String str2, String str3, boolean z) {
        long jA = a();
        Point pointA = a(context);
        Point pointB = b(context);
        Point pointC = c(context);
        this.f8056a = String.format(Locale.ROOT, "Mozilla/5.0 (%dMB; %dx%d; %dx%d; %dx%d; %s; %s) %s (KHTML, like Gecko)  ROBLOX Android App %s %s Hybrid() %s", Long.valueOf(jA), Integer.valueOf(pointA.x), Integer.valueOf(pointA.y), Integer.valueOf(pointB.x), Integer.valueOf(pointB.y), Integer.valueOf(pointC.x), Integer.valueOf(pointC.y), new a().a(b()), Build.VERSION.RELEASE, str2, str, z ? ContactRequestObject.JSON_FIELD_PHONE : "Tablet", str3);
    }

    public static class a {
        public String a(String str) {
            StringBuilder sb = new StringBuilder(str.length());
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    sb.append('_');
                } else {
                    sb.append(cCharAt);
                }
            }
            return sb.toString();
        }
    }

    private int a() throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        line = null;
        String line = null;
        try {
            randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
            try {
                line = randomAccessFile.readLine();
                try {
                    randomAccessFile.close();
                } catch (IOException e) {
                }
            } catch (IOException e2) {
                try {
                    randomAccessFile.close();
                } catch (IOException e3) {
                }
            } catch (Throwable th) {
                th = th;
                randomAccessFile2 = randomAccessFile;
                try {
                    randomAccessFile2.close();
                } catch (IOException e4) {
                }
                throw th;
            }
        } catch (IOException e5) {
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
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
        } catch (NumberFormatException e6) {
        }
        return (int) j;
    }

    private Point a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    private Point b(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point();
        point.x = (int) displayMetrics.xdpi;
        point.y = (int) displayMetrics.ydpi;
        return point;
    }

    private Point c(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Point point = new Point();
        point.x = (int) (displayMetrics.widthPixels / displayMetrics.density);
        point.y = (int) (displayMetrics.heightPixels / displayMetrics.density);
        return point;
    }

    private String b() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (!str2.startsWith(str)) {
            str2 = str + " " + str2;
        }
        return Character.toUpperCase(str2.charAt(0)) + str2.substring(1, str2.length());
    }
}
