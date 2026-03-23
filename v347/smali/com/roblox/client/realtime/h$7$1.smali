.class Lcom/roblox/client/realtime/h$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/realtime/h$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/roblox/client/realtime/h$7;


# direct methods
.method constructor <init>(Lcom/roblox/client/realtime/h$7;J)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/roblox/client/realtime/h$7$1;->b:Lcom/roblox/client/realtime/h$7;

    iput-wide p2, p0, Lcom/roblox/client/realtime/h$7$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 325
    iget-object v0, p0, Lcom/roblox/client/realtime/h$7$1;->b:Lcom/roblox/client/realtime/h$7;

    iget-object v0, v0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RbxSignalRImpl mConn.connected() no \"Reconnected\" message from server within timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/roblox/client/realtime/h$7$1;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/roblox/client/realtime/h$7$1;->b:Lcom/roblox/client/realtime/h$7;

    iget-object v0, v0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0, v4, v4}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;ZZ)V

    .line 328
    return-void
.end method
