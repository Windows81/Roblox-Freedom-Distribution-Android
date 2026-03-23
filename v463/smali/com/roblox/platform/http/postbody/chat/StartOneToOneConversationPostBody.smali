.class public Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final participantUserId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/roblox/platform/http/postbody/chat/StartOneToOneConversationPostBody;->participantUserId:J

    return-void
.end method
