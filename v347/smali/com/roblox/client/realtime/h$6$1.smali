.class Lcom/roblox/client/realtime/h$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/realtime/h$6;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/roblox/client/realtime/h$6;


# direct methods
.method constructor <init>(Lcom/roblox/client/realtime/h$6;J)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/roblox/client/realtime/h$6$1;->b:Lcom/roblox/client/realtime/h$6;

    iput-wide p2, p0, Lcom/roblox/client/realtime/h$6$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6$1;->b:Lcom/roblox/client/realtime/h$6;

    iget-object v0, v0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RbxSignalRImpl mConn.onError() restartSignalR() timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/roblox/client/realtime/h$6$1;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RUN()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6$1;->b:Lcom/roblox/client/realtime/h$6;

    iget-object v0, v0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/h;->b()V

    .line 300
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6$1;->b:Lcom/roblox/client/realtime/h$6;

    iget-object v0, v0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->e(Lcom/roblox/client/realtime/h;)V

    .line 301
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6$1;->b:Lcom/roblox/client/realtime/h$6;

    iget-object v0, v0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 302
    return-void
.end method
