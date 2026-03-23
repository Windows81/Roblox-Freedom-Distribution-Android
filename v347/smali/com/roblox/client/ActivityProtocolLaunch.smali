.class public Lcom/roblox/client/ActivityProtocolLaunch;
.super Lcom/roblox/client/k;
.source "SourceFile"


# instance fields
.field private final m:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    .line 26
    const-string v0, "placeid"

    iput-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->m:Ljava/lang/String;

    .line 27
    const-string v0, "userid"

    iput-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->p:Ljava/lang/String;

    .line 28
    const-string v0, "accesscode"

    iput-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->q:Ljava/lang/String;

    .line 29
    const-string v0, "gameinstanceid"

    iput-object v0, p0, Lcom/roblox/client/ActivityProtocolLaunch;->r:Ljava/lang/String;

    return-void
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->c()Z

    move-result v0

    .line 111
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/abtesting/a;->j()Z

    move-result v1

    .line 113
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 33
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/game/c;->a(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v7

    .line 42
    :try_start_0
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 44
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 55
    :goto_1
    :try_start_1
    const-string v0, "userid"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    move-wide v8, v0

    .line 60
    :goto_2
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    cmp-long v0, v8, v4

    if-eqz v0, :cond_5

    .line 62
    :cond_0
    const-string v0, "accesscode"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string v1, "gameinstanceid"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, v0, v1, v6}, Lcom/roblox/client/game/a;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 67
    :goto_3
    invoke-virtual {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const-string v1, "rbx.externallaunch"

    const-string v2, "onCreate() activity is root - starting splash"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v1, Lcom/roblox/client/startup/e;->g:Lcom/roblox/client/startup/e;

    invoke-static {p0, v1}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    const-string v2, "game_init_params"

    invoke-static {v0}, Lcom/roblox/client/game/a;->a(Lcom/roblox/client/game/a;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityProtocolLaunch;->startActivity(Landroid/content/Intent;)V

    .line 98
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->finish()V

    .line 99
    return-void

    .line 47
    :cond_2
    :try_start_2
    const-string v0, "placeid"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    move-wide v2, v4

    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    move-wide v8, v4

    goto :goto_2

    .line 77
    :cond_3
    const-string v1, "rbx.externallaunch"

    const-string v2, "onCreate() activity on stack - checking to launch data"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/roblox/client/ActivityProtocolLaunch;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/roblox/client/game/b;->a(Landroid/app/Activity;Lcom/roblox/client/game/a;)V

    .line 82
    const-string v0, "AppLaunch"

    const-string v1, "ProtocolLaunch"

    const-string v2, "PlaceId"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 87
    :cond_4
    const-string v1, "AppLaunch"

    const-string v2, "ProtocolLaunch"

    const-string v3, "Resume App"

    invoke-static {v1, v2, v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/a;)V

    goto :goto_4

    :cond_5
    move-object v0, v6

    goto :goto_3
.end method
