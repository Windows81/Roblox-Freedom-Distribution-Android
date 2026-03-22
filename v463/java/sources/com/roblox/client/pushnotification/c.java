package com.roblox.client.pushnotification;

import android.content.Context;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void a(com.roblox.client.pushnotification.b.i iVar, Context context) {
        com.roblox.client.pushnotification.b.g gVarA = a(iVar);
        if (gVarA != null) {
            String strA = a(gVarA);
            String strB = b(gVarA);
            if (strB == null || strA == null) {
                return;
            }
            long jC = c(strB);
            byte b2 = -1;
            switch (strA.hashCode()) {
                case 624927928:
                    if (strA.equals("FriendRequestAccepted")) {
                        b2 = 1;
                    }
                    break;
                case 929482719:
                    if (strA.equals("ChatNewMessage")) {
                        b2 = 3;
                    }
                    break;
                case 1050705701:
                    if (strA.equals("PrivateMessageReceived")) {
                        b2 = 2;
                    }
                    break;
                case 1962733298:
                    if (strA.equals("FriendRequestReceived")) {
                        b2 = 0;
                    }
                    break;
            }
            if (b2 == 0 || b2 == 1 || b2 == 2) {
                a(b(strA), context, jC);
            } else {
                if (b2 != 3) {
                    return;
                }
                a(a(gVarA.e()), context, jC);
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
        return com.roblox.client.ae.e.b(str);
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
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    void a(i iVar, Context context, long j) {
        if (iVar != null) {
            iVar.a(context, j);
        }
    }
}
