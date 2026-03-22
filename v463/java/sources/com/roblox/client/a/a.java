package com.roblox.client.a;

import android.content.Context;
import com.roblox.client.pushnotification.b.k;
import com.roblox.client.pushnotification.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements m {
    @Override // com.roblox.client.pushnotification.m
    public void a(Context context, boolean z) {
    }

    @Override // com.roblox.client.pushnotification.m
    public String b() {
        return "ADMToken";
    }

    @Override // com.roblox.client.pushnotification.m
    public String c() {
        return "ADM_PLATFORM";
    }

    @Override // com.roblox.client.pushnotification.m
    public k a() {
        return k.AMAZON_DEVICE_MESSAGING;
    }
}
