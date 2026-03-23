.class public Lcom/roblox/client/ActivityProtocolLaunch;
.super Lcom/roblox/client/q;
.source "SourceFile"


# instance fields
.field private final q:Lcom/roblox/client/game/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    .line 36
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/l;->h()Lcom/roblox/client/game/i;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->q:Lcom/roblox/client/game/i;

    return-void
.end method

.method private a(Lcom/roblox/client/game/h;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->q:Lcom/roblox/client/game/i;

    invoke-virtual {v0}, Lcom/roblox/client/game/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "rbx.externallaunch"

    const-string v0, "startGame: A game is in progress. Ignore request!"

    .line 137
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureGameInProgress:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->q:Lcom/roblox/client/game/i;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/roblox/client/game/i;->a(Landroid/app/Activity;Lcom/roblox/client/game/h;I)V

    return-void
.end method

.method private n()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->q:Lcom/roblox/client/game/i;

    invoke-virtual {v0}, Lcom/roblox/client/game/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rbx.externallaunch"

    const-string v1, "Protocol Launch: Can\'t start game."

    .line 121
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 40
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/roblox/engine/jni/NativeAppBridgeInterface;->isInAppLinksLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/roblox/engine/jni/NativeAppBridgeInterface;->checkInAppLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcom/roblox/client/routing/a;->a()Lcom/roblox/client/routing/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/routing/a;->b(Ljava/lang/String;)V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/game/k;->a(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 55
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-string v3, "placeid"

    .line 60
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v3, v1

    :goto_0
    :try_start_1
    const-string v5, "userid"

    .line 68
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-wide v5, v1

    :goto_1
    cmp-long v7, v3, v1

    if-nez v7, :cond_3

    cmp-long v7, v5, v1

    if-eqz v7, :cond_4

    :cond_3
    const-string v0, "accesscode"

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v0, "gameinstanceid"

    .line 76
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x0

    const-string v12, "ExternalProtocol"

    invoke-static/range {v7 .. v12}, Lcom/roblox/client/game/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/roblox/client/game/h;

    move-result-object v0

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->isTaskRoot()Z

    move-result p1

    const-string v1, "rbx.externallaunch"

    if-eqz p1, :cond_6

    const-string p1, "onCreate() activity is root - starting splash (regular start-up flow)"

    .line 81
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    .line 84
    iget-object p1, p0, Lcom/roblox/client/ActivityProtocolLaunch;->q:Lcom/roblox/client/game/i;

    invoke-virtual {p1, v0}, Lcom/roblox/client/game/i;->a(Lcom/roblox/client/game/h;)V

    .line 86
    :cond_5
    sget-object p1, Lcom/roblox/client/startup/e;->g:Lcom/roblox/client/startup/e;

    invoke-static {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityProtocolLaunch;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string p1, "onCreate() activity on existing stack - checking to launch data"

    .line 90
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ProtocolLaunch"

    const-string v1, "AppLaunch"

    if-eqz v0, :cond_7

    .line 93
    invoke-direct {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->n()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 94
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityProtocolLaunch;->a(Lcom/roblox/client/game/h;)V

    const-string v0, "PlaceId"

    .line 95
    invoke-static {v1, p1, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v2, "Resume App"

    .line 100
    invoke-static {v1, p1, v2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 105
    iget-object p1, p0, Lcom/roblox/client/ActivityProtocolLaunch;->q:Lcom/roblox/client/game/i;

    invoke-virtual {p1, v0}, Lcom/roblox/client/game/i;->a(Lcom/roblox/client/game/h;)V

    .line 111
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->finish()V

    return-void
.end method
