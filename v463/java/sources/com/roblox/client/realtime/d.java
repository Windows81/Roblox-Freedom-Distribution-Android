package com.roblox.client.realtime;

import com.roblox.client.ae.t;
import com.roblox.client.http.n;
import com.roblox.engine.jni.NativeGLInterface;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements g {
    @Override // com.roblox.client.realtime.g
    public boolean a(String str, String str2) {
        return "NotificationStream".equals(str) && a(str2);
    }

    private boolean a(String str) {
        String string;
        try {
            string = new JSONObject(str).getString("Type");
        } catch (JSONException e2) {
            e2.printStackTrace();
            string = null;
        }
        if ("NewNotification".equals(string) || "NotificationRevoked".equals(string)) {
            n.a();
            return true;
        }
        if (!"NotificationsRead".equals(string)) {
            return false;
        }
        com.roblox.client.ad.c.a().a(0);
        org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.n(0));
        a(0);
        return true;
    }

    public static void a(int i) {
        if (com.roblox.client.b.bf()) {
            NativeGLInterface.nativeBroadcastEventWithNamespace("UpdateNotificationBadge", t.a("{\"badgeString\":\"%d\"}", Integer.valueOf(i)), "NotificationIcon");
        }
    }
}
