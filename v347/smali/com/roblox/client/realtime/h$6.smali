.class Lcom/roblox/client/realtime/h$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/realtime/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/realtime/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/realtime/h;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 272
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;)V

    .line 279
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RbxSignalRImpl mConn.onError() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-virtual {v2}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Z)V

    .line 283
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->g(Lcom/roblox/client/realtime/h;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->g(Lcom/roblox/client/realtime/h;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    move-result-object v0

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->disconnect()V

    .line 287
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->h(Lcom/roblox/client/realtime/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->i(Lcom/roblox/client/realtime/h;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->j(Lcom/roblox/client/realtime/h;)I

    .line 292
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v3}, Lcom/roblox/client/realtime/h;->k(Lcom/roblox/client/realtime/h;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v0, v4

    sub-long/2addr v0, v4

    .line 293
    iget-object v2, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RbxSignalRImpl mConn.onError() restartSignalR() timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    new-instance v3, Lcom/roblox/client/realtime/h$6$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/roblox/client/realtime/h$6$1;-><init>(Lcom/roblox/client/realtime/h$6;J)V

    invoke-static {v2, v3}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 304
    iget-object v2, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v2}, Lcom/roblox/client/realtime/h;->d(Lcom/roblox/client/realtime/h;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/realtime/h$6;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v3}, Lcom/roblox/client/realtime/h;->i(Lcom/roblox/client/realtime/h;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    :cond_1
    return-void
.end method
