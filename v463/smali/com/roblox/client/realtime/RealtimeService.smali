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

.field private final e:I

.field private final f:I

.field private volatile g:Landroid/os/Looper;

.field private volatile h:Lcom/roblox/client/realtime/RealtimeService$d;

.field private final i:Landroid/os/IBinder;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const/16 v1, 0xa

    .line 38
    iput v1, p0, Lcom/roblox/client/realtime/RealtimeService;->b:I

    const/16 v1, 0x14

    .line 39
    iput v1, p0, Lcom/roblox/client/realtime/RealtimeService;->c:I

    const/16 v1, 0x18

    .line 40
    iput v1, p0, Lcom/roblox/client/realtime/RealtimeService;->d:I

    const/16 v1, 0x19

    .line 41
    iput v1, p0, Lcom/roblox/client/realtime/RealtimeService;->e:I

    const/16 v1, 0x1e

    .line 42
    iput v1, p0, Lcom/roblox/client/realtime/RealtimeService;->f:I

    .line 47
    new-instance v1, Lcom/roblox/client/realtime/RealtimeService$b;

    invoke-direct {v1, p0}, Lcom/roblox/client/realtime/RealtimeService$b;-><init>(Lcom/roblox/client/realtime/RealtimeService;)V

    iput-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->i:Landroid/os/IBinder;

    .line 60
    new-instance v1, Lcom/roblox/client/realtime/RealtimeService$a;

    invoke-direct {v1, v0}, Lcom/roblox/client/realtime/RealtimeService$a;-><init>(Lcom/roblox/client/realtime/RealtimeService$1;)V

    iput-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/ServiceConnection;
    .locals 1

    .line 286
    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$c;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/RealtimeService$c;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$c;->a()V

    return-object v0
.end method

.method private a(J)V
    .locals 5

    .line 219
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 220
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 221
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 222
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0, p1, p2}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 292
    instance-of v0, p0, Lcom/roblox/client/realtime/RealtimeService$c;

    if-eqz v0, :cond_0

    .line 293
    check-cast p0, Lcom/roblox/client/realtime/RealtimeService$c;

    invoke-virtual {p0}, Lcom/roblox/client/realtime/RealtimeService$c;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/realtime/RealtimeService;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->c()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 270
    invoke-static {}, Lcom/roblox/client/realtime/a;->a()Z

    move-result v0

    return v0
.end method

.method public static b()J
    .locals 2

    .line 274
    invoke-static {}, Lcom/roblox/client/realtime/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/roblox/client/realtime/RealtimeService;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/realtime/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/realtime/a;->a(Z)V

    .line 160
    :cond_0
    new-instance v0, Lcom/roblox/client/realtime/c;

    invoke-direct {v0}, Lcom/roblox/client/realtime/c;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    .line 164
    new-instance v1, Lcom/roblox/client/realtime/d;

    invoke-direct {v1}, Lcom/roblox/client/realtime/d;-><init>()V

    const-string v2, "NotificationStream"

    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/realtime/a;->a(Ljava/lang/String;Lcom/roblox/client/realtime/g;)V

    .line 165
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    new-instance v1, Lcom/roblox/client/realtime/b;

    invoke-direct {v1}, Lcom/roblox/client/realtime/b;-><init>()V

    const-string v2, "FriendshipNotifications"

    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/realtime/a;->a(Ljava/lang/String;Lcom/roblox/client/realtime/g;)V

    .line 166
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    new-instance v1, Lcom/roblox/client/realtime/h;

    invoke-direct {v1}, Lcom/roblox/client/realtime/h;-><init>()V

    const-string v2, "UserThemeTypeChangeNotification"

    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/realtime/a;->a(Ljava/lang/String;Lcom/roblox/client/realtime/g;)V

    .line 167
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/a;->c()V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/realtime/RealtimeService;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Lcom/roblox/client/realtime/a;->a(Z)V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Lcom/roblox/client/realtime/a;->a(Z)V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    .line 231
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 232
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private g()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x18

    .line 240
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 241
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private h()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x19

    .line 249
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 250
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private i()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/RealtimeService$d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1e

    .line 258
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 259
    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    invoke-virtual {v1, v0}, Lcom/roblox/client/realtime/RealtimeService$d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService;->j:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/realtime/RealtimeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/realtime/RealtimeService;->a(J)V

    .line 120
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService;->i:Landroid/os/IBinder;

    return-object p1
.end method

.method public onConnectivityChangeEvent(Lcom/roblox/client/l/e;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealtimeService.onConnectivityChangeEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/l/e;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RealtimeService"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Lcom/roblox/client/l/e;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/roblox/client/realtime/RealtimeService;->a:Lcom/roblox/client/realtime/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/realtime/a;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const-wide/16 v0, 0x0

    .line 192
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/realtime/RealtimeService;->a(J)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 135
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RealtimeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->g:Landroid/os/Looper;

    .line 140
    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$d;

    iget-object v1, p0, Lcom/roblox/client/realtime/RealtimeService;->g:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/realtime/RealtimeService$d;-><init>(Lcom/roblox/client/realtime/RealtimeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->h:Lcom/roblox/client/realtime/RealtimeService$d;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 151
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLoginEvent(Lcom/roblox/client/l/g;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "RealtimeService"

    const-string v0, "RealtimeService.onLoginEvent()"

    .line 203
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->g()V

    return-void
.end method

.method public onLogoutEvent(Lcom/roblox/client/l/h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "RealtimeService"

    const-string v0, "RealtimeService.onLogoutEvent()"

    .line 210
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->h()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/roblox/client/realtime/RealtimeService;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/roblox/client/realtime/RealtimeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    invoke-direct {p0}, Lcom/roblox/client/realtime/RealtimeService;->i()V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
