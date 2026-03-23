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
.field private b:Lcom/roblox/client/pushnotification/l$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/roblox/client/pushnotification/l$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/pushnotification/l$1;-><init>(Lcom/roblox/client/pushnotification/l;)V

    iput-object v0, p0, Lcom/roblox/client/pushnotification/l;->b:Lcom/roblox/client/pushnotification/l$a;

    return-void
.end method

.method public static a()Lcom/roblox/client/pushnotification/l;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/roblox/client/pushnotification/l;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/roblox/client/pushnotification/l;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/l;-><init>()V

    sput-object v0, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/roblox/client/pushnotification/l;->a:Lcom/roblox/client/pushnotification/l;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/roblox/client/pushnotification/l;Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->e(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    .line 101
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 102
    invoke-virtual {p3, p2, p4}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/roblox/client/pushnotification/q;)Z
    .locals 1

    .prologue
    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string v0, "AUTHORIZE_PUSH_NOTIFICATIONS_FOR_USER"

    invoke-virtual {p2, p1, v0}, Lcom/roblox/client/pushnotification/q;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/roblox/client/pushnotification/n;->a()Lcom/roblox/client/pushnotification/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/n;->a(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/q;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Z)V

    .line 37
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 94
    const-string v0, "rbx.push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p3, p1, p4, p2}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/a/a;Lcom/roblox/client/pushnotification/l$a;)V
    .locals 6

    .prologue
    .line 86
    if-eqz p5, :cond_0

    if-eqz p2, :cond_0

    if-eqz p6, :cond_0

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/l$a;)V

    .line 89
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->e(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;ZLcom/roblox/client/pushnotification/m;)V

    .line 43
    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;ZLcom/roblox/client/pushnotification/m;)V
    .locals 0

    .prologue
    .line 47
    if-eqz p3, :cond_0

    .line 48
    invoke-interface {p3, p1, p2}, Lcom/roblox/client/pushnotification/m;->a(Landroid/content/Context;Z)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/l;)V
    .locals 7

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "rbx.push"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    .line 119
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->c()Landroid/content/Context;

    move-result-object v1

    .line 120
    invoke-direct {p0, v1}, Lcom/roblox/client/pushnotification/l;->e(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v2}, Lcom/roblox/client/pushnotification/m;->b()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->b()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/l;->a()Z

    move-result v4

    .line 125
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/roblox/client/pushnotification/l;->b(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v5, Lcom/roblox/client/pushnotification/a/a;

    invoke-direct {v5}, Lcom/roblox/client/pushnotification/a/a;-><init>()V

    iget-object v6, p0, Lcom/roblox/client/pushnotification/l;->b:Lcom/roblox/client/pushnotification/l$a;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/a/a;Lcom/roblox/client/pushnotification/l$a;)V

    .line 129
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->e(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/roblox/client/pushnotification/m;->b()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/roblox/client/pushnotification/l;->a(Ljava/lang/String;Landroid/content/Context;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/pushnotification/q;Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->e(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/roblox/client/pushnotification/m;->c()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Lcom/roblox/client/pushnotification/b/k;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/l;->e(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/roblox/client/pushnotification/m;->a()Lcom/roblox/client/pushnotification/b/k;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/roblox/client/pushnotification/b/k;->a:Lcom/roblox/client/pushnotification/b/k;

    goto :goto_0
.end method
