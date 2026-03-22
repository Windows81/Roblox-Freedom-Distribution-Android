package com.roblox.client.c;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.roblox.client.ae.k;
import com.roblox.client.ae.s;
import com.roblox.client.b;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.m.c;
import com.roblox.client.p;
import com.roblox.client.s.d;
import com.roblox.client.s.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f5749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s f5750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f5751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5752d = false;

    /* JADX INFO: renamed from: com.roblox.client.c.a$a, reason: collision with other inner class name */
    private static class C0128a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f5754a = new a();
    }

    public static a a() {
        return C0128a.f5754a;
    }

    public a() {
        k.b("AppsFlyerManager", "[AppsFlyerManager]: Constructor called.");
    }

    @Override // com.roblox.client.s.d
    public void a(Context context) {
        boolean z = b.av() && !com.roblox.client.i.b.a();
        k.b("AppsFlyerManager", "init: initEnabled=" + z);
        if (z) {
            AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
            appsFlyerLib.setMinTimeBetweenSessions(90);
            s sVarA = s.a(context);
            this.f5750b = sVarA;
            SharedPreferences sharedPreferencesA = sVarA.a("AppsFlyerPreferences");
            this.f5751c = sharedPreferencesA;
            if (sharedPreferencesA != null) {
                this.f5752d = sharedPreferencesA.getBoolean("IsUserAcquiredFromFacebook", false);
            }
            if (b.cB()) {
                appsFlyerLib.setOneLinkCustomDomain("roblox.onelink.me", "ro.blox.com", "go.roblox.com");
            }
            a(a(context, "enableTracking", true));
            AppsFlyerConversionListener appsFlyerConversionListener = new AppsFlyerConversionListener() { // from class: com.roblox.client.c.a.1
                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onAppOpenAttribution(Map<String, String> map) {
                }

                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onAttributionFailure(String str) {
                }

                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onConversionDataFail(String str) {
                }

                @Override // com.appsflyer.AppsFlyerConversionListener
                public void onConversionDataSuccess(Map<String, Object> map) {
                    String str = (String) map.get("media_source");
                    k.b("AppsFlyerManager", "media-source: " + str);
                    if ("Facebook Ads".equals(str) || "restricted".equals(str)) {
                        k.b("AppsFlyerManager", "isUserAcquiredFromFacebookAd set to true");
                        a.this.f5752d = true;
                        if (a.this.f5751c != null) {
                            a.this.f5751c.edit().putBoolean("IsUserAcquiredFromFacebook", true).apply();
                        }
                    }
                    if (b.cB() && "true".equals(map.get("is_first_launch")) && map.containsKey("af_dp")) {
                        String str2 = (String) map.get("af_dp");
                        if (com.roblox.client.k.a.a(str2)) {
                            com.roblox.client.routing.a.a().b(str2);
                        }
                    }
                }
            };
            appsFlyerLib.setCollectIMEI(false);
            appsFlyerLib.setCollectAndroidID(false);
            appsFlyerLib.init("Quwp4RGsFwE6rVnyTFm6jQ", appsFlyerConversionListener, context);
            appsFlyerLib.startTracking((Application) context, "Quwp4RGsFwE6rVnyTFm6jQ");
            this.f5749a = context;
        }
    }

    @Override // com.roblox.client.s.d
    public void b(Context context) {
        boolean zB = b();
        k.b("AppsFlyerManager", "login: enabled=" + zB);
        if (zB) {
            String str = (c.a().cM() && this.f5752d) ? "fbads_login" : AFInAppEventType.LOGIN;
            k.b("AppsFlyerManager", "EnableAppsFlyerFacebookTracking: " + c.a().cM() + ", isUserAcquiredFromFacebookAd: " + this.f5752d + ", eventName: " + str);
            AppsFlyerLib.getInstance().trackEvent(this.f5749a, str, null);
            a("loginReported", (List<NameValuePair>) null);
            a("Android-AppsFlyer-Login");
            e(context);
            return;
        }
        f(context);
    }

    @Override // com.roblox.client.s.d
    public void c(Context context) {
        boolean zB = b();
        k.b("AppsFlyerManager", "signup: enabled=" + zB);
        if (zB) {
            String str = (c.a().cM() && this.f5752d) ? "fbads_complete_registration" : AFInAppEventType.COMPLETE_REGISTRATION;
            k.b("AppsFlyerManager", "EnableAppsFlyerFacebookTracking: " + c.a().cM() + ", isUserAcquiredFromFacebookAd: " + this.f5752d + ", eventName: " + str);
            AppsFlyerLib.getInstance().trackEvent(this.f5749a, str, null);
            a("signUpReported", (List<NameValuePair>) null);
            a("Android-AppsFlyer-Registration");
            e(context);
            return;
        }
        f(context);
    }

    @Override // com.roblox.client.s.d
    public void d(Context context) {
        boolean zB = b();
        k.b("AppsFlyerManager", "first play: enabled=" + zB);
        if (zB) {
            String str = "firstPlayReported_" + com.roblox.client.ad.c.a().d();
            if (a(context, str, false)) {
                return;
            }
            b(context, str, true);
            String str2 = (c.a().cM() && this.f5752d) ? "fbads_af_level_achieved" : AFInAppEventType.LEVEL_ACHIEVED;
            k.b("AppsFlyerManager", "EnableAppsFlyerFacebookTracking: " + c.a().cM() + ", isUserAcquiredFromFacebookAd: " + this.f5752d + ", eventName: " + str2);
            AppsFlyerLib.getInstance().trackEvent(this.f5749a, str2, null);
            a("firstPlayReported", (List<NameValuePair>) null);
            a("Android-AppsFlyer-FirstPlay");
        }
    }

    @Override // com.roblox.client.s.d
    public void a(String str, String str2, String str3, boolean z) {
        boolean zB = b();
        k.b("AppsFlyerManager", "Purchase. enabled=" + zB + ". Price: " + str2 + ".");
        if (zB) {
            HashMap map = new HashMap();
            map.put(AFInAppEventParameterName.REVENUE, str2 != null ? str2 : "0");
            map.put(AFInAppEventParameterName.CURRENCY, str3 != null ? str3 : "");
            map.put(AFInAppEventParameterName.CONTENT_ID, str);
            map.put(AFInAppEventParameterName.PARAM_1, z ? "Amazon" : "Android");
            String str4 = (c.a().cM() && this.f5752d) ? "fbads_purchase" : AFInAppEventType.PURCHASE;
            k.b("AppsFlyerManager", "EnableAppsFlyerFacebookTracking: " + c.a().cM() + ", isUserAcquiredFromFacebookAd: " + this.f5752d + ", eventName: " + str4);
            AppsFlyerLib.getInstance().trackEvent(this.f5749a, str4, map);
            a(str, str2, str3);
        }
    }

    private void a(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("productId", str));
        arrayList.add(new NameValuePair("price", str2));
        arrayList.add(new NameValuePair(AppsFlyerProperties.CURRENCY_CODE, str3));
        a("purchaseReported", arrayList);
        a("Android-AppsFlyer-Purchase");
    }

    private void a(String str, List<NameValuePair> list) {
        if (b.aM()) {
            p.a(str, "appsFlyer", list);
        }
    }

    private void a(String str) {
        if (b.aL()) {
            f.b().a(str);
        }
    }

    private boolean b() {
        return (!b.av() || com.roblox.client.ad.c.a().i() || com.roblox.client.i.b.a()) ? false : true;
    }

    private void a(boolean z) {
        if (z) {
            AppsFlyerLib.getInstance().setDeviceTrackingDisabled(false);
        }
    }

    private void e(Context context) {
        b(context, "enableTracking", true);
        a(true);
    }

    private void f(Context context) {
        AppsFlyerLib.getInstance().setDeviceTrackingDisabled(true);
        b(context, "enableTracking", false);
    }

    private boolean a(Context context, String str, boolean z) {
        return g(context).getBoolean(str, z);
    }

    private void b(Context context, String str, boolean z) {
        SharedPreferences.Editor editorEdit = g(context).edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }

    private SharedPreferences g(Context context) {
        return context.getSharedPreferences("APPS_FLYER_SHARED_PREFS", 0);
    }
}
