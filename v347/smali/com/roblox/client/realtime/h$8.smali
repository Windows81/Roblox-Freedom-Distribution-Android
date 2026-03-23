.class Lcom/roblox/client/realtime/h$8;
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
    .line 336
    iput-object p1, p0, Lcom/roblox/client/realtime/h$8;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/roblox/client/realtime/h$8;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RbxSignalRImpl mConn.closed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/realtime/h$8;->a:Lcom/roblox/client/realtime/h;

    invoke-virtual {v2}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/roblox/client/realtime/h$8;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;)V

    .line 344
    iget-object v0, p0, Lcom/roblox/client/realtime/h$8;->a:Lcom/roblox/client/realtime/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Z)V

    .line 345
    return-void
.end method
