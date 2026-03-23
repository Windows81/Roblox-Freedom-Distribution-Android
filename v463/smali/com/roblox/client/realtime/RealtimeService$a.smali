.class Lcom/roblox/client/realtime/RealtimeService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/RealtimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/roblox/client/realtime/RealtimeService$a;->a:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/roblox/client/realtime/RealtimeService$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/realtime/RealtimeService$1;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/roblox/client/x;->c(Landroid/content/Context;)Z

    move-result p1

    .line 71
    iget-boolean p2, p0, Lcom/roblox/client/realtime/RealtimeService$a;->b:Z

    if-eqz p2, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/roblox/client/realtime/RealtimeService$a;->a:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/roblox/client/realtime/RealtimeService$a;->b:Z

    goto :goto_0

    .line 78
    :cond_0
    iget-boolean p2, p0, Lcom/roblox/client/realtime/RealtimeService$a;->a:Z

    if-eq p1, p2, :cond_1

    .line 79
    iput-boolean p1, p0, Lcom/roblox/client/realtime/RealtimeService$a;->a:Z

    .line 80
    new-instance p2, Lcom/roblox/client/l/e;

    invoke-direct {p2, p1}, Lcom/roblox/client/l/e;-><init>(Z)V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
