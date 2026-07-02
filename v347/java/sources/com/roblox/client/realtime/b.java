package com.roblox.client.realtime;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements j {
    @Override // com.roblox.client.realtime.j
    public boolean a(String str, String str2, long j) {
        boolean zA = false;
        if (!"ChatPrivacySettingNotifications".equals(str)) {
            return false;
        }
        String string = null;
        try {
            string = new JSONObject(str2).getString("Type");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if ("ChatDisabled".equals(string)) {
            zA = com.roblox.client.chat.a.a.a().a(false);
        } else if ("ChatEnabled".equals(string)) {
            zA = com.roblox.client.chat.a.a.a().a(true);
        }
        if (zA) {
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.h(com.roblox.client.chat.a.a.a().h()));
        }
        return true;
    }
}
