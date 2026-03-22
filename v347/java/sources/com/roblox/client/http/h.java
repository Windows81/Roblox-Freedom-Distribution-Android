package com.roblox.client.http;

import com.roblox.client.RobloxSettings;
import com.roblox.client.http.b;
import com.roblox.client.http.post.GsonCompatibleRequestBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h implements f {
    @Override // com.roblox.client.http.f
    public d a(String str, String str2, b.a[] aVarArr, l lVar, String str3) {
        return new d(str, str2, str3, lVar, aVarArr);
    }

    @Override // com.roblox.client.http.f
    public d a(String str, GsonCompatibleRequestBody gsonCompatibleRequestBody, b.a[] aVarArr, l lVar) {
        return new d(str, new com.google.gson.e().b(gsonCompatibleRequestBody), RobloxSettings.getJsonContentType(), lVar, aVarArr);
    }

    @Override // com.roblox.client.http.f
    public c a(String str, b.a[] aVarArr, l lVar) {
        return new c(str, lVar, aVarArr);
    }
}
