package com.roblox.client.provider.a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.roblox.client.i;
import com.roblox.client.provider.a.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6651a;

    public c(Context context) {
        this.f6651a = context;
    }

    @Override // com.roblox.client.provider.a.e
    public com.roblox.client.f.a a(e.a aVar) {
        if (aVar == e.a.GET) {
            return com.roblox.client.f.a.GetDevRpcIpAndPort;
        }
        return null;
    }

    @Override // com.roblox.client.provider.a.a, com.roblox.client.provider.a.e
    public Cursor a(Uri uri) {
        final String strC = i.c(this.f6651a);
        return new com.roblox.client.provider.a() { // from class: com.roblox.client.provider.a.c.1
            @Override // com.roblox.client.provider.a, android.database.AbstractCursor, android.database.Cursor
            public String[] getColumnNames() {
                return new String[]{"dev_rpc_ip_port_override"};
            }

            @Override // com.roblox.client.provider.a, android.database.AbstractCursor, android.database.Cursor
            public String getString(int i) {
                return strC;
            }
        };
    }
}
