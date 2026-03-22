package com.roblox.client.pushnotification.v2.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import com.roblox.client.ae.j;
import com.roblox.client.o;
import com.roblox.client.pushnotification.v2.receiver.DefaultPushNotificationReceiver;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6876c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6877d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6878e;
    private String f;
    private String g;
    private String h;
    private int i;
    private String j;

    @Override // com.roblox.client.pushnotification.v2.a.b
    public int i() {
        return 3;
    }

    public a(Map<String, String> map) {
        this.f6874a = j.a(map.get("version"));
        this.f6875b = map.get("notificationType");
        this.f6876c = map.get("notificationId");
        this.f6877d = map.get("body");
        this.f6878e = map.get("title");
        this.f = map.get("iconUrl");
        this.g = map.get("tag");
        this.h = map.get("sound");
        this.i = j.a(map.get("badge"), 1);
        this.j = map.get("data");
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public String a() {
        return this.f6877d;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public int b() {
        return this.i;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public String c() {
        return this.f6878e;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public String d() {
        return this.g;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public int e() {
        return this.f6874a;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public String f() {
        return this.f6875b;
    }

    public String g() {
        return this.j;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public String h() {
        return this.f6876c;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public PendingIntent a(Context context) {
        Intent intent = new Intent("push_notification_opened");
        intent.setClass(context, DefaultPushNotificationReceiver.class);
        intent.putExtra("EXTRA_NOTIFICATION_ID", h());
        intent.putExtra("EXTRA_INTENT_ACTION_TYPE_CODE", 2);
        intent.putExtra("EXTRA_NOTIFICATION_TYPE", f());
        intent.putExtra("EXTRA_NOTIFICATION_CUSTOM_DATA", g());
        return PendingIntent.getBroadcast(context, i(), intent, 268435456);
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public PendingIntent b(Context context) {
        Intent intent = new Intent("push_notification_cleared");
        intent.setClass(context, DefaultPushNotificationReceiver.class);
        intent.putExtra("EXTRA_NOTIFICATION_TYPE", f());
        intent.putExtra("EXTRA_INTENT_ACTION_TYPE_CODE", 1);
        return PendingIntent.getBroadcast(context, i(), intent, 268435456);
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public int c(Context context) {
        String str = this.f;
        if (str == null) {
            return o.e.notification_icon;
        }
        str.hashCode();
        return o.e.notification_icon;
    }

    @Override // com.roblox.client.pushnotification.v2.a.b
    public Uri d(Context context) {
        if (TextUtils.isEmpty(this.h)) {
            return Settings.System.DEFAULT_NOTIFICATION_URI;
        }
        this.h.hashCode();
        return null;
    }
}
