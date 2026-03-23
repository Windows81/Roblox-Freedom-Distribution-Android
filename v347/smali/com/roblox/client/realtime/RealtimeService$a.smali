.class public Lcom/roblox/client/realtime/RealtimeService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/RealtimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/realtime/RealtimeService;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/roblox/client/realtime/RealtimeService;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/roblox/client/realtime/RealtimeService$a;->a:Lcom/roblox/client/realtime/RealtimeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/realtime/RealtimeService$a;->b:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/realtime/RealtimeService$a;->c:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {p1}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v0

    .line 73
    iget-boolean v1, p0, Lcom/roblox/client/realtime/RealtimeService$a;->c:Z

    if-eqz v1, :cond_1

    .line 77
    iput-boolean v0, p0, Lcom/roblox/client/realtime/RealtimeService$a;->b:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/realtime/RealtimeService$a;->c:Z

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-boolean v1, p0, Lcom/roblox/client/realtime/RealtimeService$a;->b:Z

    if-eq v0, v1, :cond_0

    .line 81
    iput-boolean v0, p0, Lcom/roblox/client/realtime/RealtimeService$a;->b:Z

    .line 82
    new-instance v1, Lcom/roblox/client/e/k;

    invoke-direct {v1, v0}, Lcom/roblox/client/e/k;-><init>(Z)V

    .line 83
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method
