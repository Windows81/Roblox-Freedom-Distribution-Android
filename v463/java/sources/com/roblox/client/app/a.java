package com.roblox.client.app;

import android.os.Handler;
import com.roblox.client.ae.k;
import com.roblox.engine.jni.memstorage.Callback;
import com.roblox.engine.jni.memstorage.Connection;
import com.roblox.engine.jni.memstorage.MemStorage;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5702a = "rbx.browserservice";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f5703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InterfaceC0126a f5704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Connection f5705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Connection f5706e;
    private Connection f;

    /* JADX INFO: renamed from: com.roblox.client.app.a$a, reason: collision with other inner class name */
    public interface InterfaceC0126a {
        void A();

        void a(d dVar);

        void b(d dVar);
    }

    public a(InterfaceC0126a interfaceC0126a, Handler handler) {
        this.f5704c = interfaceC0126a;
        this.f5703b = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Runnable runnable) {
        this.f5703b.post(runnable);
    }

    public void a() {
        this.f5705d = MemStorage.bind("BrowserService.OpenBrowserWindow", new Callback() { // from class: com.roblox.client.app.a.1
            public void onItemSet(String str) {
                k.c("rbx.browserservice", "BrowserService.OpenBrowserWindow : " + str);
                final d dVar = new d(str);
                a.this.a(new Runnable() { // from class: com.roblox.client.app.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f5704c.a(dVar);
                    }
                });
            }
        });
        this.f5706e = MemStorage.bind("BrowserService.CloseBrowserWindow", new Callback() { // from class: com.roblox.client.app.a.2
            public void onItemSet(String str) {
                k.c("rbx.browserservice", "BrowserService.CloseBrowserWindow");
                a.this.a(new Runnable() { // from class: com.roblox.client.app.a.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f5704c.A();
                    }
                });
            }
        });
        this.f = MemStorage.bind("BrowserService.SendCommand", new Callback() { // from class: com.roblox.client.app.a.3
            public void onItemSet(String str) {
                k.c("rbx.browserservice", "BrowserService.SendCommand : " + str);
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString("command");
                    if (string.equals("open")) {
                        final d dVar = new d(jSONObject.getString("url"), jSONObject.optString("title", ""), Boolean.valueOf(jSONObject.optBoolean("visible", true)), Boolean.valueOf(jSONObject.optBoolean("modal", false)), Boolean.valueOf(jSONObject.optBoolean("backNavigationDisabled", false)));
                        a.this.a(new Runnable() { // from class: com.roblox.client.app.a.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.f5704c.a(dVar);
                            }
                        });
                    } else if (string.equals("config")) {
                        final d dVar2 = new d(null, jSONObject.has("title") ? jSONObject.optString("title") : null, jSONObject.has("visible") ? Boolean.valueOf(jSONObject.optBoolean("visible")) : null, null, jSONObject.has("backNavigationDisabled") ? Boolean.valueOf(jSONObject.optBoolean("backNavigationDisabled")) : null);
                        a.this.a(new Runnable() { // from class: com.roblox.client.app.a.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.f5704c.b(dVar2);
                            }
                        });
                    } else {
                        k.e("rbx.browserservice", "ERROR, Command is not supported, BrowserService.SendCommand : " + str);
                    }
                } catch (JSONException unused) {
                    k.e("rbx.browserservice", "ERROR, BrowserService.SendCommand : " + str);
                }
            }
        });
    }

    public void b() {
        Connection connection = this.f5705d;
        if (connection != null) {
            connection.disconnect();
        }
        Connection connection2 = this.f5706e;
        if (connection2 != null) {
            connection2.disconnect();
        }
        Connection connection3 = this.f;
        if (connection3 != null) {
            connection3.disconnect();
        }
    }
}
