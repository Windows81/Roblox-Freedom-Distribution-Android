.class public Lcom/roblox/client/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/i/e$b;,
        Lcom/roblox/client/i/e$c;,
        Lcom/roblox/client/i/e$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/i/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Messenger;

.field private g:Landroid/os/Messenger;

.field private h:Landroid/content/ServiceConnection;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/i/e;->c:Landroid/os/Handler;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/i/e;->d:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/i/e;->e:Ljava/util/List;

    .line 67
    iput-object v2, p0, Lcom/roblox/client/i/e;->f:Landroid/os/Messenger;

    .line 68
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/roblox/client/i/e$b;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/i/e$b;-><init>(Lcom/roblox/client/i/e;Lcom/roblox/client/i/e$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/roblox/client/i/e;->g:Landroid/os/Messenger;

    .line 208
    new-instance v0, Lcom/roblox/client/i/e$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/i/e$4;-><init>(Lcom/roblox/client/i/e;)V

    iput-object v0, p0, Lcom/roblox/client/i/e;->h:Landroid/content/ServiceConnection;

    .line 264
    new-instance v0, Lcom/roblox/client/i/e$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/i/e$5;-><init>(Lcom/roblox/client/i/e;)V

    iput-object v0, p0, Lcom/roblox/client/i/e;->i:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/i/e$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/roblox/client/i/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/e;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/roblox/client/i/e;->f:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a()Lcom/roblox/client/i/e;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/roblox/client/i/e$a;->a:Lcom/roblox/client/i/e;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/i/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/i/e;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/i/e;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/i/e;->b(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/i/e;)Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/i/e;->g:Landroid/os/Messenger;

    return-object v0
.end method

.method private b(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/roblox/client/i/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/i/e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/i/e$3;-><init>(Lcom/roblox/client/i/e;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 169
    const-string v0, "NotificationManager"

    const-string v1, "bindService:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    .line 173
    const-string v2, "roblox_launcher_debugger_attached"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/roblox/client/i/e;->h:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 176
    if-nez v0, :cond_0

    .line 178
    const-string v0, "NotificationManager"

    const-string v1, "NotificationManager.doBindService failed"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-static {p1}, Landroid/support/v4/a/f;->a(Landroid/content/Context;)Landroid/support/v4/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/i/e;->i:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.roblox.android.notificationmanager.POST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/f;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 182
    return-void
.end method

.method static synthetic c(Lcom/roblox/client/i/e;)Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/i/e;->f:Landroid/os/Messenger;

    return-object v0
.end method

.method private c(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/roblox/client/i/e;->g:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 151
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 152
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 153
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 154
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    iget-object v1, p0, Lcom/roblox/client/i/e;->f:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/roblox/client/i/e;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/i/e;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v0, "NotificationManager"

    const-string v1, "NotificationManager.postRemoteNotification failed service dead"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/roblox/client/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/roblox/client/i/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/i/e;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/roblox/client/i/e;->a:Z

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NotificationManager was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/i/e;->a(ILandroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/roblox/client/i/e;->a:Z

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NotificationManager was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/i/e;->b(ILandroid/os/Bundle;)V

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/i/e;->c(ILandroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    const-string v0, "NotificationManager"

    const-string v1, "init:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/i/e;->b:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/roblox/client/i/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/roblox/client/i/e;->b(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/i/e;->a:Z

    .line 87
    return-void
.end method

.method public a(Lcom/roblox/client/i/e$c;)V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/roblox/client/i/e;->a:Z

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NotificationManager was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/i/e$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/i/e$1;-><init>(Lcom/roblox/client/i/e;Lcom/roblox/client/i/e$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public b(Lcom/roblox/client/i/e$c;)V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/roblox/client/i/e;->a:Z

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NotificationManager was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/e;->c:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/i/e$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/i/e$2;-><init>(Lcom/roblox/client/i/e;Lcom/roblox/client/i/e$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method
