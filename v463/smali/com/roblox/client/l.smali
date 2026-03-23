.class public Lcom/roblox/client/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/l$a;
    }
.end annotation


# static fields
.field private static b:Lcom/roblox/client/l;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "rbx.main"

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "com.roblox.client.implementation.AppImplementations"

    .line 42
    iput-object v1, p0, Lcom/roblox/client/l;->a:Ljava/lang/String;

    .line 65
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to instantiate implementation"

    .line 70
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v1, "Failed to find implementation class"

    .line 68
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static a()Lcom/roblox/client/l;
    .locals 2

    .line 51
    sget-object v0, Lcom/roblox/client/l;->b:Lcom/roblox/client/l;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/roblox/client/l;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/roblox/client/l;->b:Lcom/roblox/client/l;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/roblox/client/l;

    invoke-direct {v1}, Lcom/roblox/client/l;-><init>()V

    sput-object v1, Lcom/roblox/client/l;->b:Lcom/roblox/client/l;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/l;->b:Lcom/roblox/client/l;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/l;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/roblox/client/shell/l;

    invoke-interface {v0, p1}, Lcom/roblox/client/shell/l;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "Using default Start class"

    .line 107
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/landing/ActivityStartMVP;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Lcom/roblox/client/game/d$a;Lcom/roblox/client/game/d$b;)Lcom/roblox/client/game/d;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/b;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lcom/roblox/client/shell/b;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/shell/b;->a(Lcom/roblox/client/game/d$a;Lcom/roblox/client/game/d$b;)Lcom/roblox/client/game/d;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "Using default DataModelNotifications"

    .line 89
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/roblox/client/game/d;

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/game/d;-><init>(Lcom/roblox/client/game/d$a;Lcom/roblox/client/game/d$b;)V

    return-object v0
.end method

.method public a(Landroid/app/Activity;)Lcom/roblox/client/purchase/a/a;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/h;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/roblox/client/shell/h;

    invoke-interface {v0, p1}, Lcom/roblox/client/shell/h;->a(Landroid/app/Activity;)Lcom/roblox/client/purchase/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "rbx.main"

    const-string v0, "Using empty Midas"

    .line 143
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance p1, Lcom/roblox/client/purchase/a/a;

    invoke-direct {p1}, Lcom/roblox/client/purchase/a/a;-><init>()V

    return-object p1
.end method

.method public a(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Le/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;",
            ")",
            "Le/b<",
            "Lc/ad;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/i;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Lcom/roblox/client/shell/i;

    invoke-interface {v0, p1}, Lcom/roblox/client/shell/i;->a(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Le/b;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "rbx.main"

    const-string v0, "No default push registration call"

    .line 152
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/g;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/roblox/client/shell/g;

    invoke-interface {v0, p1}, Lcom/roblox/client/shell/g;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "Using default Main class"

    .line 116
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public b()Lcom/roblox/platform/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/j;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Lcom/roblox/client/shell/j;

    invoke-interface {v0}, Lcom/roblox/client/shell/j;->a()Lcom/roblox/platform/h;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "Using default Provider"

    .line 78
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/roblox/platform/a;

    invoke-direct {v0}, Lcom/roblox/platform/a;-><init>()V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/c;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Lcom/roblox/client/shell/c;

    invoke-interface {v0, p1}, Lcom/roblox/client/shell/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "Using default Game class"

    .line 125
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/game/ActivityGame;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public c()Lcom/roblox/client/n/b;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/e;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lcom/roblox/client/shell/e;

    invoke-interface {v0}, Lcom/roblox/client/shell/e;->a()Lcom/roblox/client/n/b;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "Using default GenericWebFragment"

    .line 98
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/roblox/client/n/b;

    invoke-direct {v0}, Lcom/roblox/client/n/b;-><init>()V

    return-object v0
.end method

.method public d()Lcom/roblox/client/v/a;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/m;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lcom/roblox/client/shell/m;

    invoke-interface {v0}, Lcom/roblox/client/shell/m;->a()Lcom/roblox/client/v/a;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "Using empty TSS"

    .line 134
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/roblox/client/v/a;

    invoke-direct {v0}, Lcom/roblox/client/v/a;-><init>()V

    return-object v0
.end method

.method public e()Lcom/roblox/client/pushnotification/m;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/k;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lcom/roblox/client/shell/k;

    invoke-interface {v0}, Lcom/roblox/client/shell/k;->a()Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "No default push registrar"

    .line 161
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/roblox/client/s/d;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/a;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Lcom/roblox/client/shell/a;

    invoke-interface {v0}, Lcom/roblox/client/shell/a;->getAppsFlyerManager()Lcom/roblox/client/s/d;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "No AppsFlyer"

    .line 170
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/roblox/client/s/d;

    invoke-direct {v0}, Lcom/roblox/client/s/d;-><init>()V

    return-object v0
.end method

.method public g()Lcom/roblox/client/analytics/e;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/f;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/roblox/client/shell/f;

    invoke-interface {v0}, Lcom/roblox/client/shell/f;->createGoogleAnalyticsImpl()Lcom/roblox/client/analytics/e;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "rbx.main"

    const-string v1, "No GA"

    .line 179
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/roblox/client/analytics/e;

    invoke-direct {v0}, Lcom/roblox/client/analytics/e;-><init>()V

    return-object v0
.end method

.method public h()Lcom/roblox/client/game/i;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/roblox/client/l;->c:Ljava/lang/Object;

    instance-of v1, v0, Lcom/roblox/client/shell/d;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lcom/roblox/client/shell/d;

    invoke-interface {v0}, Lcom/roblox/client/shell/d;->a()Lcom/roblox/client/game/i;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-static {}, Lcom/roblox/client/l$a;->a()Lcom/roblox/client/game/i;

    move-result-object v0

    return-object v0
.end method
