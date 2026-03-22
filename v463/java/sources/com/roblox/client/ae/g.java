package com.roblox.client.ae;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {
    public static void a(Context context) {
        a(context, "mailto:info@roblox.com");
    }

    public static void a(Context context, String str) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse(str));
        if (l.a(context, intent)) {
            context.startActivity(intent);
        } else {
            Toast.makeText(context, o.j.CommonUI_Messages_Response_InstallEmailClient, 0).show();
        }
    }
}
