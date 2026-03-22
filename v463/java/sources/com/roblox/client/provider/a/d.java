package com.roblox.client.provider.a;

import android.database.Cursor;
import android.net.Uri;
import com.roblox.client.provider.a.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends a {
    @Override // com.roblox.client.provider.a.e
    public com.roblox.client.f.a a(e.a aVar) {
        if (aVar == e.a.GET) {
            return com.roblox.client.f.a.GetPing;
        }
        return null;
    }

    @Override // com.roblox.client.provider.a.a, com.roblox.client.provider.a.e
    public Cursor a(Uri uri) {
        return new com.roblox.client.provider.a();
    }
}
