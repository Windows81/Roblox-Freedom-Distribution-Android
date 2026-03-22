package com.roblox.client.pushnotification;

import android.content.Context;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {
    public void a(com.roblox.client.pushnotification.b.i iVar, Context context) {
        long jC;
        com.roblox.client.pushnotification.b.g gVarA = a(iVar);
        if (gVarA != null) {
            String strA = a(gVarA);
            String strB = b(gVarA);
            if (strB != null && strA != null) {
                jC = c(strB);
                switch (strA) {
                    case "FriendRequestReceived":
                    case "FriendRequestAccepted":
                    case "PrivateMessageReceived":
                        a(b(strA), context, jC);
                        break;
                    case "ChatNewMessage":
                        a(a(gVarA.e()), context, jC);
                        break;
                }
            }
        }
    }

    private i a(String str) {
        return o.a().b(str);
    }

    private i b(String str) {
        return o.a().a(str);
    }

    private long c(String str) {
        return com.roblox.client.util.d.b(str);
    }

    private String a(com.roblox.client.pushnotification.b.g gVar) {
        if (gVar != null) {
            return gVar.a();
        }
        return null;
    }

    private String b(com.roblox.client.pushnotification.b.g gVar) {
        if (gVar != null) {
            return gVar.d();
        }
        return null;
    }

    com.roblox.client.pushnotification.b.g a(com.roblox.client.pushnotification.b.i iVar) {
        try {
            return new com.roblox.client.pushnotification.b.g(iVar);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    void a(i iVar, Context context, long j) {
        if (iVar != null) {
            iVar.a(context, j);
        }
    }
}
