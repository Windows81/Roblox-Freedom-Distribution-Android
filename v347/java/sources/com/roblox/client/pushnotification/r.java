package com.roblox.client.pushnotification;

import android.content.Context;
import com.roblox.client.i.c;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f7711a = new a() { // from class: com.roblox.client.pushnotification.r.1
        @Override // com.roblox.client.pushnotification.r.a
        public void a(com.roblox.client.pushnotification.b.j jVar, Context context, String str, String str2, j jVar2) {
            if (jVar != null) {
                JSONObject jSONObjectA = jVar.a();
                try {
                    jVar2.a(jSONObjectA, context);
                    com.roblox.client.i.a("onMetadataRetrieved", str, jSONObjectA.getString("type"), jSONObjectA.getString("notificationId"), str2);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    };

    public interface a {
        void a(com.roblox.client.pushnotification.b.j jVar, Context context, String str, String str2, j jVar2);
    }

    private q a() {
        return new q();
    }

    String a(Context context, String str, q qVar) {
        return qVar.a(context, str);
    }

    public void a(Context context, String str) {
        if (context != null && str != null) {
            q qVarA = a();
            String strA = a(context, l.a().c(context), qVarA);
            String strA2 = a(context, l.a().b(context), qVarA);
            String strA3 = a(context);
            com.roblox.client.i.c.a().a(context, c.b.APP_INIT_TYPE_SHELL);
            com.roblox.client.http.b.a(context);
            a(context, new com.roblox.client.pushnotification.a.a(), strA, strA2, str, strA3, this.f7711a);
        }
    }

    void a(Context context, com.roblox.client.pushnotification.a.a aVar, String str, String str2, String str3, String str4, a aVar2) {
        com.roblox.client.util.g.a("rbx.push", str + " " + str2 + " " + context);
        if (str != null && str2 != null && context != null) {
            aVar.a(context, str, str2, str3, str4, aVar2);
        }
    }

    private String a(Context context) {
        return com.roblox.client.util.k.c(context);
    }
}
