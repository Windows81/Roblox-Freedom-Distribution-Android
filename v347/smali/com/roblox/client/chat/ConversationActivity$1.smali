.class Lcom/roblox/client/chat/ConversationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/ConversationActivity;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/ConversationActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/roblox/client/chat/ConversationActivity$1;->a:Lcom/roblox/client/chat/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJLjava/lang/String;)V
    .locals 4

    .prologue
    .line 249
    sget-object v0, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CA > onConversationStartComplete() success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " conversation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity$1;->a:Lcom/roblox/client/chat/ConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lcom/roblox/client/chat/ConversationActivity;->a(Lcom/roblox/client/chat/ConversationActivity;JZ)V

    .line 254
    :cond_0
    return-void
.end method
