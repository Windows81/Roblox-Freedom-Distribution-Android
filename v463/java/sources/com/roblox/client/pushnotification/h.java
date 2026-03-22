package com.roblox.client.pushnotification;

import android.content.Context;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {
    public void a(com.roblox.client.pushnotification.b.i iVar, Context context) {
        com.roblox.client.pushnotification.b.m mVarA = a(iVar);
        a(mVarA, context, a(iVar, mVarA));
    }

    public void a(Context context, String str, long j, String str2, boolean z) {
        com.roblox.client.pushnotification.b.a aVar = new com.roblox.client.pushnotification.b.a(str, j, str2, z);
        a(aVar, context, a(aVar));
    }

    private i a(com.roblox.client.pushnotification.b.i iVar, com.roblox.client.pushnotification.b.m mVar) {
        String strB;
        if (iVar == null || (strB = iVar.b()) == null) {
            return null;
        }
        if ("FriendRequestAccepted".equals(strB) || "FriendRequestReceived".equals(strB) || "PrivateMessageReceived".equals(strB)) {
            return o.a().a(strB);
        }
        if (mVar == null || !"ChatNewMessage".equals(strB)) {
            return null;
        }
        return a((com.roblox.client.pushnotification.b.b) mVar);
    }

    private i a(com.roblox.client.pushnotification.b.b bVar) {
        return o.a().a(bVar.m(), bVar.d());
    }

    void a(com.roblox.client.pushnotification.b.m mVar, Context context, i iVar) {
        if (mVar == null || iVar == null) {
            return;
        }
        iVar.a(context, mVar);
    }

    com.roblox.client.pushnotification.b.m a(com.roblox.client.pushnotification.b.i iVar) {
        String strB;
        com.roblox.client.pushnotification.b.m fVar;
        if (iVar == null || (strB = iVar.b()) == null) {
            return null;
        }
        try {
            if ("FriendRequestAccepted".equals(strB)) {
                fVar = new com.roblox.client.pushnotification.b.c(iVar);
            } else if ("FriendRequestReceived".equals(strB)) {
                fVar = new com.roblox.client.pushnotification.b.d(iVar);
            } else if ("PrivateMessageReceived".equals(strB)) {
                fVar = new com.roblox.client.pushnotification.b.f(iVar);
            } else {
                if ("ChatNewMessage".equals(strB)) {
                    return b(iVar);
                }
                return null;
            }
            return fVar;
        } catch (g e2) {
            com.roblox.client.analytics.d.a(e2.getMessage());
            return null;
        } catch (JSONException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private com.roblox.client.pushnotification.b.b b(com.roblox.client.pushnotification.b.i iVar) {
        try {
            return new com.roblox.client.pushnotification.b.b(iVar);
        } catch (g e2) {
            com.roblox.client.analytics.d.a(e2.getMessage());
            return null;
        } catch (JSONException e3) {
            e3.printStackTrace();
            return null;
        }
    }
}
