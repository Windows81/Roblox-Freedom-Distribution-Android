package com.roblox.client.ab.a;

import c.ad;
import com.roblox.client.ae.k;
import com.roblox.client.ae.p;
import com.roblox.platform.i;
import e.d;
import e.l;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public void a(long j, final com.roblox.client.ab.a aVar) {
        i.a().f().a(j).a(new d<ad>() { // from class: com.roblox.client.ab.a.a.1
            @Override // e.d
            public void a(e.b<ad> bVar, l<ad> lVar) {
                a.this.a(p.a(lVar), lVar.a(), aVar);
            }

            @Override // e.d
            public void a(e.b<ad> bVar, Throwable th) {
                a.this.a(aVar);
            }
        });
    }

    void a(com.roblox.client.ab.a aVar) {
        k.b("rbx.accountsettings", " api failure");
        com.roblox.client.analytics.d.a("Api call to fetch user theme values from server failed");
        a(aVar, (String) null);
    }

    void a(String str, int i, com.roblox.client.ab.a aVar) {
        String strA = null;
        if (i == 200) {
            try {
                strA = new b(new JSONObject(str)).a();
            } catch (JSONException e2) {
                e2.printStackTrace();
                com.roblox.client.analytics.d.a("JSONException thrown while parsing response to fetch user theme from server. Exception message: " + e2.getMessage());
            }
        } else {
            k.b("rbx.accountsettings", "response code != 200, response code = " + i);
            com.roblox.client.analytics.d.a("Unexpected response code: " + i + " received for getUserSelectedTheme api call from server.");
        }
        a(aVar, strA);
    }

    void a(com.roblox.client.ab.a aVar, String str) {
        if (aVar != null) {
            aVar.a(str);
        } else {
            com.roblox.client.analytics.d.a("OnUserSelectedThemeRetrievedListener received is null");
        }
    }
}
