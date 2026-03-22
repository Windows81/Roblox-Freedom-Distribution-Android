package com.roblox.client.signup.multiscreen;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.roblox.client.ae.k;
import com.roblox.client.l.o;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SMSBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Pattern f7137a = Pattern.compile("(\\d{6})");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            Status status = (Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
            k.b("SMSBroadcastReceiver", "Status: " + status);
            int iE = status.e();
            if (iE != 0) {
                if (iE != 15) {
                    return;
                }
                k.b("SMSBroadcastReceiver", "Timeout");
                return;
            }
            String str = (String) extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
            k.b("SMSBroadcastReceiver", "Message: " + str);
            if (!TextUtils.isEmpty(str) && str.startsWith("<#>")) {
                Matcher matcher = this.f7137a.matcher(str);
                if (matcher.find()) {
                    String strGroup = matcher.group(0);
                    if (TextUtils.isEmpty(strGroup) || strGroup.length() != 6) {
                        return;
                    }
                    k.b("SMSBroadcastReceiver", "code: " + strGroup);
                    org.greenrobot.eventbus.c.a().c(new o(strGroup));
                    return;
                }
                return;
            }
            k.b("SMSBroadcastReceiver", "Wrong format. Message: " + str);
        }
    }
}
