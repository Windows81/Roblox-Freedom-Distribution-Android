package com.roblox.client.q;

import android.content.Context;
import android.os.Build;
import com.roblox.client.RobloxApplication;
import com.roblox.client.ae.k;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends com.roblox.engine.jni.locale.a {
    private static Context d() {
        return RobloxApplication.b();
    }

    @Override // com.roblox.engine.jni.locale.a
    public String a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return d().getResources().getConfiguration().getLocales().get(0).toString();
        }
        return d().getResources().getConfiguration().locale.toString();
    }

    @Override // com.roblox.engine.jni.locale.a
    public String b() {
        return com.roblox.client.locale.b.a().b().a();
    }

    @Override // com.roblox.engine.jni.locale.a
    public String c() {
        String strC = com.roblox.client.locale.b.a().c(d());
        if (strC != null) {
            k.a("rbx.locale", "ugcLocaleCode : " + strC);
            return strC;
        }
        return b();
    }
}
