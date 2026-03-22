package com.roblox.client.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.roblox.client.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {
    public static void a(Context context) {
        a(context, "mailto:info@roblox.com");
    }

    public static void a(Context context, String str) {
        if (context != null) {
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(Uri.parse(str));
            if (h.a(context, intent)) {
                context.startActivity(intent);
            } else {
                Toast.makeText(context, h.a.CommonUI_Messages_Response_InstallEmailClient, 0).show();
            }
        }
    }
}
