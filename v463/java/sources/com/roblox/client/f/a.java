package com.roblox.client.f;

import android.content.ContentValues;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum a {
    GetPing("ping.get", 1),
    GetConfig("config.get", 2),
    PostConfig("config.post", 3),
    GetUserAgent("ua.get", 4),
    GetDevRpcIpAndPort("devrpc.get", 5);

    public final String f;
    public final int g;

    a(String str, int i) {
        this.f = str;
        this.g = i;
    }

    public Uri a(String str) {
        return a(str, null);
    }

    public Uri a(String str, ContentValues contentValues) {
        Uri uriBuild = Uri.parse("content://" + str + "/" + this.f);
        if (contentValues != null) {
            for (String str2 : contentValues.keySet()) {
                uriBuild = uriBuild.buildUpon().appendQueryParameter(str2, contentValues.getAsString(str2)).build();
            }
        }
        return uriBuild;
    }
}
