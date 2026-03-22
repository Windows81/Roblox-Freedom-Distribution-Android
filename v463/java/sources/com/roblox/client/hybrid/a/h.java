package com.roblox.client.hybrid.a;

import android.content.Context;
import android.util.Log;
import com.roblox.a.c;
import com.roblox.client.pushnotification.l;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h extends com.roblox.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f6381a = h.class.getCanonicalName();

    public h(Context context) {
        super("Push");
        a("pushPermissionTrigger", new a(context));
    }

    private class a implements c.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f6383b;

        a(Context context) {
            this.f6383b = context.getApplicationContext();
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            Log.v(h.f6381a, "RBHybridModulePush PushPermissionTrigger.execute() " + aVar.c());
            if ("enableAuthorizationForUser".equalsIgnoreCase(aVar.c().optString("pushPermissionContext"))) {
                if (this.f6383b != null) {
                    l.a().a(this.f6383b, true);
                }
                aVar.a(true, null);
                return;
            }
            aVar.a(false, null);
        }
    }
}
