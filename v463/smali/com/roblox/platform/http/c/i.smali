.class public interface abstract Lcom/roblox/platform/http/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Le/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "/v2/stream-notifications/unread-count"
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/push-notifications/mark-as-read"
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/push-notifications/mark-category-as-read"
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/push-notifications/register-android-native"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "platformType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "notificationToken"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Le/b/t;
            a = "notificationId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/f;
        a = "/v2/push-notifications/metadata"
    .end annotation
.end method

.method public abstract b()Le/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/stream-notifications/clear-unread"
    .end annotation
.end method

.method public abstract b(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Le/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;
        .annotation runtime Le/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/b/o;
        a = "/v2/push-notifications/register-android-amazon"
    .end annotation
.end method
