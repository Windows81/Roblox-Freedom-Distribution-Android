.class public Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public authorizeForUser:Z

.field public notificationToken:Ljava/lang/String;

.field public oldNotificationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;->notificationToken:Ljava/lang/String;

    .line 15
    iput-boolean p2, p0, Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;->authorizeForUser:Z

    .line 16
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;->oldNotificationToken:Ljava/lang/String;

    return-void
.end method
