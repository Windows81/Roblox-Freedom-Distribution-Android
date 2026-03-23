.class Lcom/roblox/client/realtime/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler2",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/realtime/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/realtime/h;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 123
    iget-object v2, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RbxSignalRImpl SubscriptionHandler2[subscriptionStatus]: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 127
    const-string v2, "Reconnected"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Subscribed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/roblox/client/realtime/a;->sSignalRConnected:Z

    if-nez v2, :cond_2

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v2}, Lcom/roblox/client/realtime/h;->b(Lcom/roblox/client/realtime/h;)V

    .line 138
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v2, "MillisecondsBeforeHandlingReconnect"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v2, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 140
    :try_start_1
    const-string v7, "SequenceNumber"

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 141
    invoke-static {}, Lcom/roblox/client/realtime/a;->getSequenceNumber()J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move v6, v1

    .line 142
    :goto_0
    const-wide/16 v10, 0x1

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    :goto_1
    or-int v0, v6, v1

    .line 143
    :try_start_2
    iget-object v1, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v1, v8, v9}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    :goto_2
    iget-object v1, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    new-instance v6, Lcom/roblox/client/realtime/h$a;

    iget-object v7, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {v6, v7, v0}, Lcom/roblox/client/realtime/h$a;-><init>(Lcom/roblox/client/realtime/h;Z)V

    invoke-static {v1, v6}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 149
    invoke-static {}, Lcom/roblox/client/b;->N()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/roblox/client/b;->N()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->d(Lcom/roblox/client/realtime/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/realtime/h$3;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v1}, Lcom/roblox/client/realtime/h;->c(Lcom/roblox/client/realtime/h;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_2
    return-void

    :cond_3
    move v6, v0

    .line 141
    goto :goto_0

    :cond_4
    move v1, v0

    .line 142
    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    move-wide v2, v4

    move v12, v1

    move-object v1, v0

    move v0, v12

    .line 145
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 144
    :catch_1
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public synthetic run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/realtime/h$3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
