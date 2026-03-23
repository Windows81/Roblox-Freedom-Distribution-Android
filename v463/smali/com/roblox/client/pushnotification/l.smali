.class public Lcom/roblox/client/pushnotification/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/pushnotification/l$a;
    }
.end annotation


# static fields
.field private static a:Lcom/roblox/client/pushnotification/l;


# instance fields
.field private b:Landroid/os/Bundle;

.field private c:Lcom/roblox/client/pushnotification/l$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/roblox/client/pushnotification/l$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/pushnotification/l$1;-><init>(Lcom/roblox/client/pushnotification/l;)V

    iput-object v0, p0, Lcom/roblox/client/pushnotification/l;->c:Lcom/roblox/client/pushnotification/l$a;

    return-void
.end method

.method public static a()Lcom/roblox/client/pushnotification/l;
    .locals 2

    .line 28
    sget-object v0, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/roblox/client/pushnotification/l;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/roblox/client/pushnotification/l;

    invoke-direct {v1}, Lcom/roblox/client/pushnotification/l;-><init>()V

    sput-object v1, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/pushnotification/l;Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->f(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 139
    invoke-virtual {p3, p2, p4}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :cond_1
    :goto_0
    return-object v0
.end method

.method private f(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;
    .locals 1

    .line 39
    invoke-static {}, Lcom/roblox/client/pushnotification/n;->a()Lcom/roblox/client/pushnotification/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/n;->a(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)V
    .locals 2

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p3, p1, p4, p2}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/a/a;Lcom/roblox/client/pushnotification/l$a;)V
    .locals 6

    if-eqz p5, :cond_0

    if-eqz p2, :cond_0

    if-eqz p6, :cond_0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/l$a;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->f(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;ZLcom/roblox/client/pushnotification/m;)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;ZLcom/roblox/client/pushnotification/m;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 55
    invoke-interface {p3, p1, p2}, Lcom/roblox/client/pushnotification/m;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/roblox/client/pushnotification/l;->b:Landroid/os/Bundle;

    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/l;)V
    .locals 8

    .line 152
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    .line 156
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->c()Landroid/content/Context;

    move-result-object v2

    .line 157
    invoke-direct {p0, v2}, Lcom/roblox/client/pushnotification/l;->f(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1}, Lcom/roblox/client/pushnotification/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->b()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->a()Z

    move-result v5

    .line 162
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/roblox/client/pushnotification/l;->b(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v6, Lcom/roblox/client/pushnotification/a/a;

    invoke-direct {v6}, Lcom/roblox/client/pushnotification/a/a;-><init>()V

    iget-object v7, p0, Lcom/roblox/client/pushnotification/l;->c:Lcom/roblox/client/pushnotification/l$a;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/a/a;Lcom/roblox/client/pushnotification/l$a;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->f(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/m;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 180
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/roblox/client/pushnotification/l;->a(Ljava/lang/String;Landroid/content/Context;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/roblox/client/pushnotification/l;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/roblox/client/pushnotification/l;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/roblox/client/pushnotification/l;->b:Landroid/os/Bundle;

    :cond_0
    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->f(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/m;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroid/content/Context;)Lcom/roblox/client/pushnotification/b/k;
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->f(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/m;->a()Lcom/roblox/client/pushnotification/b/k;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    sget-object p1, Lcom/roblox/client/pushnotification/b/k;->a:Lcom/roblox/client/pushnotification/b/k;

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/roblox/client/pushnotification/l;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "EXTRA_NOTIFICATION_TYPE"

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 6

    .line 84
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    .line 85
    invoke-static {p1}, Landroidx/core/app/l;->a(Landroid/content/Context;)Landroidx/core/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/l;->a()Z

    move-result v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidNotifState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rbx.push"

    invoke-static {v3, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "AndroidNotifStatePrefKey"

    .line 91
    invoke-virtual {v0, p1, v2}, Lcom/roblox/client/pushnotification/q;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v0, p1, v2}, Lcom/roblox/client/pushnotification/q;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eq v1, v4, :cond_1

    .line 93
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Different value. Reporting new state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0, p1, v2, v1}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p1, "osSettings"

    .line 95
    invoke-static {p1, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
