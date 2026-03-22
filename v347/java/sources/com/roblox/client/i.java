package com.roblox.client;

import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.http.s;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f7135a = null;

    public static void a(String str) {
        if (b.u()) {
            if (b.aI()) {
                com.roblox.client.b.b.a().a(str);
            } else {
                new s(RobloxSettings.evtAppLaunchUrl(str)).a();
            }
        }
    }

    public static void a(String str, String str2) {
        if (b.u()) {
            if (b.aI()) {
                com.roblox.client.b.b.a().a(str, str2);
            } else {
                new s(RobloxSettings.evtAppStageUrl(str, str2)).a();
            }
        }
    }

    public static void b(String str) {
        if (b.u()) {
            if (str == null || str.equalsIgnoreCase("splash") || f7135a == null || !f7135a.equalsIgnoreCase(str)) {
                com.roblox.client.util.g.c("rbx.eventstream", "fireScreenLoaded() " + str);
                f7135a = str;
                if (b.aI()) {
                    com.roblox.client.b.b.a().b(str);
                } else {
                    new s(RobloxSettings.evtScreenLoadedUrl(str)).a();
                }
            }
        }
    }

    public static void b(String str, String str2) {
        if (b.u()) {
            if (b.aI()) {
                com.roblox.client.b.b.a().b(str, str2);
            } else {
                d(RobloxSettings.evtButtonClickUrl(str, str2));
            }
        }
    }

    public static void a(String str, String str2, String str3) {
        if (b.u()) {
            if (b.aI()) {
                com.roblox.client.b.b.a().a(str, str2, str3);
            } else {
                d(RobloxSettings.evtButtonClickUrl(str, str2, str3));
            }
        }
    }

    private static void d(String str) {
        new s(str).a();
    }

    public static void a(String str, String str2, boolean z) {
        if (b.u()) {
            if (b.aI()) {
                com.roblox.client.b.b.a().a(str, str2, z);
            } else {
                e(RobloxSettings.evtFormFieldUrl(str, str2, z));
            }
        }
    }

    public static void a(String str, String str2, String str3, boolean z) {
        if (b.u()) {
            if (b.aI()) {
                com.roblox.client.b.b.a().a(str, str2, z, str3);
            } else {
                e(RobloxSettings.evtFormFieldUrl(str, str2, z, str3));
            }
        }
    }

    public static void b(String str, String str2, String str3) {
        if (b.u()) {
            if (b.aI()) {
                com.roblox.client.b.b.a().b(str, str2, str3);
            } else {
                e(RobloxSettings.evtFormFieldInteractionUrl(str, str2, str3));
            }
        }
    }

    private static void e(String str) {
        new s(str).a();
    }

    public static void a(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
        if (b.aI()) {
            com.roblox.client.b.b.a().a(str, str2, str3, str4, str5, str6, z);
            return;
        }
        String strEvtPushNotificationInteracted = RobloxSettings.evtPushNotificationInteracted(str, str2, str3, str4, str5, str6, Boolean.valueOf(z));
        com.roblox.client.util.g.a("RbxAnalytics", strEvtPushNotificationInteracted);
        new s(strEvtPushNotificationInteracted, new com.roblox.client.http.m() { // from class: com.roblox.client.i.1
            @Override // com.roblox.client.http.m
            public void a(com.roblox.client.http.j jVar) {
                com.roblox.client.util.g.a("RbxAnalytics", jVar.b() + " " + jVar.a());
            }
        }).a();
    }

    public static void a(String str, String str2, String str3, String str4, String str5, boolean z) {
        a(str, str2, str3, str4, null, str5, z);
    }

    public static void a(String str, String str2, String str3, String str4, String str5) {
        if (b.aI()) {
            com.roblox.client.b.b.a().a(str, str2, str3, str4, str5);
            return;
        }
        String strEvtPushNotificationReceived = RobloxSettings.evtPushNotificationReceived(str, str2, str3, str4, str5);
        com.roblox.client.util.g.a("RbxAnalytics", strEvtPushNotificationReceived);
        new s(strEvtPushNotificationReceived, new com.roblox.client.http.m() { // from class: com.roblox.client.i.2
            @Override // com.roblox.client.http.m
            public void a(com.roblox.client.http.j jVar) {
                com.roblox.client.util.g.a("RbxAnalytics", jVar.b() + " " + jVar.a());
            }
        }).a();
    }

    public static void c(String str, String str2, String str3) {
        a(str, str2, null, null, str3);
    }

    public static void c(String str) {
        if (b.aI()) {
            com.roblox.client.b.b.a().c(str);
            return;
        }
        String strEvtSharingAppSelected = RobloxSettings.evtSharingAppSelected(str);
        com.roblox.client.util.g.a("RbxAnalytics", strEvtSharingAppSelected);
        new s(strEvtSharingAppSelected, new com.roblox.client.http.m() { // from class: com.roblox.client.i.3
            @Override // com.roblox.client.http.m
            public void a(com.roblox.client.http.j jVar) {
                com.roblox.client.util.g.a("RbxAnalytics", jVar.b() + " " + jVar.a());
            }
        }).a();
    }

    public static void a(boolean z) {
        if (b.aI()) {
            com.roblox.client.b.b.a().a(z);
        }
    }

    public static void d(String str, String str2, String str3) {
        if (b.aI()) {
            com.roblox.client.b.b.a().c(str, str2, str3);
            return;
        }
        String strEvtFormSubmitFieldValue = RobloxSettings.evtFormSubmitFieldValue(str, str2, str3);
        com.roblox.client.util.g.a("RbxAnalytics", strEvtFormSubmitFieldValue);
        new s(strEvtFormSubmitFieldValue, new com.roblox.client.http.m() { // from class: com.roblox.client.i.4
            @Override // com.roblox.client.http.m
            public void a(com.roblox.client.http.j jVar) {
                com.roblox.client.util.g.a("RbxAnalytics", jVar.b() + " " + jVar.a());
            }
        }).a();
    }

    public static void a(String str, String str2, List<NameValuePair> list) {
        if (b.aI()) {
            com.roblox.client.b.b.a().a(str, str2, list);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(RobloxSettings.rbxAnalyticsUrl());
        sb.append("&evt=");
        sb.append(str);
        sb.append("&ctx=");
        sb.append(str2);
        if (list != null) {
            for (NameValuePair nameValuePair : list) {
                sb.append("&");
                sb.append(nameValuePair.getName());
                sb.append("=");
                sb.append(nameValuePair.getValue());
            }
        }
        new s(sb.toString()).a();
    }

    public static void c(String str, String str2) {
        a(str, str2, (List<NameValuePair>) null);
    }

    public static void a(String str, List<NameValuePair> list) {
        a(str, "contactFriendFinder", list);
    }

    public static void a(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("property", String.valueOf(i)));
        a("nsOpenContent", "touch", arrayList);
    }

    public static void b(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("property", String.valueOf(i)));
        a("chatOpen", "touch", arrayList);
    }

    public static void a() {
        if (b.aI()) {
            com.roblox.client.b.b.a().b();
        }
    }
}
