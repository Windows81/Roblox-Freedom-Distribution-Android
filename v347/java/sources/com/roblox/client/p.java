package com.roblox.client;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.app.b;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.roblox.client.h;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.File;
import java.io.FileNotFoundException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static DisplayMetrics f7515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Pattern f7516b = null;

    public static boolean a() {
        if (NativeSettingsInterface.nativeCPUSupportsNEON()) {
            return true;
        }
        List<String> listA = a("/proc/cpuinfo");
        Iterator<String> it = listA.iterator();
        while (it.hasNext()) {
            if (it.next().contains("neon")) {
                return true;
            }
        }
        new com.roblox.client.g.a("NeonNotFound").b("cpuinfo", listA.toString()).b();
        return false;
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

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f7521a;

        a(String str) {
            this.f7521a = str;
        }
    }

    static a c(Context context) {
        String userAgentString;
        String str;
        SharedPreferences keyValues = RobloxSettings.getKeyValues();
        String string = keyValues.getString("WebView_UserAgent", null);
        try {
            userAgentString = new WebView(context).getSettings().getUserAgentString();
            if (string == null || !string.equals(userAgentString)) {
                keyValues.edit().putString("WebView_UserAgent", userAgentString).apply();
            }
        } catch (Exception e) {
            com.roblox.client.util.g.d("rbx.utils", "Caught exception: " + e);
            if (string == null) {
                throw e;
            }
            userAgentString = string;
        }
        String[] strArrSplit = userAgentString.split("\\s+");
        int length = strArrSplit.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = "AppleWebKit/Unknown";
                break;
            }
            str = strArrSplit[i];
            if (str.startsWith("AppleWebKit")) {
                break;
            }
            i++;
        }
        return new a(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.io.File r5, java.lang.String r6) {
        /*
            r2 = 0
            java.io.BufferedWriter r1 = new java.io.BufferedWriter     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L74
            java.io.FileWriter r0 = new java.io.FileWriter     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L74
            r0.<init>(r5)     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L74
            r1.<init>(r0)     // Catch: java.io.IOException -> L32 java.lang.Throwable -> L74
            r1.write(r6)     // Catch: java.lang.Throwable -> L9a java.io.IOException -> L9c
            if (r1 == 0) goto L13
            r1.close()     // Catch: java.io.IOException -> L14
        L13:
            return
        L14:
            r0 = move-exception
            java.lang.String r1 = "rbx.utils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "File close failed: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.roblox.client.util.g.e(r1, r0)
            goto L13
        L32:
            r0 = move-exception
            r1 = r2
        L34:
            java.lang.String r2 = "Exception"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9a
            r3.<init>()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r4 = "File write failed: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L9a
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L9a
            com.roblox.client.util.g.e(r2, r0)     // Catch: java.lang.Throwable -> L9a
            if (r1 == 0) goto L13
            r1.close()     // Catch: java.io.IOException -> L56
            goto L13
        L56:
            r0 = move-exception
            java.lang.String r1 = "rbx.utils"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "File close failed: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            com.roblox.client.util.g.e(r1, r0)
            goto L13
        L74:
            r0 = move-exception
            r1 = r2
        L76:
            if (r1 == 0) goto L7b
            r1.close()     // Catch: java.io.IOException -> L7c
        L7b:
            throw r0
        L7c:
            r1 = move-exception
            java.lang.String r2 = "rbx.utils"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "File close failed: "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            com.roblox.client.util.g.e(r2, r1)
            goto L7b
        L9a:
            r0 = move-exception
            goto L76
        L9c:
            r0 = move-exception
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.p.a(java.io.File, java.lang.String):void");
    }

    static List<String> a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Scanner scanner = new Scanner(new File(str));
            while (scanner.hasNextLine()) {
                try {
                    arrayList.add(scanner.nextLine());
                } finally {
                    scanner.close();
                }
            }
        } catch (FileNotFoundException e) {
        }
        return arrayList;
    }

    public static void d(Context context) {
        ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses(context.getPackageName());
    }

    @Deprecated
    public static String a(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public static boolean e(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static android.support.v7.app.b a(Context context, String str) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextAppearance(context, R.style.TextAppearance.DeviceDefault.Large);
        textView.setTextSize(20.0f);
        textView.setEllipsize(null);
        android.support.v7.app.b bVarB = new b.a(context).b();
        bVarB.a(textView, 150, 100, 150, 100);
        bVarB.setCanceledOnTouchOutside(true);
        try {
            bVarB.show();
        } catch (WindowManager.BadTokenException e) {
        }
        return bVarB;
    }

    public static void a(String str, int i) {
        try {
            Class.forName("android.os.FileUtils").getMethod("setPermissions", String.class, Integer.TYPE, Integer.TYPE, Integer.TYPE).invoke(null, new File(str).getAbsolutePath(), Integer.valueOf(i), -1, -1);
        } catch (Exception e) {
            com.roblox.client.util.g.e("rbx.utils", "chmod: " + e.getLocalizedMessage());
        }
    }

    public static void b(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("googlechrome://navigate?url=" + str));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent2.addFlags(268435456);
            if (com.roblox.client.util.h.a(context, intent2)) {
                context.startActivity(intent2);
                return;
            }
            b.a aVar = new b.a(context);
            aVar.b(context.getString(h.a.Game_Launch_Response_NoOpenLinkAppInstalled));
            aVar.a(context.getString(h.a.CommonUI_Features_Action_Ok), (DialogInterface.OnClickListener) null);
            aVar.b().show();
        }
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            str = new URL(str).getHost();
        } catch (Exception e) {
            int iIndexOf = str.indexOf("://");
            if (iIndexOf > -1) {
                str = str.substring(iIndexOf + 3);
            }
            int iIndexOf2 = str.indexOf(47);
            if (iIndexOf2 > -1) {
                str = str.substring(0, iIndexOf2);
            }
        }
        return c(str);
    }

    private static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (f7516b == null) {
                f7516b = Pattern.compile(b.P());
            }
            return f7516b.matcher(str).matches();
        } catch (Exception e) {
            com.roblox.client.util.g.e("rbx.utils", "Exception: " + e.toString());
            return str.toLowerCase().contains("roblox");
        }
    }

    public static DisplayMetrics f(Context context) {
        if (f7515a == null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            f7515a = displayMetrics;
            return displayMetrics;
        }
        return f7515a;
    }

    public static float a(Context context, int i) {
        return i * f(context).density;
    }

    public static void a(final View view, final EditText editText) {
        if (view != null && editText != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.roblox.client.p.1
                @Override // java.lang.Runnable
                public void run() {
                    ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(editText, 1);
                }
            });
        } else if (view != null) {
            a(view);
        }
    }

    public static void a(final View view) {
        if (view != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.roblox.client.p.2
                @Override // java.lang.Runnable
                public void run() {
                    ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
                }
            });
        }
    }

    public static void b(final View view) {
        if (view != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.roblox.client.p.3
                @Override // java.lang.Runnable
                public void run() {
                    p.a(view.getContext(), view);
                }
            });
        }
    }

    public static void a(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void a(Activity activity) {
        ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(activity.findViewById(R.id.content).getWindowToken(), 0);
    }

    public static Drawable a(Context context, int i, int i2, int i3) {
        return new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(((BitmapDrawable) android.support.v4.a.c.a(context, i)).getBitmap(), (int) a(context, i2), (int) a(context, i3), true));
    }
}
