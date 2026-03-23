.class public Lcom/roblox/client/realtime/RealtimeService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/realtime/RealtimeService$c;,
        Lcom/roblox/client/realtime/RealtimeService$e;,
        Lcom/roblox/client/realtime/RealtimeService$d;,
        Lcom/roblox/client/realtime/RealtimeService$a;,
        Lcom/roblox/client/realtime/RealtimeService$b;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/realtime/a;

.field private final b:I

.field private final c:I

.field private final d:I

.field private volatile e:Landroid/os/Looper;

.field private volatile f:Lcom/roblox/client/realtime/RealtimeService$d;

.field private final g:Landroid/os/IBinder;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/roblox/client/realtime/RealtimeService;->b:I

    .line 43
    const/16 v0, 0x14

    iput v0, p0, Lcom/roblox/client/realtime/RealtimeService;->c:I

    .line 44
    const/16 v0, 0x1e

    iput v0, p0, Lcom/roblox/client/realtime/RealtimeService;->d:I

    .line 49
    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$b;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/RealtimeService$b;-><init>(Lcom/roblox/client/realtime/RealtimeService;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->g:Landroid/os/IBinder;

    .line 62
    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$a;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/RealtimeService$a;-><init>(Lcom/roblox/client/realtime/RealtimeService;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/roblox/client/b;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$c;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/RealtimeService$c;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$c;->a()V

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 228
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->f:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 230
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 231
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->f:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0, p1, p2}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 233
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/ServiceConnection;)V
    .locals 1

    .prologue
    .line 286
    instance-of v0, p0, Lcom/roblox/client/realtime/RealtimeService$c;

    if-eqz v0, :cond_0

    .line 287
    check-cast p0, Lcom/roblox/client/realtime/RealtimeService$c;

    invoke-virtual {p0}, Lcom/roblox/client/realtime/RealtimeService$c;->b()V

    .line 289
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/realtime/RealtimeService;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->c()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/roblox/client/realtime/a;->isSignalRConnected()Z

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/roblox/client/realtime/a;->getSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/roblox/client/realtime/RealtimeService;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/a;->shouldStopPreviousConnectionOnStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/a;->stop()V

    .line 156
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    :try_start_0
    new-instance v0, Lcom/roblox/client/realtime/NativeSignalRImplementation;

    invoke-direct {v0}, Lcom/roblox/client/realtime/NativeSignalRImplementation;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-static {}, Lcom/roblox/client/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/roblox/client/n/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const-string v1, "ChatNotifications"

    new-instance v2, Lcom/roblox/client/realtime/e;

    invoke-direct {v2}, Lcom/roblox/client/realtime/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/realtime/a;->setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 179
    :cond_1
    :goto_1
    new-instance v0, Lcom/roblox/client/realtime/g;

    invoke-direct {v0}, Lcom/roblox/client/realtime/g;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const-string v2, "PresenceNotifications"

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/realtime/a;->setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 181
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const-string v2, "PresenceBulkNotifications"

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/realtime/a;->setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 183
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const-string v1, "NotificationStream"

    new-instance v2, Lcom/roblox/client/realtime/f;

    invoke-direct {v2}, Lcom/roblox/client/realtime/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/realtime/a;->setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 184
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const-string v1, "FriendshipNotifications"

    new-instance v2, Lcom/roblox/client/realtime/d;

    invoke-direct {v2}, Lcom/roblox/client/realtime/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/realtime/a;->setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 185
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const-string v1, "ChatPrivacySettingNotifications"

    new-instance v2, Lcom/roblox/client/realtime/b;

    invoke-direct {v2}, Lcom/roblox/client/realtime/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/realtime/a;->setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 186
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/a;->start()V

    .line 187
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    const-string v0, "RealtimeService"

    const-string v1, "Error loading SignalR CPP, fallback to Java"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/roblox/client/realtime/h;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    goto :goto_0

    .line 165
    :cond_2
    new-instance v0, Lcom/roblox/client/realtime/h;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const-string v1, "ChatNotifications"

    new-instance v2, Lcom/roblox/client/realtime/c;

    invoke-direct {v2, p0}, Lcom/roblox/client/realtime/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/realtime/a;->setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/a;->stop()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    .line 195
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->f:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 240
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 241
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->f:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->f:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 249
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 250
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->f:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/realtime/RealtimeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 114
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/realtime/RealtimeService;->a(J)V

    .line 116
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->g:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConnectivityChangeEvent(Lcom/roblox/client/e/k;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 200
    const-string v0, "RealtimeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealtimeService.onConnectivityChangeEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/e/k;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p1}, Lcom/roblox/client/e/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/a;->canStartConnectionOnConnectivityRestore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/realtime/RealtimeService;->a(J)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->e()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RealtimeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->e:Landroid/os/Looper;

    .line 136
    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$d;

    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->e:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/realtime/RealtimeService$d;-><init>(Lcom/roblox/client/realtime/RealtimeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->f:Lcom/roblox/client/realtime/RealtimeService$d;

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 148
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/roblox/client/realtime/RealtimeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->f()V

    .line 126
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onUserLoggedInFromGuestModeEvent(Lcom/roblox/client/e/y;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 215
    const-string v0, "RealtimeService"

    const-string v1, "RealtimeService.onUserLoggedInFromGuestModeEvent()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-nez v0, :cond_0

    .line 219
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/realtime/RealtimeService;->a(J)V

    .line 221
    :cond_0
    return-void
.end method
