package com.roblox.client.pushnotification.a;

import android.content.Context;
import b.ac;
import com.roblox.client.e.t;
import com.roblox.client.i;
import com.roblox.client.pushnotification.b.j;
import com.roblox.client.pushnotification.b.n;
import com.roblox.client.pushnotification.l;
import com.roblox.client.pushnotification.r;
import com.roblox.client.util.h;
import com.roblox.platform.g;
import com.roblox.platform.http.postbody.notifications.RegisterPushNotificationPostBody;
import d.b;
import d.d;
import org.greenrobot.eventbus.c;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public void a(Context context, String str, String str2, boolean z, l.a aVar) {
        a(context, str, z, str2, aVar);
    }

    private void a(final Context context, String str, boolean z, String str2, final l.a aVar) {
        b<ac> bVarA;
        RegisterPushNotificationPostBody registerPushNotificationPostBody = new RegisterPushNotificationPostBody(str, z, str2);
        if (h.a()) {
            bVarA = g.a().d().b(registerPushNotificationPostBody);
        } else {
            bVarA = g.a().d().a(registerPushNotificationPostBody);
        }
        bVarA.a(new d<ac>() { // from class: com.roblox.client.pushnotification.a.a.1
            @Override // d.d
            public void a(b<ac> bVar, d.l<ac> lVar) {
                if (lVar.a() == 200) {
                    try {
                        String strA = com.roblox.client.util.l.a(lVar);
                        com.roblox.client.util.g.a("rbx.push", strA);
                        a.this.a(aVar, new n(new JSONObject(strA)), context);
                        return;
                    } catch (JSONException e) {
                        e.printStackTrace();
                        c.a().c(new t("PushNotificationRegistrationFailed"));
                        return;
                    }
                }
                c.a().c(new t("PushNotificationRegistrationFailed"));
            }

            @Override // d.d
            public void a(b<ac> bVar, Throwable th) {
                c.a().c(new t("PushNotificationRegistrationFailed"));
            }
        });
    }

    void a(l.a aVar, n nVar, Context context) {
        aVar.a(nVar, context);
    }

    public void a(final Context context, final String str, String str2, String str3, final String str4, final r.a aVar) {
        g.a().d().a(str, str2, str3).a(new d<ac>() { // from class: com.roblox.client.pushnotification.a.a.2
            @Override // d.d
            public void a(b<ac> bVar, d.l<ac> lVar) {
                if (lVar.a() == 200) {
                    try {
                        String strA = com.roblox.client.util.l.a(lVar);
                        com.roblox.client.util.g.b("rbx.push", strA);
                        a.this.a(context, str, str4, aVar, new j(new JSONObject(strA)), new com.roblox.client.pushnotification.j());
                        return;
                    } catch (JSONException e) {
                        e.printStackTrace();
                        com.roblox.client.util.g.e("rbx.push", "RGLS.onMessageReceived() JSONException msg:" + e.getMessage());
                        i.c("metadataInaccessible", str, str4);
                        return;
                    }
                }
                if (lVar.a() == 401) {
                    i.c("unauthenticated", str, str4);
                } else {
                    i.c("metadataInaccessible", str, str4);
                }
            }

            @Override // d.d
            public void a(b<ac> bVar, Throwable th) {
                i.c("metadataInaccessible", str, str4);
            }
        });
    }

    void a(Context context, String str, String str2, r.a aVar, j jVar, com.roblox.client.pushnotification.j jVar2) {
        aVar.a(jVar, context, str, str2, jVar2);
    }
}
