package com.roblox.client.locale.db.room;

import android.content.Context;
import androidx.h.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class StringsDB extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static StringsDB f6492d;

    public abstract c k();

    public static synchronized StringsDB a(Context context) {
        if (f6492d == null) {
            f6492d = (StringsDB) androidx.h.d.a(context.getApplicationContext(), StringsDB.class, "strings-db").a();
        }
        return f6492d;
    }
}
