package com.roblox.client.realtime;

import com.roblox.client.h.q;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g implements j {
    @Override // com.roblox.client.realtime.j
    public boolean a(String str, String str2, long j) {
        if (com.roblox.client.b.bS()) {
            if ("PresenceBulkNotifications".equals(str)) {
                return b(str2);
            }
        } else if ("PresenceNotifications".equals(str)) {
            return a(str2);
        }
        return false;
    }

    private boolean a(String str) {
        long j = 0;
        try {
            j = new JSONObject(str).getLong("UserId");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        com.roblox.client.i.g.a().a(new q(j));
        return true;
    }

    private boolean b(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                long j = jSONObject.getLong("UserId");
                String strOptString = jSONObject.optString("Type");
                if (strOptString.isEmpty() || strOptString.equals("PresenceChanged")) {
                    arrayList.add(Long.valueOf(j));
                }
            }
        } catch (JSONException e) {
            com.roblox.client.util.g.b("Failed to parse payload from PresenceNotifications");
        }
        if (!arrayList.isEmpty()) {
            com.roblox.client.i.g.a().a(new q(arrayList));
            return true;
        }
        return true;
    }
}
