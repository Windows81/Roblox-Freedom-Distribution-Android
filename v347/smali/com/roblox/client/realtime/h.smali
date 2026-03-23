.class public Lcom/roblox/client/realtime/h;
.super Lcom/roblox/client/realtime/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/realtime/h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:I

.field private final c:Landroid/content/Context;

.field private d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

.field private e:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:I

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Lcom/roblox/client/realtime/i;

.field private l:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;

.field private m:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;

.field private n:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;

.field private o:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1;

.field private p:Lmicrosoft/aspnet/signalr/client/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/realtime/a;-><init>()V

    .line 43
    const-string v0, "rbx.signalr_java"

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->a:Ljava/lang/String;

    .line 46
    const/16 v0, 0x9

    iput v0, p0, Lcom/roblox/client/realtime/h;->b:I

    .line 53
    iput-boolean v1, p0, Lcom/roblox/client/realtime/h;->f:Z

    .line 56
    iput v1, p0, Lcom/roblox/client/realtime/h;->h:I

    .line 57
    iput-object v2, p0, Lcom/roblox/client/realtime/h;->i:Ljava/lang/Runnable;

    .line 58
    iput-object v2, p0, Lcom/roblox/client/realtime/h;->j:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/roblox/client/realtime/i;

    invoke-direct {v0}, Lcom/roblox/client/realtime/i;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->k:Lcom/roblox/client/realtime/i;

    .line 76
    new-instance v0, Lcom/roblox/client/realtime/h$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/h$1;-><init>(Lcom/roblox/client/realtime/h;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->l:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;

    .line 98
    new-instance v0, Lcom/roblox/client/realtime/h$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/h$2;-><init>(Lcom/roblox/client/realtime/h;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->m:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;

    .line 120
    new-instance v0, Lcom/roblox/client/realtime/h$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/h$3;-><init>(Lcom/roblox/client/realtime/h;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->n:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;

    .line 171
    new-instance v0, Lcom/roblox/client/realtime/h$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/h$4;-><init>(Lcom/roblox/client/realtime/h;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->o:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1;

    .line 185
    new-instance v0, Lcom/roblox/client/realtime/h$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/realtime/h$5;-><init>(Lcom/roblox/client/realtime/h;)V

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->p:Lmicrosoft/aspnet/signalr/client/Logger;

    .line 63
    iput-object p1, p0, Lcom/roblox/client/realtime/h;->c:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->g:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/roblox/client/realtime/h;->h:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;)Lcom/roblox/client/realtime/i;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->k:Lcom/roblox/client/realtime/i;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/roblox/client/realtime/h;->j:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 199
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 200
    sput-wide p1, Lcom/roblox/client/realtime/h;->sSequenceNumber:J

    .line 202
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;J)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/realtime/h;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/realtime/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/realtime/h;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/realtime/h;ZZ)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/realtime/h;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method private a(Lmicrosoft/aspnet/signalr/client/Connection;)V
    .locals 3

    .prologue
    .line 205
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/Connection;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/roblox/client/b;->aB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v1, "RBX-Device-Handle"

    .line 215
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aD()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    const-string v1, "X-Ablm"

    .line 220
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/c;->e()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/realtime/h;->a(ZZ)V

    .line 371
    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RbxSignalRImpl.postSignalRConnectivityChangeEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/roblox/client/realtime/h;->sSignalRConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shouldUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->b(Ljava/lang/String;)V

    .line 375
    sget-boolean v0, Lcom/roblox/client/realtime/h;->sSignalRConnected:Z

    if-eq v0, p1, :cond_0

    .line 376
    sput-boolean p1, Lcom/roblox/client/realtime/h;->sSignalRConnected:Z

    .line 379
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/v;

    invoke-static {}, Lcom/roblox/client/realtime/h;->getSequenceNumber()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/roblox/client/e/v;-><init>(ZJZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 382
    invoke-static {}, Lcom/roblox/client/realtime/h;->getSequenceNumber()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/roblox/client/hybrid/a/i;->a(ZJ)V

    .line 384
    invoke-static {}, Lcom/roblox/client/b;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/roblox/client/realtime/h;->getSequenceNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastConnection(ILjava/lang/String;)V

    .line 388
    :cond_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/realtime/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/roblox/client/realtime/h;->i:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/roblox/client/realtime/h;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/realtime/h;->d()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/realtime/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RbxSignalRImpl.stop() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->b(Ljava/lang/String;)V

    .line 425
    if-eqz p1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/roblox/client/realtime/h;->c()V

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/realtime/h;->d()V

    .line 429
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->stop()V

    .line 431
    iput-object v2, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    .line 432
    iput-object v2, p0, Lcom/roblox/client/realtime/h;->e:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    .line 434
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->a(Z)V

    .line 435
    return-void
.end method

.method static synthetic c(Lcom/roblox/client/realtime/h;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/realtime/h;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->i:Ljava/lang/Runnable;

    .line 234
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/roblox/client/realtime/h;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/realtime/h;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->j:Ljava/lang/Runnable;

    .line 241
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RbxSignalRImpl.start() state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->b(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Disconnected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    if-eq v0, v1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    if-nez v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/roblox/client/realtime/h;->b()V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->a(Lmicrosoft/aspnet/signalr/client/Connection;)V

    .line 406
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->start()Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v0

    .line 415
    :try_start_0
    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    const-string v0, "InterruptedException"

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    const-string v0, "ExecutionException"

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/roblox/client/realtime/h;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/realtime/h;->e()V

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/realtime/h;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/roblox/client/realtime/h;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/roblox/client/realtime/h;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    return-object v0
.end method

.method static synthetic h(Lcom/roblox/client/realtime/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/roblox/client/realtime/h;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/roblox/client/realtime/h;)I
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/roblox/client/realtime/h;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/roblox/client/realtime/h;->h:I

    return v0
.end method

.method static synthetic k(Lcom/roblox/client/realtime/h;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/roblox/client/realtime/h;->h:I

    return v0
.end method


# virtual methods
.method public a()Lmicrosoft/aspnet/signalr/client/ConnectionState;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->getState()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_1

    const-string v1, ".ROBLOSECURITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Platform;->setFallbackCookie(Ljava/lang/String;)V

    .line 254
    :goto_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseSignalRUrl()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/android/AndroidPlatformComponent;

    invoke-direct {v1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidPlatformComponent;-><init>()V

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/Platform;->loadPlatformComponent(Lmicrosoft/aspnet/signalr/client/PlatformComponent;)V

    .line 256
    const/4 v1, 0x0

    .line 257
    new-instance v2, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    iget-object v3, p0, Lcom/roblox/client/realtime/h;->p:Lmicrosoft/aspnet/signalr/client/Logger;

    invoke-direct {v2, v0, v4, v1, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ZLmicrosoft/aspnet/signalr/client/Logger;)V

    iput-object v2, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    .line 259
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    const-string v1, "UserNotificationHub"

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->createHubProxy(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/realtime/h;->e:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    .line 261
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->e:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    const-string v1, "notification"

    iget-object v2, p0, Lcom/roblox/client/realtime/h;->m:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 262
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->e:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    const-string v1, "notification"

    iget-object v2, p0, Lcom/roblox/client/realtime/h;->l:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/Long;

    invoke-virtual/range {v0 .. v5}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 264
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->e:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    const-string v1, "subscriptionStatus"

    iget-object v2, p0, Lcom/roblox/client/realtime/h;->n:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 265
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->e:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    const-string v1, "subscriptionStatus"

    iget-object v2, p0, Lcom/roblox/client/realtime/h;->o:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1;Ljava/lang/Class;)V

    .line 268
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    new-instance v1, Lcom/roblox/client/realtime/h$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/realtime/h$6;-><init>(Lcom/roblox/client/realtime/h;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->error(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)V

    .line 310
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    new-instance v1, Lcom/roblox/client/realtime/h$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/realtime/h$7;-><init>(Lcom/roblox/client/realtime/h;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->connected(Ljava/lang/Runnable;)V

    .line 336
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->d:Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    new-instance v1, Lcom/roblox/client/realtime/h$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/realtime/h$8;-><init>(Lcom/roblox/client/realtime/h;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->closed(Ljava/lang/Runnable;)V

    .line 367
    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-static {v4}, Lmicrosoft/aspnet/signalr/client/Platform;->setFallbackCookie(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canStartConnectionOnConnectivityRestore()Z
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/realtime/h;->a()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Disconnected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/roblox/client/realtime/h;->k:Lcom/roblox/client/realtime/i;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/realtime/i;->a(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 69
    return-void
.end method

.method public shouldStopPreviousConnectionOnStart()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/roblox/client/realtime/h;->b()V

    .line 445
    invoke-direct {p0}, Lcom/roblox/client/realtime/h;->e()V

    .line 446
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/realtime/h;->b(Z)V

    .line 440
    return-void
.end method
