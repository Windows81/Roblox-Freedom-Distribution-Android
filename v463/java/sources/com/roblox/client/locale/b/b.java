package com.roblox.client.locale.b;

import android.content.Context;
import android.text.TextUtils;
import c.ad;
import com.roblox.client.ae.k;
import com.roblox.client.ae.p;
import com.roblox.client.locale.f;
import com.roblox.client.locale.h;
import com.roblox.platform.i;
import e.d;
import e.l;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f6467a = Pattern.compile("\\{var\\d+\\}");

    public void a(final Context context, f fVar, final h hVar) {
        i.a().e().a(fVar.a()).a(new d<ad>() { // from class: com.roblox.client.locale.b.b.1
            @Override // e.d
            public void a(e.b<ad> bVar, l<ad> lVar) {
                b.this.a(context, p.a(lVar), lVar.a(), hVar);
            }

            @Override // e.d
            public void a(e.b<ad> bVar, Throwable th) {
                b.this.a(hVar);
            }
        });
    }

    void a(Context context, String str, int i, h hVar) {
        if (i == 200) {
            try {
                com.roblox.client.locale.c.b bVar = new com.roblox.client.locale.c.b(new JSONObject(str));
                hVar.a(a(context, bVar.b()), bVar.a());
                return;
            } catch (JSONException unused) {
                k.e("rbx.locale", "Could not read updated strings");
                hVar.a(null, null);
                return;
            }
        }
        hVar.a(null, null);
    }

    private HashMap<String, String> a(Context context, JSONArray jSONArray) {
        HashMap<String, String> map = new HashMap<>();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    String string = jSONObject.getString("namespace");
                    String string2 = jSONObject.getString("key");
                    String string3 = jSONObject.getString("translation");
                    String strA = a(string, string2);
                    com.roblox.client.locale.d.b bVarA = com.roblox.client.locale.d.b.a(context);
                    if (!TextUtils.isEmpty(string3)) {
                        string3 = a(string3);
                    }
                    if (bVarA.a(strA) && bVarA.a(strA, string3)) {
                        map.put(strA, string3);
                    }
                } catch (JSONException unused) {
                    k.e("rbx.locale", "Error reading updated string");
                }
            }
        }
        return map;
    }

    String a(String str) {
        try {
            Matcher matcher = f6467a.matcher(str);
            String strReplace = str;
            while (matcher.find()) {
                String strSubstring = str.substring(matcher.start(), matcher.end());
                k.a("rbx.locale", "placeHolderString: " + strSubstring);
                strReplace = strReplace.replace(strSubstring, "%" + strSubstring.substring(4, strSubstring.length() + (-1)) + "$s");
            }
            k.a("rbx.locale", "androidCompatibleString: " + strReplace);
            return strReplace;
        } catch (Exception e2) {
            com.roblox.client.analytics.d.a("Exception thrown in GetUpdatedStringsFromServerRequest updatePlaceHoldersToAndroidFormat() " + e2.getMessage());
            return str;
        }
    }

    private String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str.replace(".", "_") + "_" + str2.replace(".", "_");
    }

    void a(h hVar) {
        hVar.a(null, null);
    }
}
