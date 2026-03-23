.class final Lcom/roblox/client/realtime/RealtimeService$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/RealtimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/realtime/RealtimeService;


# direct methods
.method public constructor <init>(Lcom/roblox/client/realtime/RealtimeService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    .line 91
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Lcom/roblox/client/realtime/RealtimeService;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->b(Lcom/roblox/client/realtime/RealtimeService;)V

    goto :goto_0

    .line 102
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->b(Lcom/roblox/client/realtime/RealtimeService;)V

    .line 104
    invoke-virtual {p0}, Lcom/roblox/client/realtime/RealtimeService$d;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
