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

    .line 88
    iput-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    .line 89
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 94
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {p1}, Lcom/roblox/client/realtime/RealtimeService;->a(Lcom/roblox/client/realtime/RealtimeService;)V

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {p1}, Lcom/roblox/client/realtime/RealtimeService;->b(Lcom/roblox/client/realtime/RealtimeService;)V

    goto :goto_0

    .line 100
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {p1}, Lcom/roblox/client/realtime/RealtimeService;->a(Lcom/roblox/client/realtime/RealtimeService;)V

    goto :goto_0

    .line 103
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {p1}, Lcom/roblox/client/realtime/RealtimeService;->c(Lcom/roblox/client/realtime/RealtimeService;)V

    goto :goto_0

    .line 106
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_4

    .line 107
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$d;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-static {p1}, Lcom/roblox/client/realtime/RealtimeService;->b(Lcom/roblox/client/realtime/RealtimeService;)V

    .line 108
    invoke-virtual {p0}, Lcom/roblox/client/realtime/RealtimeService$d;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_4
    :goto_0
    return-void
.end method
