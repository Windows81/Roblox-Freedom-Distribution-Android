package com.roblox.client.provider;

import android.content.Context;
import android.content.SharedPreferences;
import com.roblox.client.ae.s;
import com.roblox.client.f.d;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.x.a f6661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f6662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6663c;

    public c(Context context) {
        this.f6661a = new com.roblox.client.x.a(context);
        this.f6662b = s.a(context.getApplicationContext()).a("configure_dev_roblox", true);
        u.b(context);
        this.f6663c = u.c(context);
    }

    @Override // com.roblox.client.f.d.a
    public d a() {
        String strB = this.f6661a.b();
        return new d(this.f6662b.getString("BaseUrl", null), "www.roblox.com/", strB, this.f6662b.getString("user_agent", null), this.f6663c, this.f6662b.getString("dev_rpc_ip_port_override", null));
    }

    @Override // com.roblox.client.f.d.a
    public void a(String str) {
        if (str != null) {
            this.f6661a.a(str);
        } else {
            this.f6661a.a();
        }
    }

    @Override // com.roblox.client.f.d.a
    public void b(String str) {
        if (str != null) {
            this.f6662b.edit().putString("BaseUrl", str).apply();
        } else {
            this.f6662b.edit().remove("BaseUrl").apply();
        }
    }

    @Override // com.roblox.client.f.d.a
    public void c(String str) {
        if (str != null) {
            this.f6662b.edit().putString("user_agent", str).apply();
        } else {
            this.f6662b.edit().remove("user_agent").apply();
        }
    }

    @Override // com.roblox.client.f.d.a
    public void d(String str) {
        if (str != null) {
            this.f6662b.edit().putString("dev_rpc_ip_port_override", str).apply();
        } else {
            this.f6662b.edit().remove("dev_rpc_ip_port_override").apply();
        }
    }
}
