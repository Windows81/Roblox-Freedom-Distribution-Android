package com.roblox.client.pushnotification;

import android.content.Context;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {
    public void a(com.roblox.client.pushnotification.b.i iVar, Context context) {
        com.roblox.client.pushnotification.b.h hVarA = a(iVar);
        if (hVarA != null) {
            String strA = a(hVarA);
            String strB = b(hVarA);
            if (strA != null && strB != null) {
                a(context, a(strA), strB);
            }
        }
    }

    private i a(String str) {
        return o.a().a(str);
    }

    com.roblox.client.pushnotification.b.h a(com.roblox.client.pushnotification.b.i iVar) {
        try {
            return new com.roblox.client.pushnotification.b.h(iVar);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private String a(com.roblox.client.pushnotification.b.h hVar) {
        if (hVar != null) {
            return hVar.a();
        }
        return null;
    }

    private String b(com.roblox.client.pushnotification.b.h hVar) {
        if (hVar != null) {
            return hVar.d();
        }
        return null;
    }

    void a(Context context, i iVar, String str) {
        if (iVar != null) {
            iVar.a(context, str);
        }
    }
}
