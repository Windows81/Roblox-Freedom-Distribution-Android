package com.roblox.client.locale.db.room;

import android.arch.b.b.e;
import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class StringsDB extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static StringsDB f7373c;

    public abstract c j();

    public static synchronized StringsDB a(Context context) {
        if (f7373c == null) {
            f7373c = (StringsDB) android.arch.b.b.d.a(context.getApplicationContext(), StringsDB.class, "strings-db").a();
        }
        return f7373c;
    }
}
