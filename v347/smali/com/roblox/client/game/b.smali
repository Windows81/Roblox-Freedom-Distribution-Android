.class public Lcom/roblox/client/game/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/b$a;
    }
.end annotation


# static fields
.field private static c:Lcom/roblox/client/game/b;


# instance fields
.field private a:Lcom/roblox/client/game/b$a;

.field private b:Lcom/roblox/client/game/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/roblox/client/game/b$a;->a:Lcom/roblox/client/game/b$a;

    iput-object v0, p0, Lcom/roblox/client/game/b;->a:Lcom/roblox/client/game/b$a;

    .line 51
    return-void
.end method

.method public static a()Lcom/roblox/client/game/b;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/roblox/client/game/b;->c:Lcom/roblox/client/game/b;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/roblox/client/game/b;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/roblox/client/game/b;->c:Lcom/roblox/client/game/b;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/roblox/client/game/b;

    invoke-direct {v0}, Lcom/roblox/client/game/b;-><init>()V

    sput-object v0, Lcom/roblox/client/game/b;->c:Lcom/roblox/client/game/b;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/roblox/client/game/b;->c:Lcom/roblox/client/game/b;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/roblox/client/game/b;->a:Lcom/roblox/client/game/b$a;

    sget-object v1, Lcom/roblox/client/game/b$a;->b:Lcom/roblox/client/game/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/roblox/client/game/a;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/roblox/client/game/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "GameManager"

    const-string v1, "startGame: A game is in progress. Ignore request!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v0, 0x7f0e0193

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/game/b;->a(Landroid/app/Activity;Lcom/roblox/client/game/a;I)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/roblox/client/game/a;I)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "GameManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGameForResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/roblox/client/b;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/roblox/client/b;->ad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/roblox/client/ActivityNativeMain;

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "GameManager"

    const-string v2, "startGameForResult: Remove GL apps in Main activity..."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    check-cast v0, Lcom/roblox/client/ActivityNativeMain;

    .line 81
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/ActivityNativeMain;Z)V

    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/game/GameLaunchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "game_init_params"

    invoke-static {p2}, Lcom/roblox/client/game/a;->a(Lcom/roblox/client/game/a;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    const-string v0, "GameManager"

    const-string v1, "onGameEnded:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/roblox/client/game/b$a;->c:Lcom/roblox/client/game/b$a;

    iput-object v0, p0, Lcom/roblox/client/game/b;->a:Lcom/roblox/client/game/b$a;

    .line 109
    invoke-static {}, Lcom/roblox/client/b;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "GameManager"

    const-string v1, "onGameEnded: Check if we need to upload any crash dump..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/roblox/client/b/a;->a()Lcom/roblox/client/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/b/a;->a(Landroid/content/Context;)V

    .line 113
    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/game/a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/roblox/client/game/b;->b:Lcom/roblox/client/game/a;

    .line 121
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "GameManager"

    const-string v1, "onGameStarted:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/roblox/client/game/b$a;->b:Lcom/roblox/client/game/b$a;

    iput-object v0, p0, Lcom/roblox/client/game/b;->a:Lcom/roblox/client/game/b$a;

    .line 103
    return-void
.end method

.method public c()Lcom/roblox/client/game/a;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/roblox/client/game/b;->b:Lcom/roblox/client/game/a;

    return-object v0
.end method
