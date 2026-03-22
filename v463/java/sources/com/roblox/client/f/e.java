package com.roblox.client.f;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.roblox.client.f.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f6013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6014b;

    public e(Context context) {
        this(context.getPackageName() + context.getString(c.a.shell_configuration_provider_authority_suffix));
    }

    public e(String str) {
        this.f6013a = new String[]{"PROJECTION_NONE"};
        this.f6014b = str;
    }

    public d a(Context context) {
        Cursor cursorA = a(context, a.GetConfig.a(this.f6014b));
        d dVar = (cursorA == null || !cursorA.moveToFirst()) ? null : new d(cursorA.getString(cursorA.getColumnIndex("base_url_param")), cursorA.getString(cursorA.getColumnIndex("default_base_url_param")), cursorA.getString(cursorA.getColumnIndex("settings_param")), cursorA.getString(cursorA.getColumnIndex("user_agent_param")), cursorA.getString(cursorA.getColumnIndex("default_user_agent_param")), cursorA.getString(cursorA.getColumnIndex("dev_rpc_ip_port_override")));
        if (cursorA != null) {
            cursorA.close();
        }
        return dVar;
    }

    private Cursor a(Context context, Uri uri) {
        try {
            return context.getContentResolver().query(uri, this.f6013a, null, null, null);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
