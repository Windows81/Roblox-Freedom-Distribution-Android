package com.roblox.client.realtime;

import com.roblox.client.ae.k;
import com.roblox.client.hybrid.a.i;
import com.roblox.client.j;
import com.roblox.client.l.m;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.realtime.SignalRInterface;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends a implements com.roblox.engine.jni.realtime.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f6947c = new f();

    c() {
        k.c("rbx.signalr", "[CONSTRUCTOR]:");
    }

    @Override // com.roblox.client.realtime.a
    public void c() {
        k.c("rbx.signalr", "start: ....");
        SignalRInterface.nativeStartSignalR(this, u.Y(), com.roblox.platform.http.h.b().a(u.d()), u.t(), com.roblox.client.b.Z() ? j.a().c() : null, com.roblox.client.b.ab() ? j.a().e() : null);
        if (com.roblox.client.b.bW()) {
            NativeGLInterface.antiAddictionStart();
        }
        k.b("rbx.signalr", "start: ... END.");
    }

    @Override // com.roblox.client.realtime.a
    public void a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("stop: destroy = ");
        sb.append(z ? "Yes" : "No");
        k.b("rbx.signalr", sb.toString());
        SignalRInterface.nativeStopSignalR(z);
        if (com.roblox.client.b.bW()) {
            NativeGLInterface.antiAddictionStop();
        }
        k.b("rbx.signalr", "stop: ... END.");
    }

    @Override // com.roblox.client.realtime.a
    public void a(String str, g gVar) {
        this.f6947c.a(str, gVar);
    }

    private void a(String str, String str2, long j) {
        this.f6947c.a(str, str2);
    }

    @Deprecated
    private void a(long j) {
        if (j != -1) {
            f6946b = j;
        }
    }

    private void a(boolean z, ArrayList<String> arrayList, String str) {
        k.c("rbx.signalr", "postSignalRConnectivityChangeEvent() " + z + " prev:" + f6945a + " updatedChannels:" + arrayList);
        if (f6945a != z) {
            f6945a = z;
            org.greenrobot.eventbus.c.a().c(new m(z, arrayList));
            i.a(z, b(), b(str));
            if (com.roblox.client.b.x()) {
                String string = Long.toString(b());
                if (str == null || str.isEmpty()) {
                    str = "{}";
                }
                NativeGLInterface.nativeBroadcastConnection(z ? 1 : 0, string, str);
            }
        }
    }

    public void callbackOnDisconnectedEvent() {
        k.c("rbx.signalr", "callbackOnDisconnectedEvent()");
        a(false, (ArrayList<String>) null, (String) null);
    }

    public void callbackOnSubscriptionEvent(long j, String str) {
        long jB = b();
        k.c("rbx.signalr", "callbackOnSubscriptionEvent: sequence=" + j + " prev=" + jB + " namespaceSequenceNumbers=" + str);
        a(j);
        if (j <= jB) {
            int i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
        }
        JSONObject jSONObjectB = b(str);
        ArrayList<String> arrayListA = e.a().a(jSONObjectB);
        e.a().b(jSONObjectB);
        a(true, arrayListA, str);
    }

    public void callbackOnNotificationEvent(String str, String str2, long j) {
        k.c("rbx.signalr", "callbackOnNotificationEvent: event=" + str + ", payload=" + str2 + ", sequence=" + j);
        a(j);
        JSONObject jSONObjectB = b(str2);
        if (jSONObjectB.has("SequenceNumber")) {
            e.a().a(str, jSONObjectB.optLong("SequenceNumber"));
        }
        a(str, str2, j);
        i.a(str, str2, j);
        if (com.roblox.client.b.x()) {
            NativeGLInterface.nativeBroadcastEventWithNamespace(str, str2, a(str2));
        }
    }

    public JSONObject b(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                return new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        return new JSONObject();
    }
}
