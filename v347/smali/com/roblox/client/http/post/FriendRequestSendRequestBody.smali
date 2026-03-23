.class public Lcom/roblox/client/http/post/FriendRequestSendRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private recipientUserId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/roblox/client/http/post/FriendRequestSendRequestBody;->recipientUserId:J

    .line 14
    return-void
.end method
