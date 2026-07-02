package com.roblox.client.locale.a;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import com.roblox.client.locale.c;
import com.roblox.client.locale.e;
import com.roblox.client.util.g;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public void a(Context context, c cVar, e eVar) {
        if (!TextUtils.isEmpty(com.roblox.client.b.q())) {
            a(context, com.roblox.client.b.q(), ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, eVar);
            g.a("rbx.locale", "json response: " + com.roblox.client.b.q());
        }
    }

    void a(Context context, String str, int i, e eVar) {
        if (i == 200) {
            try {
                com.roblox.client.locale.b.b bVar = new com.roblox.client.locale.b.b(new JSONObject(str));
                eVar.a(a(context, bVar.b()), bVar.a());
                return;
            } catch (JSONException e) {
                g.e("rbx.locale", "Could not read updated strings");
                eVar.a(null, null);
                return;
            }
        }
        eVar.a(null, null);
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
                    com.roblox.client.locale.c.b bVarA = com.roblox.client.locale.c.b.a(context);
                    if (bVarA.a(strA) && bVarA.a(strA, string3)) {
                        map.put(strA, string3);
                    }
                } catch (JSONException e) {
                    g.e("rbx.locale", "Error reading updated string");
                }
            }
        }
        return map;
    }

    private String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str.replace(".", "_") + "_" + str2.replace(".", "_");
    }
}
