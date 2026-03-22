package com.roblox.client.locale.b;

import android.text.TextUtils;
import c.ad;
import com.roblox.client.ae.k;
import com.roblox.client.ae.p;
import com.roblox.client.analytics.d;
import com.roblox.client.locale.f;
import com.roblox.client.locale.g;
import com.roblox.platform.i;
import e.l;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public void a(Locale locale, final g gVar) {
        if (locale != null) {
            String language = locale.getLanguage();
            String country = locale.getCountry();
            k.b("rbx.locale", "deviceLocale: " + language + "-" + country);
            if (TextUtils.isEmpty(language) || TextUtils.isEmpty(country)) {
                d.a("device language is:" + language + ", device Country is:" + country);
            }
            i.a().a(com.roblox.client.http.k.a().b()).a(language + "-" + country).a(new e.d<ad>() { // from class: com.roblox.client.locale.b.a.1
                @Override // e.d
                public void a(e.b<ad> bVar, l<ad> lVar) {
                    a.this.a(p.a(lVar), lVar.a(), gVar);
                }

                @Override // e.d
                public void a(e.b<ad> bVar, Throwable th) {
                    a.this.a(gVar);
                }
            });
            return;
        }
        k.b("rbx.locale", "device locale null");
        d.a("device Locale is null");
        a(null, null, null, gVar);
    }

    void a(g gVar) {
        k.b("rbx.locale", " api failure");
        d.a("Api call to fetch user locale values from server failed");
        a(null, null, null, gVar);
    }

    void a(String str, int i, g gVar) {
        String strC;
        String strB;
        k.b("rbx.locale", "response: " + str + " ,response code:" + i);
        String str2 = null;
        if (i == 200) {
            try {
                com.roblox.client.locale.c.a aVar = new com.roblox.client.locale.c.a(new JSONObject(str));
                String strA = aVar.a();
                strC = aVar.c();
                str2 = strA;
                strB = aVar.b();
            } catch (JSONException e2) {
                e2.printStackTrace();
                d.a("JSONException thrown while parsing response to fetch user loginSignUpLocale, generalExperienceLocale and ugcLocale from server. Exception message: " + e2.getMessage());
                strB = null;
                strC = null;
            }
            k.b("rbx.locale", "loginSignUpLocale = " + str2);
            k.b("rbx.locale", "generalExperienceLocale = " + strC);
            k.b("rbx.locale", "ugcLocale = " + strB);
            a(str2, strC, strB, gVar);
        }
        k.b("rbx.locale", "response code != 200, response code = " + i);
        d.a("Unexpected response code: " + i + " received for getUserLocale api call from server.");
        strB = null;
        strC = null;
        k.b("rbx.locale", "loginSignUpLocale = " + str2);
        k.b("rbx.locale", "generalExperienceLocale = " + strC);
        k.b("rbx.locale", "ugcLocale = " + strB);
        a(str2, strC, strB, gVar);
    }

    void a(String str, String str2, String str3, g gVar) {
        if (gVar != null) {
            gVar.a(f.a(str), f.a(str2), str3);
        } else {
            d.a("OnLocaleValuesRetrievedListener received is null");
        }
    }
}
