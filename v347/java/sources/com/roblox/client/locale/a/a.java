package com.roblox.client.locale.a;

import android.text.TextUtils;
import b.ac;
import com.roblox.client.b.c;
import com.roblox.client.http.k;
import com.roblox.client.locale.d;
import com.roblox.client.util.g;
import d.l;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public void a(Locale locale, final d dVar) {
        if (locale != null) {
            String language = locale.getLanguage();
            String country = locale.getCountry();
            g.b("rbx.locale", "deviceLocale: " + language + "-" + country);
            if (TextUtils.isEmpty(language) || TextUtils.isEmpty(country)) {
                c.a("device language is:" + language + ", device Country is:" + country);
            }
            com.roblox.platform.g.a().a(k.a().b()).a(language + "-" + country).a(new d.d<ac>() { // from class: com.roblox.client.locale.a.a.1
                @Override // d.d
                public void a(d.b<ac> bVar, l<ac> lVar) {
                    a.this.a(com.roblox.client.util.l.a(lVar), lVar.a(), dVar);
                }

                @Override // d.d
                public void a(d.b<ac> bVar, Throwable th) {
                    a.this.a(dVar);
                }
            });
            return;
        }
        g.b("rbx.locale", "device locale null");
        c.a("device Locale is null");
        a(null, null, null, dVar);
    }

    void a(d dVar) {
        g.b("rbx.locale", " api failure");
        c.a("Api call to fetch user locale values from server failed");
        a(null, null, null, dVar);
    }

    void a(String str, int i, d dVar) {
        String strC;
        String strA;
        String strB = null;
        g.b("rbx.locale", "response: " + str + " ,response code:" + i);
        if (i == 200) {
            try {
                com.roblox.client.locale.b.a aVar = new com.roblox.client.locale.b.a(new JSONObject(str));
                strA = aVar.a();
                strC = aVar.c();
                strB = aVar.b();
            } catch (JSONException e) {
                e.printStackTrace();
                c.a("JSONException thrown while parsing response to fetch user loginSignUpLocale, generalExperienceLocale and ugcLocale from server. Exception message: " + e.getMessage());
                strC = null;
                strA = null;
            }
        } else {
            g.b("rbx.locale", "response code != 200, response code = " + i);
            c.a("Unexpected response code: " + i + " received for getUserLocale api call from server.");
            strC = null;
            strA = null;
        }
        g.b("rbx.locale", "loginSignUpLocale = " + strA);
        g.b("rbx.locale", "generalExperienceLocale = " + strC);
        g.b("rbx.locale", "ugcLocale = " + strB);
        a(strA, strC, strB, dVar);
    }

    void a(String str, String str2, String str3, d dVar) {
        if (dVar != null) {
            dVar.a(com.roblox.client.locale.c.a(str), com.roblox.client.locale.c.a(str2), com.roblox.client.locale.c.a(str3));
        } else {
            c.a("OnLocaleValuesRetrievedListener received is null");
        }
    }
}
