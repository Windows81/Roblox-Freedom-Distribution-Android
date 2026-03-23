.class public Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public category:Ljava/lang/String;

.field public latestNotificationId:Ljava/lang/String;

.field public notificationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;->notificationType:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;->category:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;->latestNotificationId:Ljava/lang/String;

    return-void
.end method
