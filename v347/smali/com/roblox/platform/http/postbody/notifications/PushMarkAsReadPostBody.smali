.class public Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public notificationId:Ljava/lang/String;

.field public platformType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;->platformType:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;->notificationId:Ljava/lang/String;

    .line 15
    return-void
.end method
