.class Lcom/roblox/client/i/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/e;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/roblox/client/i/e$4;->a:Lcom/roblox/client/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/roblox/client/i/e$4;->a:Lcom/roblox/client/i/e;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/roblox/client/i/e;->a(Lcom/roblox/client/i/e;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 214
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/roblox/client/i/e$4;->a:Lcom/roblox/client/i/e;

    invoke-static {v1}, Lcom/roblox/client/i/e;->b(Lcom/roblox/client/i/e;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 216
    iget-object v1, p0, Lcom/roblox/client/i/e$4;->a:Lcom/roblox/client/i/e;

    invoke-static {v1}, Lcom/roblox/client/i/e;->c(Lcom/roblox/client/i/e;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 218
    const-string v0, "NotificationManager"

    const-string v1, "NotificationManager.onServiceConnected success"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/roblox/client/i/e$4;->a:Lcom/roblox/client/i/e;

    invoke-static {v0}, Lcom/roblox/client/i/e;->d(Lcom/roblox/client/i/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :try_start_1
    iget-object v2, p0, Lcom/roblox/client/i/e$4;->a:Lcom/roblox/client/i/e;

    invoke-static {v2}, Lcom/roblox/client/i/e;->c(Lcom/roblox/client/i/e;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    const-string v0, "NotificationManager"

    const-string v2, "NotificationManager.doNotifyService failed service dead"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/roblox/client/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    const-string v0, "NotificationManager"

    const-string v1, "NotificationManager.onServiceConnected failed"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_1
    return-void

    .line 229
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/roblox/client/i/e$4;->a:Lcom/roblox/client/i/e;

    invoke-static {v0}, Lcom/roblox/client/i/e;->d(Lcom/roblox/client/i/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 239
    const-string v0, "NotificationManager"

    const-string v1, "NotificationManager.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method
