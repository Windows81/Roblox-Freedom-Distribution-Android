package com.roblox.client.provider.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface e {

    public enum a {
        GET,
        POST
    }

    Cursor a(Uri uri);

    com.roblox.client.f.a a(a aVar);

    void a(Uri uri, ContentValues contentValues);
}
