package com.roblox.client.b;

import c.ad;
import e.l;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends com.roblox.platform.http.a.a<ad> {
    @Override // com.roblox.platform.http.a.a, e.d
    public void a(e.b<ad> bVar, l<ad> lVar) {
        try {
            com.roblox.client.e.a.b.a().a(new JSONObject(lVar.e().g()).getInt("count"));
        } catch (IOException | NullPointerException | JSONException unused) {
        }
    }
}
