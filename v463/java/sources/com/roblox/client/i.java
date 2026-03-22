package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.roblox.engine.jni.NativeSettingsInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f6386a;

    public static String a(Context context) {
        if (f6386a == null) {
            b(context);
        }
        return f6386a;
    }

    public static void b(Context context) {
        f6386a = u.a(context).getString("dev_rpc_ip_port_override", "");
    }

    public static void a(Context context, String str) {
        if (str == null) {
            str = "";
        }
        f6386a = str;
        SharedPreferences.Editor editorEdit = u.a(context).edit();
        editorEdit.putString("dev_rpc_ip_port_override", str);
        editorEdit.apply();
        d(context);
    }

    public static String c(Context context) {
        d(context);
        return NativeSettingsInterface.nativeGetDevRpcConfiguration();
    }

    public static void d(Context context) {
        String str;
        if (NativeSettingsInterface.nativeIsDevRpcEnabled()) {
            String strC = com.roblox.engine.f.c();
            if (TextUtils.isEmpty(strC)) {
                str = "";
            } else {
                str = strC + "/bundles/ip.txt";
            }
            NativeSettingsInterface.nativeConfigureDevRpc(str, a(context));
        }
    }
}
