package com.roblox.client.jni;

import android.os.Build;
import android.support.v4.app.Fragment;
import com.roblox.client.FragmentGlView;

/* JADX INFO: loaded from: classes.dex */
public class NativeLocaleJavaInterface {
    private static Fragment getContext() {
        return FragmentGlView.getSingleton();
    }

    public static String getLocale() {
        if (Build.VERSION.SDK_INT >= 24) {
            return getContext().getResources().getConfiguration().getLocales().get(0).toString();
        }
        return getContext().getResources().getConfiguration().locale.toString();
    }

    public static String getRobloxLocale() {
        return com.roblox.client.locale.a.a().b().a();
    }

    public static String getGameLocale() {
        return com.roblox.client.locale.a.a().c().a();
    }
}
