.class public Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final conversationId:J

.field public final newTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;->conversationId:J

    .line 14
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/chat/RenameGroupConversationPostBody;->newTitle:Ljava/lang/String;

    .line 15
    return-void
.end method
