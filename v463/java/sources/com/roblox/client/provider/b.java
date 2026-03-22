package com.roblox.client.provider;

import com.roblox.client.f.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f6660a;

    public b(d dVar) {
        this.f6660a = dVar;
    }

    @Override // com.roblox.client.provider.a, android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return new String[]{"base_url_param", "default_base_url_param", "settings_param", "user_agent_param", "default_user_agent_param", "dev_rpc_ip_port_override"};
    }

    @Override // com.roblox.client.provider.a, android.database.AbstractCursor, android.database.Cursor
    public String getString(int i) {
        if (i == getColumnIndex("base_url_param")) {
            return this.f6660a.a();
        }
        if (i == getColumnIndex("default_base_url_param")) {
            return this.f6660a.b();
        }
        if (i == getColumnIndex("settings_param")) {
            return this.f6660a.c();
        }
        if (i == getColumnIndex("user_agent_param")) {
            return this.f6660a.e();
        }
        if (i == getColumnIndex("default_user_agent_param")) {
            return this.f6660a.f();
        }
        if (i == getColumnIndex("dev_rpc_ip_port_override")) {
            return this.f6660a.g();
        }
        return null;
    }
}
