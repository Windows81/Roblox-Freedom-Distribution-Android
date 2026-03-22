package com.roblox.client.app;

import android.app.Activity;
import android.content.Intent;
import com.roblox.client.ae.k;
import com.roblox.client.g.a;
import com.roblox.engine.jni.memstorage.Callback;
import com.roblox.engine.jni.memstorage.Connection;
import com.roblox.engine.jni.memstorage.MemStorage;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.g.a f5720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Connection f5721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Activity f5722c;

    public c(Activity activity) {
        this.f5722c = activity;
    }

    public void a() {
        this.f5720a = new com.roblox.client.y.a(this.f5722c, new com.roblox.client.g.b());
        this.f5721b = MemStorage.bind("AuthenticatedCredentials", new Callback() { // from class: com.roblox.client.app.c.1
            public void onItemSet(String str) {
                JSONObject jSONObject;
                try {
                    jSONObject = new JSONObject(str);
                } catch (JSONException unused) {
                    k.e("rbx.LuaSmartLockBridge", "Failed to convert JSON");
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    String strOptString = jSONObject.optString("cvalue");
                    String strOptString2 = jSONObject.optString("password");
                    String strOptString3 = jSONObject.optString("authType");
                    if (strOptString.isEmpty() || strOptString2.isEmpty()) {
                        return;
                    }
                    c.this.a(new com.roblox.client.g.c(strOptString, strOptString2, ""), strOptString3.equals("signup") ? 10122 : 10119);
                }
            }
        });
    }

    public void b() {
        Connection connection = this.f5721b;
        if (connection != null) {
            connection.disconnect();
            this.f5721b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.g.c cVar) {
        MemStorage.setItem("AutoFillCredentials", cVar.a());
    }

    public void a(int i, Intent intent) {
        if (i == -1) {
            this.f5720a.c();
            a(this.f5720a.a(intent));
        }
    }

    public void c() {
        this.f5720a.a(this.f5722c, 10121, new a.b() { // from class: com.roblox.client.app.c.2
            @Override // com.roblox.client.g.a.b
            public void a(com.roblox.client.g.c cVar) {
                c.this.a(cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.g.c cVar, int i) {
        this.f5720a.a(this.f5722c, i, cVar, new a.InterfaceC0146a() { // from class: com.roblox.client.app.c.3
            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void a() {
            }

            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void b() {
            }

            @Override // com.roblox.client.g.a.InterfaceC0146a
            public void c() {
            }
        });
    }
}
