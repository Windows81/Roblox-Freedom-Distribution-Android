.class Lcom/roblox/client/chat/f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/chat/f;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/roblox/client/chat/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/chat/f;JJ)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/roblox/client/chat/f$8;->c:Lcom/roblox/client/chat/f;

    iput-wide p2, p0, Lcom/roblox/client/chat/f$8;->a:J

    iput-wide p4, p0, Lcom/roblox/client/chat/f$8;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1233
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/roblox/client/chat/f$8;->a:J

    iget-wide v4, p0, Lcom/roblox/client/chat/f$8;->b:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/roblox/client/chat/a/a;->a(JJZ)Z

    move-result v0

    .line 1234
    iget-object v1, p0, Lcom/roblox/client/chat/f$8;->c:Lcom/roblox/client/chat/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearTypingRunnable.run() updated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/chat/f;->b(Lcom/roblox/client/chat/f;Ljava/lang/String;)V

    .line 1235
    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/roblox/client/chat/f$8;->c:Lcom/roblox/client/chat/f;

    invoke-static {v0}, Lcom/roblox/client/chat/f;->k(Lcom/roblox/client/chat/f;)V

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/f$8;->c:Lcom/roblox/client/chat/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/chat/f;->a(Lcom/roblox/client/chat/f;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1239
    return-void
.end method
