package com.roblox.client.realtime;

import com.roblox.client.h.r;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e implements j {
    @Override // com.roblox.client.realtime.j
    public boolean a(String str, String str2, long j) {
        if ("ChatNotifications".equals(str)) {
            return a(str2);
        }
        return false;
    }

    private boolean a(String str) {
        try {
            String string = new JSONObject(str).getString("Type");
            if ("NewMessage".equals(string) || "RemovedFromConversation".equals(string) || "ConversationRemoved".equals(string) || "AddedToConversation".equals(string) || "NewConversation".equals(string)) {
                com.roblox.client.i.g.a().a(new r());
            }
            return true;
        } catch (JSONException e) {
            return false;
        }
    }
}
