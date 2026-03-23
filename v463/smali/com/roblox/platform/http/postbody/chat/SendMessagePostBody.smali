.class public Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final conversationId:J

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;->conversationId:J

    .line 14
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;->message:Ljava/lang/String;

    return-void
.end method
