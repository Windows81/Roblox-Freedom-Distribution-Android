package com.roblox.client.jni;

import android.support.v4.app.Fragment;
import com.roblox.client.FragmentGlView;
import com.roblox.client.q.d;

/* JADX INFO: loaded from: classes.dex */
public class NativeUserJavaInterface {
    private static Fragment getContext() {
        return FragmentGlView.getSingleton();
    }

    public static long getUserId() {
        return d.a().e();
    }

    public static boolean getIsUnder13() {
        return d.a().g();
    }

    public static String getUsername() {
        return d.a().f();
    }

    public static String getAlternateName() {
        return "";
    }

    public static int getMembershipType() {
        return d.a().k();
    }
}
