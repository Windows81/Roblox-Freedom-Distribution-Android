package com.roblox.platform.http.c;

import b.ac;
import com.roblox.platform.http.postbody.notifications.PushMarkAsReadPostBody;
import com.roblox.platform.http.postbody.notifications.PushMarkCategoryAsReadPostBody;
import com.roblox.platform.http.postbody.notifications.RegisterPushNotificationPostBody;
import d.b.o;
import d.b.t;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public interface e {
    @d.b.f(a = "/v2/stream-notifications/unread-count")
    d.b<ac> a();

    @o(a = "/v2/push-notifications/mark-as-read")
    d.b<ac> a(@d.b.a PushMarkAsReadPostBody pushMarkAsReadPostBody);

    @o(a = "/v2/push-notifications/mark-category-as-read")
    d.b<ac> a(@d.b.a PushMarkCategoryAsReadPostBody pushMarkCategoryAsReadPostBody);

    @o(a = "/v2/push-notifications/register-android-native")
    d.b<ac> a(@d.b.a RegisterPushNotificationPostBody registerPushNotificationPostBody);

    @d.b.f(a = "/v2/push-notifications/metadata")
    d.b<ac> a(@t(a = "platformType") String str, @t(a = "notificationToken") String str2, @t(a = "notificationId") String str3);

    @o(a = "/v2/stream-notifications/clear-unread")
    d.b<ac> b();

    @o(a = "/v2/push-notifications/register-android-amazon")
    d.b<ac> b(@d.b.a RegisterPushNotificationPostBody registerPushNotificationPostBody);
}
