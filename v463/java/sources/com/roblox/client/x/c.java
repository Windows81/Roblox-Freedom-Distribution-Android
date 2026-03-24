package com.roblox.client.x;

import android.util.Log;
import com.roblox.client.ae.l;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeSettingsInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f7560a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f7561b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f7562c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f7563d = false;

    public static String e() {
        return "rbxasset://places/Mobile.rbxl";
    }

    public static String f() {
        return "LuaAppStarterScript";
    }

    public static void a(boolean z) {
        f7560a = z;
    }

    public static boolean a() {
        com.roblox.client.m.a aVarA = com.roblox.client.b.a("EnableLuaChatV4");
        if (aVarA != null && aVarA.b() >= 2) {
            Log.i("luaApp.config", "isLuaChatEnabled() using override:" + ((Boolean) aVarA.a()).booleanValue());
            f7560a = ((Boolean) aVarA.a()).booleanValue();
        }
        if (u.k()) {
            return com.roblox.client.b.as() || com.roblox.client.b.aQ() || com.roblox.abtesting.a.a().d();
        }
        if (com.roblox.abtesting.a.a().i() || d()) {
            return true;
        }
        return (u.j() || com.roblox.client.b.ar()) && f7560a && com.roblox.client.b.ag();
    }

    public static boolean b() {
        if (u.k()) {
            return com.roblox.client.b.aQ() || com.roblox.abtesting.a.a().d();
        }
        if (u.j()) {
            return com.roblox.client.b.ai() || com.roblox.abtesting.a.a().e();
        }
        if (u.i()) {
            return com.roblox.client.b.ah() || com.roblox.abtesting.a.a().f();
        }
        return false;
    }

    public static boolean c() {
        if (u.k()) {
            return com.roblox.client.b.aQ() || com.roblox.abtesting.a.a().d();
        }
        if (u.j()) {
            return com.roblox.client.b.ak() || com.roblox.abtesting.a.a().g();
        }
        if (u.i()) {
            return com.roblox.client.b.aj() || com.roblox.abtesting.a.a().h();
        }
        return false;
    }

    public static boolean d() {
        return b() || c();
    }

    public static void g() {
        boolean z = true;
        NativeSettingsInterface.nativeSetFFlag("AppBridgeRewrite", true);
        if ((l.b() && !com.roblox.client.m.c.a().cA()) || (!com.roblox.client.b.cv() && !NativeSettingsInterface.nativeGetFFlag("AppBridgeStartupController"))) {
            z = false;
        }
        f7561b = z;
        NativeSettingsInterface.nativeSetFFlag("AppBridgeStartupController", z);
        Log.i("luaApp.config", "retrieveNativeFlags: NewStartup = " + f7561b);
        f7562c = NativeSettingsInterface.nativeGetFFlag("UsingSendMeasureBatch2");
        f7563d = NativeSettingsInterface.nativeGetFFlag("BrowserServiceForAllPlatforms");
    }

    public static boolean h() {
        return f7561b;
    }

    public static boolean i() {
        return h() && NativeSettingsInterface.nativeIsLuaLoginEnabled();
    }

    public static boolean j() {
        return i() || (l.b() && com.roblox.client.m.c.a().cA());
    }

    public static boolean k() {
        return f7562c;
    }

    public static boolean l() {
        return f7563d;
    }

    public static boolean m() {
        return NativeSettingsInterface.nativeGetFFlag("EnableReturnKeyPressedEvent");
    }

    public static boolean n() {
        return NativeSettingsInterface.nativeGetFFlag("EnableAppPolicyDefaultsFile");
    }
}
