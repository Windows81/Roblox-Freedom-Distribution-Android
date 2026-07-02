package com.roblox.client.i;

import android.app.Application;
import android.content.Context;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7172a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f7174a = new d();
    }

    public static d a() {
        return a.f7174a;
    }

    public d() {
        com.roblox.client.util.g.b("AppsFlyerManager", "[AppsFlyerManager]: Constructor called.");
    }

    public void a(Context context) {
        com.roblox.client.util.g.b("AppsFlyerManager", "init");
        if (com.roblox.client.b.bn() && !com.roblox.client.d.b.a()) {
            com.roblox.client.util.g.b("AppsFlyerManager", "enabled");
            com.appsflyer.f fVarC = com.appsflyer.f.c();
            fVarC.a((Application) context, "Quwp4RGsFwE6rVnyTFm6jQ");
            fVarC.a(context, new com.appsflyer.d() { // from class: com.roblox.client.i.d.1
                @Override // com.appsflyer.d
                public void a(Map<String, String> map) {
                }

                @Override // com.appsflyer.d
                public void a(String str) {
                }

                @Override // com.appsflyer.d
                public void b(Map<String, String> map) {
                }

                @Override // com.appsflyer.d
                public void b(String str) {
                }
            });
            fVarC.b(false);
            fVarC.a(false);
            this.f7172a = context;
        }
    }

    public void b() {
        com.roblox.client.util.g.b("AppsFlyerManager", "login");
        if (d()) {
            com.roblox.client.util.g.b("AppsFlyerManager", "enabled");
            com.appsflyer.f.c().a(this.f7172a, "af_login", (Map<String, Object>) null);
            a("loginReported", null);
            a("Android-AppsFlyer-Login");
        }
        if (com.roblox.client.q.d.a().g()) {
            com.appsflyer.f.c().c(true);
        }
    }

    public void c() {
        com.roblox.client.util.g.b("AppsFlyerManager", "signup");
        if (d()) {
            com.roblox.client.util.g.b("AppsFlyerManager", "enabled");
            com.appsflyer.f.c().a(this.f7172a, "af_complete_registration", (Map<String, Object>) null);
            a("signUpReported", null);
            a("Android-AppsFlyer-Registration");
        }
        if (com.roblox.client.q.d.a().g()) {
            com.appsflyer.f.c().c(true);
        }
    }

    public void a(String str, String str2, String str3, boolean z) {
        com.roblox.client.util.g.b("AppsFlyerManager", "Purchase. Price: " + str2 + ".");
        if (d()) {
            com.roblox.client.util.g.b("AppsFlyerManager", "enabled");
            HashMap map = new HashMap();
            map.put("af_revenue", str2 != null ? str2 : "0");
            map.put("af_currency", str3 != null ? str3 : "");
            map.put("af_content_id", str);
            map.put("af_param_1", z ? "Amazon" : "Android");
            com.appsflyer.f.c().a(this.f7172a, "af_purchase", map);
            a(str, str2, str3);
        }
    }

    private void a(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("productId", str));
        arrayList.add(new NameValuePair("price", str2));
        arrayList.add(new NameValuePair("currencyCode", str3));
        a("purchaseReported", arrayList);
        a("Android-AppsFlyer-Purchase");
    }

    private void a(String str, List<NameValuePair> list) {
        if (com.roblox.client.b.bI()) {
            i.a(str, "appsFlyer", list);
        }
    }

    private void a(String str) {
        if (com.roblox.client.b.bH()) {
            f.a().a(str);
        }
    }

    private boolean d() {
        return (!com.roblox.client.b.bn() || com.roblox.client.q.d.a().g() || com.roblox.client.d.b.a()) ? false : true;
    }
}
