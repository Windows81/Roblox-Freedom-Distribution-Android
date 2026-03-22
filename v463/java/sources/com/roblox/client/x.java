package com.roblox.client;

import android.R;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.b;
import com.roblox.client.o;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static DisplayMetrics f7552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Pattern f7553b;

    public static boolean a() {
        if (NativeSettingsInterface.nativeCPUSupportsNEON()) {
            return true;
        }
        List<String> listA = com.roblox.platform.a.b.a("/proc/cpuinfo");
        Iterator<String> it = listA.iterator();
        while (it.hasNext()) {
            if (it.next().contains("neon")) {
                return true;
            }
        }
        new com.roblox.client.o.a("NeonNotFound").b("cpuinfo", listA.toString()).b();
        return false;
    }

    public static Point a(Context context) {
        return com.roblox.platform.a.a.a(context);
    }

    public static Point b(Context context) {
        return com.roblox.platform.a.a.b(context);
    }

    public static boolean c(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    public static String d(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return "";
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? "Other" : "WiFi" : "Mobile";
    }

    public static androidx.appcompat.app.b a(Context context, String str) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextAppearance(context, R.style.TextAppearance.DeviceDefault.Large);
        textView.setTextSize(20.0f);
        textView.setEllipsize(null);
        androidx.appcompat.app.b bVarB = new b.a(context).b();
        bVarB.a(textView, 150, 100, 150, 100);
        bVarB.setCanceledOnTouchOutside(true);
        try {
            bVarB.show();
        } catch (WindowManager.BadTokenException unused) {
        }
        return bVarB;
    }

    public static void b(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("googlechrome://navigate?url=" + str));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent2.addFlags(268435456);
            if (com.roblox.client.ae.l.a(context, intent2)) {
                context.startActivity(intent2);
                return;
            }
            b.a aVar = new b.a(context);
            aVar.b(context.getString(o.j.Game_Launch_Response_NoOpenLinkAppInstalled));
            aVar.c(context.getString(o.j.CommonUI_Features_Action_Ok), (DialogInterface.OnClickListener) null);
            aVar.b().show();
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            str = new URL(str).getHost();
        } catch (Exception unused) {
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
            if (f7553b == null) {
                f7553b = Pattern.compile(b.B());
            }
            return f7553b.matcher(str).matches();
        } catch (Exception e2) {
            com.roblox.client.ae.k.e("rbx.utils", "Exception: " + e2.toString());
            return str.toLowerCase().contains("roblox");
        }
    }

    public static DisplayMetrics e(Context context) {
        DisplayMetrics displayMetrics = f7552a;
        if (displayMetrics != null) {
            return displayMetrics;
        }
        DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
        f7552a = displayMetrics2;
        return displayMetrics2;
    }

    public static float a(Context context, int i) {
        return i * e(context).density;
    }

    public static float a(Context context, float f) {
        return f / context.getResources().getDisplayMetrics().scaledDensity;
    }

    public static void a(final View view, final EditText editText) {
        if (view != null && editText != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.roblox.client.x.1
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
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.roblox.client.x.2
                @Override // java.lang.Runnable
                public void run() {
                    ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
                }
            });
        }
    }

    public static void b(final View view) {
        if (view != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.roblox.client.x.3
                @Override // java.lang.Runnable
                public void run() {
                    x.a(view.getContext(), view);
                }
            });
        }
    }

    public static void a(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void a(Activity activity) {
        if (activity != null) {
            ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(activity.findViewById(R.id.content).getWindowToken(), 0);
        }
    }

    public static String b(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"));
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArrDigest) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }
}
