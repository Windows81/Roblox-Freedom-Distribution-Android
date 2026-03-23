.class public Lcom/roblox/client/realtime/c;
.super Lcom/roblox/client/realtime/a;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/jni/realtime/a;


# instance fields
.field private final c:Lcom/roblox/client/realtime/f;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/roblox/client/realtime/a;-><init>()V

    .line 28
    new-instance v0, Lcom/roblox/client/realtime/f;

    invoke-direct {v0}, Lcom/roblox/client/realtime/f;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/realtime/c;->c:Lcom/roblox/client/realtime/f;

    const-string v0, "rbx.signalr"

    const-string v1, "[CONSTRUCTOR]:"

    .line 31
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 83
    sput-wide p1, Lcom/roblox/client/realtime/c;->b:J

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 77
    iget-object p3, p0, Lcom/roblox/client/realtime/c;->c:Lcom/roblox/client/realtime/f;

    invoke-virtual {p3, p1, p2}, Lcom/roblox/client/realtime/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postSignalRConnectivityChangeEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " prev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/roblox/client/realtime/c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " updatedChannels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.signalr"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-boolean v0, Lcom/roblox/client/realtime/c;->a:Z

    if-eq v0, p1, :cond_2

    .line 90
    sput-boolean p1, Lcom/roblox/client/realtime/c;->a:Z

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/l/m;

    invoke-direct {v1, p1, p2}, Lcom/roblox/client/l/m;-><init>(ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/roblox/client/realtime/c;->b()J

    move-result-wide v0

    invoke-virtual {p0, p3}, Lcom/roblox/client/realtime/c;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/roblox/client/hybrid/a/i;->a(ZJLorg/json/JSONObject;)V

    .line 100
    invoke-static {}, Lcom/roblox/client/b;->x()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 102
    invoke-static {}, Lcom/roblox/client/realtime/c;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p3, "{}"

    .line 106
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastConnection(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/roblox/client/realtime/g;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/roblox/client/realtime/c;->c:Lcom/roblox/client/realtime/f;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/realtime/f;->a(Ljava/lang/String;Lcom/roblox/client/realtime/g;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: destroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "Yes"

    goto :goto_0

    :cond_0
    const-string v1, "No"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.signalr"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Lcom/roblox/engine/jni/realtime/SignalRInterface;->nativeStopSignalR(Z)V

    .line 65
    invoke-static {}, Lcom/roblox/client/b;->bW()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->antiAddictionStop()V

    :cond_1
    const-string p1, "stop: ... END."

    .line 69
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 166
    :catch_0
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public c()V
    .locals 8

    const-string v0, "rbx.signalr"

    const-string v1, "start: ...."

    .line 36
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/roblox/client/u;->Y()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/roblox/platform/http/h;->b()Lcom/roblox/platform/http/h;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/platform/http/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {}, Lcom/roblox/client/u;->t()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {}, Lcom/roblox/client/b;->Z()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/j;->c()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 45
    :goto_0
    invoke-static {}, Lcom/roblox/client/b;->ab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/j;->e()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, v2

    :goto_1
    move-object v2, p0

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/roblox/engine/jni/realtime/SignalRInterface;->nativeStartSignalR(Lcom/roblox/engine/jni/realtime/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/roblox/client/b;->bW()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->antiAddictionStart()V

    :cond_2
    const-string v1, "start: ... END."

    .line 56
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public callbackOnDisconnectedEvent()V
    .locals 2

    const-string v0, "rbx.signalr"

    const-string v1, "callbackOnDisconnectedEvent()"

    .line 113
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, v0, v1, v1}, Lcom/roblox/client/realtime/c;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public callbackOnNotificationEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callbackOnNotificationEvent: event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.signalr"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, p3, p4}, Lcom/roblox/client/realtime/c;->a(J)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/roblox/client/realtime/c;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "SequenceNumber"

    .line 141
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 143
    invoke-static {}, Lcom/roblox/client/realtime/e;->a()Lcom/roblox/client/realtime/e;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/roblox/client/realtime/e;->a(Ljava/lang/String;J)V

    .line 146
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/realtime/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 151
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/hybrid/a/i;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 153
    invoke-static {}, Lcom/roblox/client/b;->x()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 154
    invoke-virtual {p0, p2}, Lcom/roblox/client/realtime/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public callbackOnSubscriptionEvent(JLjava/lang/String;)V
    .locals 4

    .line 119
    invoke-static {}, Lcom/roblox/client/realtime/c;->b()J

    move-result-wide v0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callbackOnSubscriptionEvent: sequence="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " namespaceSequenceNumbers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rbx.signalr"

    invoke-static {v3, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/realtime/c;->a(J)V

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    .line 125
    :cond_0
    invoke-virtual {p0, p3}, Lcom/roblox/client/realtime/c;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 126
    invoke-static {}, Lcom/roblox/client/realtime/e;->a()Lcom/roblox/client/realtime/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/roblox/client/realtime/e;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    .line 127
    invoke-static {}, Lcom/roblox/client/realtime/e;->a()Lcom/roblox/client/realtime/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/realtime/e;->b(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/realtime/c;->a(ZLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
