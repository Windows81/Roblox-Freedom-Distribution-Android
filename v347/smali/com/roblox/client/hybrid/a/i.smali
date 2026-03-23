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
    .locals 3

    .prologue
    .line 27
    const-string v0, "RealTime"

    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, "isConnected"

    new-instance v1, Lcom/roblox/client/hybrid/a/i$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/hybrid/a/i$a;-><init>(Lcom/roblox/client/hybrid/a/i;Lcom/roblox/client/hybrid/a/i$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/i;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Lcom/roblox/client/j/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "RBHybridModuleRealtime"

    const-string v1, "User is logging out. Skip realtime event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string v1, "namespace"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "detail"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "sequenceNumber"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    const-string v1, "RBHybridModuleRealtime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RBHybridModuleRealtime.onRealtimeNotification() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v1, Lcom/roblox/a/b;

    invoke-direct {v1}, Lcom/roblox/a/b;-><init>()V

    .line 89
    const-string v2, "RealTime"

    invoke-virtual {v1, v2}, Lcom/roblox/a/b;->a(Ljava/lang/String;)V

    .line 90
    const-string v2, "onNotification"

    invoke-virtual {v1, v2}, Lcom/roblox/a/b;->b(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/roblox/a/b;->a(Lorg/json/JSONObject;)V

    .line 92
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/a/a/a;

    invoke-direct {v2, v1}, Lcom/roblox/a/a/a;-><init>(Lcom/roblox/a/b;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(ZJ)V
    .locals 5

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    const-string v1, "isConnected"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    const-string v1, "sequenceNumber"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    const-string v1, "RBHybridModuleRealtime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RBHybridModuleRealtime.onConnectionEvent() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Lcom/roblox/a/b;

    invoke-direct {v1}, Lcom/roblox/a/b;-><init>()V

    .line 61
    const-string v2, "RealTime"

    invoke-virtual {v1, v2}, Lcom/roblox/a/b;->a(Ljava/lang/String;)V

    .line 62
    const-string v2, "onConnectionEvent"

    invoke-virtual {v1, v2}, Lcom/roblox/a/b;->b(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/roblox/a/b;->a(Lorg/json/JSONObject;)V

    .line 64
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/a/a/a;

    invoke-direct {v2, v1}, Lcom/roblox/a/a/a;-><init>(Lcom/roblox/a/b;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
