package com.roblox.client.pushnotification;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public void a(JSONObject jSONObject, Context context) throws JSONException {
        a(context, a(jSONObject), new h(), new d(), new c());
    }

    private com.roblox.client.pushnotification.b.i a(JSONObject jSONObject) {
        try {
            return new com.roblox.client.pushnotification.b.i(jSONObject);
        } catch (g e) {
            com.roblox.client.b.c.a(e.getMessage());
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    void a(Context context, com.roblox.client.pushnotification.b.i iVar, h hVar, d dVar, c cVar) throws JSONException {
        String strA;
        if (iVar != null && (strA = a(iVar)) != null) {
            if (hVar != null && ("FriendRequestAccepted".equals(strA) || "FriendRequestReceived".equals(strA) || "PrivateMessageReceived".equals(strA) || "ChatNewMessage".equals(strA))) {
                hVar.a(iVar, context);
                return;
            }
            if ("PushExpiryMessage".equals(strA) && dVar != null) {
                dVar.a(iVar, context);
            } else if ("PushCategoryExpiryMessage".equals(strA) && cVar != null) {
                cVar.a(iVar, context);
            }
        }
    }

    private String a(com.roblox.client.pushnotification.b.i iVar) {
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }
}
