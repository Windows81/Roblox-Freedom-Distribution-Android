.class public interface abstract Lcom/roblox/platform/http/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Ld/b;
    .annotation runtime Ld/b/f;
        a = "/v2/stream-notifications/unread-count"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/push-notifications/mark-as-read"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/push-notifications/mark-category-as-read"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/push-notifications/register-android-native"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/t;
            a = "platformType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/t;
            a = "notificationToken"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ld/b/t;
            a = "notificationId"
        .end annotation
    .end param
    .annotation runtime Ld/b/f;
        a = "/v2/push-notifications/metadata"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Ld/b;
    .annotation runtime Ld/b/o;
        a = "/v2/stream-notifications/clear-unread"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Ld/b;
    .param p1    # Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation runtime Ld/b/o;
        a = "/v2/push-notifications/register-android-amazon"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation
.end method
