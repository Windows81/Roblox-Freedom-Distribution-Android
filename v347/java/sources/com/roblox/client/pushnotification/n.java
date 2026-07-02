package com.roblox.client.pushnotification;

import android.content.Context;
import com.roblox.client.RobloxSettings;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f7694a;

    public static n a() {
        if (f7694a == null) {
            synchronized (m.class) {
                if (f7694a == null) {
                    f7694a = new n();
                }
            }
        }
        return f7694a;
    }

    public m a(Context context) {
        if (b(context)) {
            return null;
        }
        if (com.roblox.client.util.h.a()) {
            return new com.roblox.client.a.a();
        }
        return new com.roblox.client.gcm.a();
    }

    boolean b(Context context) {
        return RobloxSettings.checkIfUserIsUnder13FromPreferences(context);
    }
}
