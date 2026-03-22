package com.roblox.client.pushnotification;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {
    public void a(JSONObject jSONObject, Context context) throws JSONException {
        a(context, a(jSONObject), new h(), new d(), new c());
    }

    private com.roblox.client.pushnotification.b.i a(JSONObject jSONObject) {
        try {
            return new com.roblox.client.pushnotification.b.i(jSONObject);
        } catch (g e2) {
            com.roblox.client.analytics.d.a(e2.getMessage());
            return null;
        } catch (JSONException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    void a(Context context, com.roblox.client.pushnotification.b.i iVar, h hVar, d dVar, c cVar) throws JSONException {
        String strA;
        if (iVar == null || (strA = a(iVar)) == null) {
            return;
        }
        if (hVar != null && ("FriendRequestAccepted".equals(strA) || "FriendRequestReceived".equals(strA) || "PrivateMessageReceived".equals(strA) || "ChatNewMessage".equals(strA))) {
            hVar.a(iVar, context);
            return;
        }
        if ("PushExpiryMessage".equals(strA) && dVar != null) {
            dVar.a(iVar, context);
        } else {
            if (!"PushCategoryExpiryMessage".equals(strA) || cVar == null) {
                return;
            }
            cVar.a(iVar, context);
        }
    }

    private String a(com.roblox.client.pushnotification.b.i iVar) {
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }
}
