package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.roblox.client.RobloxSettings;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ly {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Handler f5287a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f5288b = com.google.android.gms.ads.e.class.getName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f5289c = com.google.android.gms.ads.h.class.getName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f5290d = PublisherAdView.class.getName();
    private static final String e = com.google.android.gms.ads.doubleclick.e.class.getName();
    private static final String f = com.google.android.gms.ads.c.b.class.getName();
    private static final String g = com.google.android.gms.ads.b.class.getName();

    public static int a(Context context, int i) {
        return a(context.getResources().getDisplayMetrics(), i);
    }

    public static int a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    public static String a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || a()) {
            string = "emulator";
        }
        return a(string);
    }

    public static String a(String str) {
        String str2 = null;
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                str2 = String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
                break;
            } catch (ArithmeticException e2) {
            } catch (NoSuchAlgorithmException e3) {
            }
        }
        return str2;
    }

    public static String a(StackTraceElement[] stackTraceElementArr, String str) {
        String className;
        for (int i = 0; i + 1 < stackTraceElementArr.length; i++) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i];
            String className2 = stackTraceElement.getClassName();
            if ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (f5288b.equalsIgnoreCase(className2) || f5289c.equalsIgnoreCase(className2) || f5290d.equalsIgnoreCase(className2) || e.equalsIgnoreCase(className2) || f.equalsIgnoreCase(className2) || g.equalsIgnoreCase(className2))) {
                className = stackTraceElementArr[i + 1].getClassName();
                break;
            }
        }
        className = null;
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            StringBuilder sb = new StringBuilder();
            int i2 = 2;
            if (stringTokenizer.hasMoreElements()) {
                sb.append(stringTokenizer.nextToken());
                while (true) {
                    int i3 = i2 - 1;
                    if (i2 <= 0 || !stringTokenizer.hasMoreElements()) {
                        break;
                    }
                    sb.append(".").append(stringTokenizer.nextToken());
                    i2 = i3;
                }
                str = sb.toString();
            }
            if (className != null && !className.contains(str)) {
                return className;
            }
        }
        return null;
    }

    public static Throwable a(Throwable th) {
        Throwable th2;
        if (((Boolean) aoo.f().a(aro.f4402d)).booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th3 = null;
        while (!linkedList.isEmpty()) {
            Throwable th4 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th4.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th4.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (b(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    z = true;
                } else {
                    String className = stackTraceElement.getClassName();
                    if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                        arrayList.add(stackTraceElement);
                    } else {
                        arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                    }
                }
            }
            if (z) {
                th2 = th3 == null ? new Throwable(th4.getMessage()) : new Throwable(th4.getMessage(), th3);
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            } else {
                th2 = th3;
            }
            th3 = th2;
        }
        return th3;
    }

    public static void a(Context context, String str, String str2, Bundle bundle, boolean z, mb mbVar) {
        if (z) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            bundle.putString("os", Build.VERSION.RELEASE);
            bundle.putString(RobloxSettings.API_SUB_DOMAIN, String.valueOf(Build.VERSION.SDK_INT));
            bundle.putString("appid", applicationContext.getPackageName());
            if (str == null) {
                str = new StringBuilder(20).append(com.google.android.gms.common.f.b().b(context)).append(".12451000").toString();
            }
            bundle.putString("js", str);
        }
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str3 : bundle.keySet()) {
            builderAppendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        mbVar.a(builderAppendQueryParameter.toString());
    }

    private final void a(ViewGroup viewGroup, zzjn zzjnVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i);
        textView.setBackgroundColor(i2);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i);
        int iA = a(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzjnVar.f - iA, zzjnVar.f5805c - iA, 17));
        viewGroup.addView(frameLayout, zzjnVar.f, zzjnVar.f5805c);
    }

    public static void a(boolean z, HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    public static boolean a() {
        return Build.DEVICE.startsWith("generic");
    }

    public static int b(Context context, int i) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return b(displayMetrics, i);
    }

    public static int b(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    public static String b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith((String) aoo.f().a(aro.e))) {
            return true;
        }
        try {
            return Class.forName(str).isAnnotationPresent(cm.class);
        } catch (Exception e2) {
            String strValueOf = String.valueOf(str);
            mj.a(strValueOf.length() != 0 ? "Fail to check class type for class ".concat(strValueOf) : new String("Fail to check class type for class "), e2);
            return false;
        }
    }

    public static String c() {
        UUID uuidRandomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(uuidRandomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(uuidRandomUUID.getMostSignificantBits()).toByteArray();
        String string = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                string = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return string;
    }

    public static boolean c(Context context) {
        return com.google.android.gms.common.f.b().b(context, 12451000) == 0;
    }

    public static int d(Context context) {
        return DynamiteModule.b(context, ModuleDescriptor.MODULE_ID);
    }

    public static int e(Context context) {
        return DynamiteModule.a(context, ModuleDescriptor.MODULE_ID);
    }

    public static boolean f(Context context) {
        int iB = com.google.android.gms.common.f.b().b(context, 12451000);
        return iB == 0 || iB == 2;
    }

    public static boolean g(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    @TargetApi(17)
    public static boolean h(Context context) {
        int iIntValue;
        int iIntValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (com.google.android.gms.common.util.n.e()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            iIntValue = displayMetrics.heightPixels;
            iIntValue2 = displayMetrics.widthPixels;
        } else {
            try {
                iIntValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                iIntValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e2) {
                return false;
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels == iIntValue && displayMetrics.widthPixels == iIntValue2;
    }

    public static int i(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public final void a(Context context, String str, String str2, Bundle bundle, boolean z) {
        a(context, null, str2, bundle, true, new lz(this));
    }

    public final void a(ViewGroup viewGroup, zzjn zzjnVar, String str) {
        a(viewGroup, zzjnVar, str, -16777216, -1);
    }

    public final void a(ViewGroup viewGroup, zzjn zzjnVar, String str, String str2) {
        mj.e(str2);
        a(viewGroup, zzjnVar, str, -65536, -16777216);
    }
}
