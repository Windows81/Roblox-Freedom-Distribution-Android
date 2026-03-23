.class Lcom/roblox/client/realtime/NativeSignalRImplementation;
.super Lcom/roblox/client/realtime/a;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "rbx.signalr_impl"


# instance fields
.field private final mProcessor:Lcom/roblox/client/realtime/i;


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/roblox/client/realtime/a;-><init>()V

    .line 21
    new-instance v0, Lcom/roblox/client/realtime/i;

    invoke-direct {v0}, Lcom/roblox/client/realtime/i;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/realtime/NativeSignalRImplementation;->mProcessor:Lcom/roblox/client/realtime/i;

    .line 25
    :try_start_0
    const-string v0, "signalrclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v0, "signalr-native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    :goto_0
    const-string v1, "rbx.signalr_impl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    throw v0

    .line 27
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private postSignalRConnectivityChangeEvent(ZZ)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "rbx.signalr_impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSignalRConnectivityChangeEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/roblox/client/realtime/NativeSignalRImplementation;->sSignalRConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-boolean v0, Lcom/roblox/client/realtime/NativeSignalRImplementation;->sSignalRConnected:Z

    if-eq v0, p1, :cond_0

    .line 76
    sput-boolean p1, Lcom/roblox/client/realtime/NativeSignalRImplementation;->sSignalRConnected:Z

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/v;

    invoke-static {}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->getSequenceNumber()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/roblox/client/e/v;-><init>(ZJZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->getSequenceNumber()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/roblox/client/hybrid/a/i;->a(ZJ)V

    .line 84
    invoke-static {}, Lcom/roblox/client/b;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->getSequenceNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastConnection(ILjava/lang/String;)V

    .line 88
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/roblox/client/realtime/NativeSignalRImplementation;->mProcessor:Lcom/roblox/client/realtime/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/roblox/client/realtime/i;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 65
    return-void
.end method

.method private setSequenceNumber(J)V
    .locals 3

    .prologue
    .line 68
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 69
    sput-wide p1, Lcom/roblox/client/realtime/NativeSignalRImplementation;->sSequenceNumber:J

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public callbackOnDisconnectedEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    const-string v0, "rbx.signalr_impl"

    const-string v1, "callbackOnDisconnectedEvent()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, v2, v2}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->postSignalRConnectivityChangeEvent(ZZ)V

    .line 96
    return-void
.end method

.method public callbackOnNotificationEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 107
    const-string v0, "rbx.signalr_impl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackOnNotificationEvent: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", payload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, p3, p4}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->setSequenceNumber(J)V

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->processEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 114
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/hybrid/a/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    invoke-static {}, Lcom/roblox/client/b;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p2}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->getTypeFromPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public callbackOnSubscriptionEvent(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-static {}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->getSequenceNumber()J

    move-result-wide v2

    .line 100
    const-string v0, "rbx.signalr_impl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbackOnSubscriptionEvent: sequence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->setSequenceNumber(J)V

    .line 102
    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    .line 103
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->postSignalRConnectivityChangeEvent(ZZ)V

    .line 104
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native nativeStartSignalR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeStopSignalR()V
.end method

.method public setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/roblox/client/realtime/NativeSignalRImplementation;->mProcessor:Lcom/roblox/client/realtime/i;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/realtime/i;->a(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V

    .line 61
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    const-string v1, "rbx.signalr_impl"

    const-string v2, "start: ...."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseSignalRUrl()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {}, Lcom/roblox/client/b;->aB()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 44
    :goto_0
    invoke-static {}, Lcom/roblox/client/b;->aD()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/c;->e()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v0, p0

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->nativeStartSignalR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "rbx.signalr_impl"

    const-string v1, "start: ... END."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    :cond_0
    move-object v4, v0

    .line 41
    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 45
    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "rbx.signalr_impl"

    const-string v1, "stop: ...."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/roblox/client/realtime/NativeSignalRImplementation;->nativeStopSignalR()V

    .line 56
    const-string v0, "rbx.signalr_impl"

    const-string v1, "stop: ... END."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
