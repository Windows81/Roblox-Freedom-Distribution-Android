package com.roblox.client;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Debug;
import android.os.Process;
import com.roblox.client.o;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public static void a(Activity activity, String str, boolean z) {
        activity.startActivity(b(activity, str, activity.getString(o.j.CommonUI_Features_Heading_ReportAbuse), true, z, true));
        activity.overridePendingTransition(o.a.slide_up_short, R.anim.fade_out);
    }

    public static void a(Activity activity, String str, String str2) {
        a(activity, str, str2, false, false, false);
    }

    public static void a(Activity activity, String str, int i, boolean z, boolean z2) {
        a(activity, str, activity.getString(i), z, z2);
    }

    public static void a(Activity activity, String str, String str2, boolean z, boolean z2) {
        a(activity, str, str2, z, z2, false);
    }

    public static void a(Activity activity, String str, String str2, boolean z, boolean z2, boolean z3) {
        a(activity, b(activity, str, str2, z, z2, z3), z);
    }

    public static void a(Activity activity, String str, String str2, JSONObject jSONObject) {
        Intent intentB = b(activity, str, str2, true, true, true);
        if (jSONObject != null) {
            intentB.putExtra("SEARCH_PARAMS", jSONObject.toString());
        }
        a(activity, intentB, true);
    }

    public static Intent b(Activity activity, String str, String str2, boolean z, boolean z2, boolean z3) {
        Intent intent = new Intent(activity, (Class<?>) RobloxWebActivity.class);
        intent.putExtra("URL_EXTRA", com.roblox.client.ae.d.e(str));
        intent.putExtra("TITLE_EXTRA", str2);
        intent.putExtra("USE_GENERIC_WEB_FRAG_EXTRA", z);
        intent.putExtra("SEND_DATA_MODEL_FOCUS_EVENTS_EXTRA", z2);
        intent.putExtra("HIDE_ACCESSORY_BUTTONS_EXTRA", z3);
        return intent;
    }

    public static void a(Activity activity, Intent intent, boolean z) {
        activity.startActivityForResult(intent, 10110);
        if (z) {
            activity.overridePendingTransition(0, 0);
        } else {
            activity.overridePendingTransition(o.a.slide_up_short, R.anim.fade_out);
        }
    }

    public static void a(Activity activity) {
        com.roblox.client.game.h hVarE = l.a().h().e();
        if (hVarE == null) {
            return;
        }
        com.roblox.client.ae.k.b("ActivityUtils", "Start delayed game with placeID: " + hVarE.a());
        a(hVarE, activity);
    }

    public static void a(com.roblox.client.game.h hVar, Activity activity) {
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        u.f7521e = true;
        com.roblox.client.ae.k.c("GameLaunch", "startLaunchGame: activity=" + activity);
        b(hVar, activity);
    }

    private static void b(com.roblox.client.game.h hVar, Activity activity) {
        int iMyPid = Process.myPid();
        boolean zIsDebuggerConnected = Debug.isDebuggerConnected();
        if (hVar != null) {
            long jA = hVar.a();
            StringBuilder sb = new StringBuilder();
            sb.append("Launching PlaceId:");
            sb.append(jA);
            sb.append(" Pid:");
            sb.append(iMyPid);
            sb.append(" Debugger:");
            sb.append(zIsDebuggerConnected ? "attached" : "none");
            com.roblox.client.ae.k.b("ActivityUtils", sb.toString());
        }
        l.a().h().a(activity, hVar, 10104);
    }
}
