package com.roblox.client.realtime;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements g {
    @Override // com.roblox.client.realtime.g
    public boolean a(String str, String str2) {
        if ("FriendshipNotifications".equals(str)) {
            return a(str2);
        }
        return false;
    }

    private boolean a(String str) throws JSONException {
        long j;
        long j2;
        long j3;
        long j4 = 0;
        String string = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            string = jSONObject.getString("Type");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("EventArgs");
            if (jSONObjectOptJSONObject != null) {
                j = jSONObjectOptJSONObject.getLong("UserId1");
                try {
                    j4 = j;
                    j3 = jSONObjectOptJSONObject.getLong("UserId2");
                } catch (JSONException e2) {
                    e = e2;
                    e.printStackTrace();
                    j2 = j;
                }
            } else {
                j3 = 0;
            }
            j2 = j4;
            j4 = j3;
        } catch (JSONException e3) {
            e = e3;
            j = 0;
        }
        long jA = a(j2, j4);
        if (jA == -1) {
            return false;
        }
        com.roblox.client.e.a.a aVarA = com.roblox.client.e.a.b.a().a(jA);
        if ("FriendshipCreated".equals(string)) {
            if (aVarA != null) {
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.f(aVarA, j2, 0));
            } else {
                com.roblox.client.s.g.a().a(new com.roblox.client.r.e(jA, j2, true));
            }
        } else if ("FriendshipDestroyed".equals(string)) {
            if (aVarA == null) {
                aVarA = new com.roblox.client.e.a.a(jA, "unknown");
            }
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.f(aVarA, j2, 1));
        } else if ("FriendshipRequested".equals(string)) {
            if (com.roblox.client.b.aA()) {
                if (aVarA == null) {
                    aVarA = new com.roblox.client.e.a.a(jA, "unknown");
                }
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.f(aVarA, j2, 2));
            }
        } else {
            if (!"FriendshipDeclined".equals(string)) {
                return false;
            }
            if (com.roblox.client.b.aA()) {
                if (aVarA == null) {
                    aVarA = new com.roblox.client.e.a.a(jA, "unknown");
                }
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.f(aVarA, j4, 3));
            }
        }
        return true;
    }

    private long a(long j, long j2) {
        if (com.roblox.client.s.h.a().b() == j) {
            return j2;
        }
        if (com.roblox.client.s.h.a().b() == j2) {
            return j;
        }
        return -1L;
    }
}
