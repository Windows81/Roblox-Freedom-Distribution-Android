package com.roblox.client.s;

import com.roblox.client.ae.k;
import com.roblox.client.http.n;
import com.roblox.client.l.m;
import com.roblox.platform.i;
import java.util.ArrayList;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f6988a = new b();
    }

    public static b a() {
        return a.f6988a;
    }

    private b() {
    }

    @j(a = ThreadMode.MAIN)
    public void onSignalRConnectivityChangeEvent(m mVar) {
        ArrayList<String> arrayListB = mVar.b();
        k.a("rbx.signalr", "EventSubscriber.onSignalRConnectivityChangeEvent() connected:" + mVar.a() + " updates:" + arrayListB);
        if (!mVar.a() || arrayListB == null || arrayListB.isEmpty()) {
            return;
        }
        if (arrayListB.contains("FriendshipNotifications")) {
            i.a().d().d().a(new com.roblox.client.b.a());
        }
        if (arrayListB.contains("NotificationStream")) {
            n.a();
        }
    }
}
