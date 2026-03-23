.class public Lcom/roblox/client/hybrid/a/i;
.super Lcom/roblox/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RealTime"

    .line 27
    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/roblox/client/hybrid/a/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/hybrid/a/i$a;-><init>(Lcom/roblox/client/hybrid/a/i;Lcom/roblox/client/hybrid/a/i$1;)V

    const-string v1, "isConnected"

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/hybrid/a/i;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/roblox/client/s/c;->a()Z

    move-result v0

    const-string v1, "rbx.signalr"

    if-eqz v0, :cond_0

    const-string p0, "User is logging out. Skip realtime event."

    .line 80
    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "namespace"

    .line 86
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "detail"

    .line 87
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sequenceNumber"

    .line 88
    invoke-virtual {v0, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "RBHybridModuleRealtime.onRealtimeNotification() "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance p0, Lcom/roblox/a/b;

    invoke-direct {p0}, Lcom/roblox/a/b;-><init>()V

    const-string p1, "RealTime"

    .line 93
    invoke-virtual {p0, p1}, Lcom/roblox/a/b;->a(Ljava/lang/String;)V

    const-string p1, "onNotification"

    .line 94
    invoke-virtual {p0, p1}, Lcom/roblox/a/b;->b(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/roblox/a/b;->a(Lorg/json/JSONObject;)V

    .line 96
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/roblox/a/a/a;

    invoke-direct {p2, p0}, Lcom/roblox/a/a/a;-><init>(Lcom/roblox/a/b;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(ZJLorg/json/JSONObject;)V
    .locals 2

    .line 57
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isConnected"

    .line 58
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "sequenceNumber"

    .line 59
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "namespaceSequenceNumbers"

    .line 60
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "rbx.signalr"

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RBHybridModuleRealtime.onConnectionEvent() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p0, Lcom/roblox/a/b;

    invoke-direct {p0}, Lcom/roblox/a/b;-><init>()V

    const-string p1, "RealTime"

    .line 65
    invoke-virtual {p0, p1}, Lcom/roblox/a/b;->a(Ljava/lang/String;)V

    const-string p1, "onConnectionEvent"

    .line 66
    invoke-virtual {p0, p1}, Lcom/roblox/a/b;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/roblox/a/b;->a(Lorg/json/JSONObject;)V

    .line 68
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/roblox/a/a/a;

    invoke-direct {p2, p0}, Lcom/roblox/a/a/a;-><init>(Lcom/roblox/a/b;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
