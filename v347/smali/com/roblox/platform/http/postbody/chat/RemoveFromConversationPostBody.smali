.class public Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final conversationId:J

.field public final participantUserId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;->conversationId:J

    .line 14
    iput-wide p3, p0, Lcom/roblox/platform/http/postbody/chat/RemoveFromConversationPostBody;->participantUserId:J

    .line 15
    return-void
.end method
