package com.roblox.platform.http.c;

import c.ad;
import com.roblox.platform.http.postbody.notifications.PushMarkAsReadPostBody;
import com.roblox.platform.http.postbody.notifications.PushMarkCategoryAsReadPostBody;
import com.roblox.platform.http.postbody.notifications.RegisterPushNotificationPostBody;
import e.b.o;
import e.b.t;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface i {
    @e.b.f(a = "/v2/stream-notifications/unread-count")
    e.b<ad> a();

    @o(a = "/v2/push-notifications/mark-as-read")
    e.b<ad> a(@e.b.a PushMarkAsReadPostBody pushMarkAsReadPostBody);

    @o(a = "/v2/push-notifications/mark-category-as-read")
    e.b<ad> a(@e.b.a PushMarkCategoryAsReadPostBody pushMarkCategoryAsReadPostBody);

    @o(a = "/v2/push-notifications/register-android-native")
    e.b<ad> a(@e.b.a RegisterPushNotificationPostBody registerPushNotificationPostBody);

    @e.b.f(a = "/v2/push-notifications/metadata")
    e.b<ad> a(@t(a = "platformType") String str, @t(a = "notificationToken") String str2, @t(a = "notificationId") String str3);

    @o(a = "/v2/stream-notifications/clear-unread")
    e.b<ad> b();

    @o(a = "/v2/push-notifications/register-android-amazon")
    e.b<ad> b(@e.b.a RegisterPushNotificationPostBody registerPushNotificationPostBody);
}
