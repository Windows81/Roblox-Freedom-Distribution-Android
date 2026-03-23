.class public Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field public final conversationId:J

.field public final participantUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;->conversationId:J

    .line 16
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/chat/AddToConversationPostBody;->participantUserIds:Ljava/util/ArrayList;

    .line 17
    return-void
.end method
