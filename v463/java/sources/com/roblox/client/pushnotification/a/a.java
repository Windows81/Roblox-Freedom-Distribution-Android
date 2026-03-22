package com.roblox.client.pushnotification.a;

import android.content.Context;
import c.ad;
import com.roblox.client.ae.k;
import com.roblox.client.ae.p;
import com.roblox.client.pushnotification.b.j;
import com.roblox.client.pushnotification.b.n;
import com.roblox.client.pushnotification.l;
import com.roblox.client.pushnotification.r;
import com.roblox.platform.http.postbody.notifications.RegisterPushNotificationPostBody;
import com.roblox.platform.i;
import e.b;
import e.d;
import org.greenrobot.eventbus.c;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public void a(Context context, String str, String str2, boolean z, l.a aVar) {
        a(context, str, z, str2, aVar);
    }

    private void a(final Context context, String str, boolean z, String str2, final l.a aVar) {
        RegisterPushNotificationPostBody registerPushNotificationPostBody = new RegisterPushNotificationPostBody(str, z, str2);
        b<ad> bVarA = com.roblox.client.l.a().a(registerPushNotificationPostBody);
        if (bVarA == null) {
            if (com.roblox.client.ae.l.a()) {
                bVarA = i.a().c().b(registerPushNotificationPostBody);
            } else {
                bVarA = i.a().c().a(registerPushNotificationPostBody);
            }
        }
        bVarA.a(new d<ad>() { // from class: com.roblox.client.pushnotification.a.a.1
            @Override // e.d
            public void a(b<ad> bVar, e.l<ad> lVar) {
                if (lVar.a() == 200) {
                    try {
                        String strA = p.a(lVar);
                        k.a("rbx.push", strA);
                        a.this.a(aVar, new n(new JSONObject(strA)), context);
                        return;
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        c.a().c(new com.roblox.client.l.l("PushNotificationRegistrationFailed"));
                        return;
                    }
                }
                c.a().c(new com.roblox.client.l.l("PushNotificationRegistrationFailed"));
            }

            @Override // e.d
            public void a(b<ad> bVar, Throwable th) {
                c.a().c(new com.roblox.client.l.l("PushNotificationRegistrationFailed"));
            }
        });
    }

    void a(l.a aVar, n nVar, Context context) {
        aVar.a(nVar, context);
    }

    public void a(final Context context, final String str, String str2, String str3, final String str4, final r.a aVar) {
        i.a().c().a(str, str2, str3).a(new d<ad>() { // from class: com.roblox.client.pushnotification.a.a.2
            @Override // e.d
            public void a(b<ad> bVar, e.l<ad> lVar) {
                if (lVar.a() == 200) {
                    try {
                        String strA = p.a(lVar);
                        k.b("rbx.push", strA);
                        a.this.a(context, str, str4, aVar, new j(new JSONObject(strA)), new com.roblox.client.pushnotification.j());
                        return;
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        k.e("rbx.push", "RGLS.onMessageReceived() JSONException msg:" + e2.getMessage());
                        com.roblox.client.p.d("metadataInaccessible", str, str4);
                        return;
                    }
                }
                if (lVar.a() == 401) {
                    com.roblox.client.p.d("unauthenticated", str, str4);
                } else {
                    com.roblox.client.p.d("metadataInaccessible", str, str4);
                }
            }

            @Override // e.d
            public void a(b<ad> bVar, Throwable th) {
                com.roblox.client.p.d("metadataInaccessible", str, str4);
            }
        });
    }

    void a(Context context, String str, String str2, r.a aVar, j jVar, com.roblox.client.pushnotification.j jVar2) {
        aVar.a(jVar, context, str, str2, jVar2);
    }
}
