package com.roblox.client.realtime;

import com.roblox.client.e.w;
import com.roblox.client.http.o;
import com.roblox.client.util.n;
import com.roblox.engine.jni.NativeGLInterface;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f implements j {
    @Override // com.roblox.client.realtime.j
    public boolean a(String str, String str2, long j) {
        return "NotificationStream".equals(str) && a(str2);
    }

    private boolean a(String str) {
        String string = null;
        try {
            string = new JSONObject(str).getString("Type");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if ("NewNotification".equals(string) || "NotificationRevoked".equals(string)) {
            o.a();
            return true;
        }
        if (!"NotificationsRead".equals(string)) {
            return false;
        }
        com.roblox.client.q.d.a().c(0);
        org.greenrobot.eventbus.c.a().c(new w(0));
        a(0);
        return true;
    }

    public static void a(int i) {
        if (com.roblox.client.b.bY()) {
            NativeGLInterface.nativeBroadcastEventWithNamespace("UpdateNotificationBadge", n.a("{\"badgeString\":\"%d\"}", Integer.valueOf(i)), "NotificationIcon");
        }
    }
}
