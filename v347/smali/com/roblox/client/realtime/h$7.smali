.class Lcom/roblox/client/realtime/h$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 310
    iput-object p1, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RbxSignalRImpl mConn.connected() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    invoke-virtual {v2}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;)V

    .line 316
    iget-object v0, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;I)I

    .line 320
    invoke-static {}, Lcom/roblox/client/b;->O()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 321
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {}, Lcom/roblox/client/b;->O()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 322
    iget-object v2, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    new-instance v3, Lcom/roblox/client/realtime/h$7$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/roblox/client/realtime/h$7$1;-><init>(Lcom/roblox/client/realtime/h$7;J)V

    invoke-static {v2, v3}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 330
    iget-object v2, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v2}, Lcom/roblox/client/realtime/h;->d(Lcom/roblox/client/realtime/h;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/realtime/h$7;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v3}, Lcom/roblox/client/realtime/h;->c(Lcom/roblox/client/realtime/h;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    :cond_0
    return-void
.end method
