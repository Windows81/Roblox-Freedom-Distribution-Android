.class public Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final conversationId:J

.field public final isTyping:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;->conversationId:J

    .line 14
    iput-boolean p3, p0, Lcom/roblox/platform/http/postbody/chat/UpdateUserTypingStatusPostBody;->isTyping:Z

    return-void
.end method
