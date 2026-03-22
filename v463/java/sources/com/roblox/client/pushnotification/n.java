package com.roblox.client.pushnotification;

import android.content.Context;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f6849a;

    public static n a() {
        if (f6849a == null) {
            synchronized (m.class) {
                if (f6849a == null) {
                    f6849a = new n();
                }
            }
        }
        return f6849a;
    }

    public m a(Context context) {
        if (b(context)) {
            return null;
        }
        m mVarE = com.roblox.client.l.a().e();
        if (mVarE != null) {
            return mVarE;
        }
        if (com.roblox.client.ae.l.a()) {
            return new com.roblox.client.a.a();
        }
        return new com.roblox.client.fcm.a();
    }

    boolean b(Context context) {
        return u.d(context);
    }
}
