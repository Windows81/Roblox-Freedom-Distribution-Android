package com.roblox.client.game;

import android.text.TextUtils;
import com.roblox.client.app.AppInputFocusLifecycleObserver;
import com.roblox.client.s;
import com.roblox.client.s.c;
import com.roblox.client.u;
import com.roblox.engine.jni.OnAppBridgeNotificationListener;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends OnAppBridgeNotificationListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f6264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f6265d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6262a = "rbx.datamodel";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6263b = "OPEN_YOUTUBE_VIDEO";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AppInputFocusLifecycleObserver f6266e = new AppInputFocusLifecycleObserver();

    public interface a {
        void a(String str);
    }

    public interface b {
        s a();
    }

    public d(a aVar, b bVar) {
        this.f6264c = aVar;
        this.f6265d = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.roblox.engine.jni.OnAppBridgeNotificationListener
    public void a(String str, String str2) {
        String str3;
        androidx.fragment.app.c cVarR;
        long j;
        JSONObject jSONObject;
        long jOptLong;
        JSONObject jSONObject2;
        StringBuilder sb = new StringBuilder();
        sb.append("onDataModelNotification() type:");
        sb.append(str);
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        } else {
            str3 = " data:" + str2;
        }
        sb.append(str3);
        com.roblox.client.ae.k.b("rbx.datamodel", sb.toString());
        if (str.equals("VIEW_PROFILE")) {
            com.roblox.client.l.j jVarC = com.roblox.client.l.j.c("PROFILE_TAG");
            jVarC.a(str2);
            jVarC.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC);
            return;
        }
        if (str.equals("REPORT_ABUSE")) {
            com.roblox.client.l.j jVar = new com.roblox.client.l.j("ABUSE_REPORT_TAG");
            jVar.a(str2);
            jVar.a(true);
            org.greenrobot.eventbus.c.a().c(jVar);
            return;
        }
        if (str.equals("VIEW_GAME_DETAILS")) {
            com.roblox.client.l.j jVarC2 = com.roblox.client.l.j.c("GAME_DETAILS_TAG");
            jVarC2.a(str2);
            jVarC2.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC2);
            return;
        }
        if (str.equals("PRIVACY_SETTINGS")) {
            com.roblox.client.l.j jVarC3 = com.roblox.client.l.j.c("SETTINGS_TAG");
            jVarC3.a(u.U());
            jVarC3.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC3);
            return;
        }
        if (str.equals("BACK_BUTTON_NOT_CONSUMED")) {
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.c());
            return;
        }
        if (str.equals("PURCHASE_ROBUX")) {
            new com.roblox.client.t.e(this.f6265d.a(), "tabAvatar").a(this.f6266e);
            return;
        }
        if (str.equals("VIEW_NOTIFICATIONS")) {
            new com.roblox.client.t.d(this.f6265d.a()).a(this.f6266e);
            return;
        }
        if (str.equals("APP_READY")) {
            this.f6264c.a(str2);
            return;
        }
        if (str.equals("CLOSE_MODAL")) {
            return;
        }
        if (str.equals("VIEW_GAME_DETAILS_ANIMATED")) {
            com.roblox.client.l.j jVarC4 = com.roblox.client.l.j.c("ANIMATED_ASSET_DETAILS_TAG");
            jVarC4.a(str2);
            jVarC4.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC4);
            return;
        }
        if (str.equals("OPEN_CUSTOM_WEBVIEW") || str.equals("OPEN_SETTINGS_WEBVIEW")) {
            com.roblox.client.l.j jVarC5 = com.roblox.client.l.j.c("CUSTOM_WEBVIEW_TAG");
            jVarC5.b(str2);
            jVarC5.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC5);
            return;
        }
        if (str.equals("OPEN_BUILDERS_CLUB")) {
            new com.roblox.client.t.b(this.f6265d.a(), "tabMore").a(this.f6266e);
            return;
        }
        if (str.equals("OPEN_SOCIAL_MEDIA")) {
            com.roblox.client.l.j jVarC6 = com.roblox.client.l.j.c("SOCIAL_MEDIA_TAG");
            jVarC6.b(str2);
            jVarC6.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC6);
            return;
        }
        if (str.equals("LAUNCH_GAME")) {
            h hVarA = null;
            String strOptString = null;
            if (com.roblox.client.b.bz()) {
                try {
                    jSONObject = new JSONObject(str2);
                } catch (JSONException unused) {
                    com.roblox.client.ae.k.d("rbx.datamodel", "Exception parsing data model notification for LAUNCH_GAME");
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    long jOptLong2 = jSONObject.optLong("placeId");
                    long jOptLong3 = jSONObject.optLong("userId");
                    long jOptLong4 = jSONObject.optLong("conversationId");
                    String strOptString2 = jSONObject.optString("gameInstanceId");
                    String strOptString3 = jSONObject.optString("referralPage");
                    if (jOptLong2 > 0 && jOptLong4 > 0) {
                        hVarA = h.a(Long.valueOf(jOptLong2), Long.valueOf(jOptLong4), strOptString3);
                    } else if (jOptLong2 > 0 || jOptLong3 > 0) {
                        hVarA = h.a(jOptLong2 == 0 ? null : Long.valueOf(jOptLong2), jOptLong3 == 0 ? null : Long.valueOf(jOptLong3), null, TextUtils.isEmpty(strOptString2) ? null : strOptString2, null, strOptString3);
                    }
                    if (hVarA != null) {
                        androidx.fragment.app.c cVarR2 = this.f6265d.a().r();
                        com.roblox.client.a.a(hVarA, cVarR2);
                        com.roblox.client.s.f.b().a(cVarR2);
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                jSONObject2 = new JSONObject(str2);
                jOptLong = jSONObject2.optLong("placeId");
            } catch (JSONException unused2) {
                jOptLong = 0;
            }
            try {
                strOptString = jSONObject2.optString("referralPage");
            } catch (JSONException unused3) {
                com.roblox.client.ae.k.d("rbx.datamodel", "No placeId for data model notification LAUNCH_GAME");
            }
            String str4 = strOptString;
            if (jOptLong > 0) {
                com.roblox.client.a.a(h.a(Long.valueOf(jOptLong), null, null, null, null, str4), this.f6265d.a().r());
                return;
            }
            return;
        }
        if (str.equals("VIEW_MY_FEED")) {
            com.roblox.client.l.j jVarC7 = com.roblox.client.l.j.c("MY_FEED_TAG");
            jVarC7.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC7);
            return;
        }
        if (str.equals("SEARCH_GAMES")) {
            com.roblox.client.l.j jVarC8 = com.roblox.client.l.j.c("SEARCH_GAMES_TAG");
            jVarC8.a(str2);
            jVarC8.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC8);
            return;
        }
        if (str.equals("GAMES_SEE_ALL")) {
            com.roblox.client.l.j jVarC9 = com.roblox.client.l.j.c("GAMES_SEE_ALL_TAG");
            jVarC9.a(str2);
            jVarC9.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC9);
            return;
        }
        if (str.equals("ACTION_LOG_OUT")) {
            new com.roblox.client.t.c(this.f6265d.a()).a(this.f6266e);
            return;
        }
        if (str.equals("LUA_HOME_PAGE_LOADED")) {
            com.roblox.client.analytics.g.a().c(true);
            com.roblox.client.analytics.i.a("LuaHomePageLoaded");
            com.roblox.client.analytics.i.b();
            return;
        }
        if (str.equals("LAUNCH_CONVERSATION")) {
            try {
                j = Long.parseLong(str2);
            } catch (NumberFormatException unused4) {
                com.roblox.client.ae.k.d("rbx.datamodel", "could not parse data");
                j = -1;
            }
            if (j != -1) {
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.i(j));
                return;
            }
            return;
        }
        if (str.equals("UNIVERSAL_FRIENDS")) {
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.j("UNIVERSAL_FRIENDS_TAG"));
            return;
        }
        if ("OPEN_YOUTUBE_VIDEO".equals(str)) {
            com.roblox.client.l.j jVarA = com.roblox.client.l.j.a("YOUTUBE_TAG", str2);
            jVarA.a(true);
            org.greenrobot.eventbus.c.a().c(jVarA);
            return;
        }
        if (str.equals("ACTION_LOG_IN")) {
            androidx.fragment.app.c cVarR3 = this.f6265d.a().r();
            if (cVarR3 != null) {
                com.roblox.client.startup.c.a(cVarR3).e();
                return;
            }
            return;
        }
        if (str.equals("DID_LOG_IN")) {
            androidx.fragment.app.c cVarR4 = this.f6265d.a().r();
            if (cVarR4 != null) {
                com.roblox.client.startup.c.a(cVarR4).a(str2);
                return;
            }
            return;
        }
        if (str.equals("DID_SIGN_UP")) {
            androidx.fragment.app.c cVarR5 = this.f6265d.a().r();
            if (cVarR5 != null) {
                com.roblox.client.startup.c.a(cVarR5).b(str2);
                return;
            }
            return;
        }
        if (str.equals("DID_LOG_OUT")) {
            androidx.fragment.app.c cVarR6 = this.f6265d.a().r();
            if (cVarR6 == null || !com.roblox.client.s.h.a().d()) {
                return;
            }
            com.roblox.client.s.c.d().a(cVarR6, c.e.LOGOUT_BY_USER_IN_LUA);
            return;
        }
        if (str.equals("OPEN_CAPTCHA_VIEW")) {
            com.roblox.client.l.j jVarC10 = com.roblox.client.l.j.c("CAPTCHA_TAG");
            jVarC10.b(str2);
            jVarC10.a(true);
            org.greenrobot.eventbus.c.a().c(jVarC10);
            return;
        }
        if (str.equals("LUA_UNAUTHORIZED_LOG_OUT")) {
            androidx.fragment.app.c cVarR7 = this.f6265d.a().r();
            if (cVarR7 == null || !com.roblox.client.s.h.a().d()) {
                return;
            }
            com.roblox.client.s.c.d().a(cVarR7, c.e.LOGOUT_BY_401_ERROR_IN_LUA);
            return;
        }
        if (!str.equals("NATIVE_SHARE") || (cVarR = this.f6265d.a().r()) == 0 || cVarR.isFinishing() || !(cVarR instanceof com.roblox.client.z.d)) {
            return;
        }
        ((com.roblox.client.z.d) cVarR).c(str2);
    }
}
