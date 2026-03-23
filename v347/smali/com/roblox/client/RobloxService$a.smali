.class Lcom/roblox/client/RobloxService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RobloxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/RobloxService;


# direct methods
.method private constructor <init>(Lcom/roblox/client/RobloxService;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/roblox/client/RobloxService$a;->a:Lcom/roblox/client/RobloxService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/RobloxService;Lcom/roblox/client/RobloxService$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/roblox/client/RobloxService$a;-><init>(Lcom/roblox/client/RobloxService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/roblox/client/RobloxService$a;->a:Lcom/roblox/client/RobloxService;

    invoke-static {v0}, Lcom/roblox/client/RobloxService;->a(Lcom/roblox/client/RobloxService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/RobloxService$a;->a:Lcom/roblox/client/RobloxService;

    invoke-static {v0}, Lcom/roblox/client/RobloxService;->b(Lcom/roblox/client/RobloxService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/roblox/client/RobloxService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RobloxService waiting for debugger"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 81
    iget-object v0, p0, Lcom/roblox/client/RobloxService$a;->a:Lcom/roblox/client/RobloxService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxService;->a(Lcom/roblox/client/RobloxService;Z)Z

    .line 84
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/RobloxService$a;->a:Lcom/roblox/client/RobloxService;

    invoke-static {v0}, Lcom/roblox/client/RobloxService;->c(Lcom/roblox/client/RobloxService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/RobloxService$a;->a:Lcom/roblox/client/RobloxService;

    invoke-static {v0}, Lcom/roblox/client/RobloxService;->c(Lcom/roblox/client/RobloxService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/RobloxService$a;->a:Lcom/roblox/client/RobloxService;

    invoke-static {v0}, Lcom/roblox/client/RobloxService;->c(Lcom/roblox/client/RobloxService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 97
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    :try_start_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-static {}, Lcom/roblox/client/RobloxService;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/roblox/client/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
