package com.roblox.client.n;

import android.util.Log;
import com.roblox.client.RobloxSettings;
import com.roblox.client.b;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f7496a = false;

    public static void a(boolean z) {
        f7496a = z;
    }

    public static boolean a() {
        b.a<Boolean> aVarAN = b.aN();
        if (aVarAN != null && aVarAN.c() != null) {
            Log.i("luaApp.config", "isLuaChatEnabled() using override:" + aVarAN.c().booleanValue());
            f7496a = aVarAN.c().booleanValue();
        }
        if (RobloxSettings.isChrome() && !b.bc()) {
            return false;
        }
        if (RobloxSettings.isPhone() || b.bb()) {
            return f7496a && b.aM();
        }
        return false;
    }

    public static boolean b() {
        return b.aO();
    }

    public static boolean c() {
        if (!b()) {
            return false;
        }
        if (RobloxSettings.isPhone()) {
            return b.aQ() || com.roblox.abtesting.a.a().e();
        }
        if (RobloxSettings.isTablet()) {
            return b.aP() || com.roblox.abtesting.a.a().f();
        }
        return false;
    }

    public static boolean d() {
        if (!b()) {
            return false;
        }
        if (RobloxSettings.isPhone()) {
            return b.aT() || com.roblox.abtesting.a.a().g();
        }
        if (RobloxSettings.isTablet()) {
            return b.aR() || com.roblox.abtesting.a.a().h();
        }
        return false;
    }

    public static boolean e() {
        return ((b.aS() && RobloxSettings.isTablet()) || (b.aU() && RobloxSettings.isPhone())) && b();
    }
}
