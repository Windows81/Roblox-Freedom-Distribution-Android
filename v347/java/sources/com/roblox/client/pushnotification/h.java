package com.roblox.client.pushnotification;

import android.content.Context;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
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
        if (iVar != null && (strB = iVar.b()) != null) {
            if ("FriendRequestAccepted".equals(strB) || "FriendRequestReceived".equals(strB) || "PrivateMessageReceived".equals(strB)) {
                return o.a().a(strB);
            }
            if (mVar != null && "ChatNewMessage".equals(strB)) {
                return a((com.roblox.client.pushnotification.b.b) mVar);
            }
        }
        return null;
    }

    private i a(com.roblox.client.pushnotification.b.b bVar) {
        return o.a().a(bVar.k(), bVar.d());
    }

    void a(com.roblox.client.pushnotification.b.m mVar, Context context, i iVar) {
        if (mVar != null && iVar != null) {
            iVar.a(context, mVar);
        }
    }

    com.roblox.client.pushnotification.b.m a(com.roblox.client.pushnotification.b.i iVar) {
        String strB;
        com.roblox.client.pushnotification.b.m mVarB;
        if (iVar == null || (strB = iVar.b()) == null) {
            return null;
        }
        try {
            if ("FriendRequestAccepted".equals(strB)) {
                mVarB = new com.roblox.client.pushnotification.b.c(iVar);
            } else if ("FriendRequestReceived".equals(strB)) {
                mVarB = new com.roblox.client.pushnotification.b.d(iVar);
            } else if ("PrivateMessageReceived".equals(strB)) {
                mVarB = new com.roblox.client.pushnotification.b.f(iVar);
            } else if (!"ChatNewMessage".equals(strB)) {
                mVarB = null;
            } else {
                mVarB = b(iVar);
            }
            return mVarB;
        } catch (g e) {
            com.roblox.client.b.c.a(e.getMessage());
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private com.roblox.client.pushnotification.b.b b(com.roblox.client.pushnotification.b.i iVar) {
        try {
            return new com.roblox.client.pushnotification.b.b(iVar);
        } catch (g e) {
            com.roblox.client.b.c.a(e.getMessage());
            return null;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
