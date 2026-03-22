package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ahu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f4023a = "0123456789abcdef".toCharArray();

    public static long a(double d2, DisplayMetrics displayMetrics) {
        return Math.round(d2 / ((double) displayMetrics.density));
    }

    public static Activity a(View view) {
        View rootView = view.getRootView();
        if (rootView != null) {
            view = rootView;
        }
        Context context = view.getContext();
        for (int i = 0; (context instanceof ContextWrapper) && i < 10; i++) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    public static String a(String str) {
        if (str == null || !str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            return str;
        }
        UUID uuidFromString = UUID.fromString(str);
        byte[] bArr = new byte[16];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
        byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
        return afu.a(bArr, true);
    }

    public static String a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        zd.a(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean a(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == 0.0f) ? false : true;
    }

    public static boolean b(String str) {
        return str == null || str.isEmpty();
    }
}
