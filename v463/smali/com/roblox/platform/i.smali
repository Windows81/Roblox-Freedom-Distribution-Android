.class public Lcom/roblox/platform/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/roblox/platform/c;

.field private static c:Lc/x;

.field private static d:Lcom/roblox/platform/http/e;

.field private static e:Lcom/roblox/platform/h;

.field private static f:Lcom/roblox/platform/f;

.field private static g:Lcom/roblox/platform/b;

.field private static h:Lcom/roblox/platform/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/roblox/platform/a;

    invoke-direct {v0}, Lcom/roblox/platform/a;-><init>()V

    sput-object v0, Lcom/roblox/platform/i;->e:Lcom/roblox/platform/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/platform/f;
    .locals 2

    .line 40
    sget-object v0, Lcom/roblox/platform/i;->f:Lcom/roblox/platform/f;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/roblox/platform/i;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/roblox/platform/i;->f:Lcom/roblox/platform/f;

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/roblox/platform/i;->e:Lcom/roblox/platform/h;

    invoke-interface {v1}, Lcom/roblox/platform/h;->a()Lcom/roblox/platform/f;

    move-result-object v1

    sput-object v1, Lcom/roblox/platform/i;->f:Lcom/roblox/platform/f;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/platform/i;->f:Lcom/roblox/platform/f;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Lcom/roblox/platform/k$a;

    invoke-direct {v0}, Lcom/roblox/platform/k$a;-><init>()V

    .line 71
    invoke-static {}, Lcom/roblox/platform/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/k$a;->a(I)Lcom/roblox/platform/k$a;

    move-result-object v0

    .line 72
    invoke-static {p0}, Lcom/roblox/platform/a/a;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/k$a;->a(Landroid/graphics/Point;)Lcom/roblox/platform/k$a;

    move-result-object v0

    .line 73
    invoke-static {p0}, Lcom/roblox/platform/a/a;->b(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/k$a;->b(Landroid/graphics/Point;)Lcom/roblox/platform/k$a;

    move-result-object v0

    .line 74
    invoke-static {p0}, Lcom/roblox/platform/a/a;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/roblox/platform/k$a;->c(Landroid/graphics/Point;)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 75
    invoke-static {}, Lcom/roblox/platform/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/platform/k$a;->a(Ljava/lang/String;)Lcom/roblox/platform/k$a;

    move-result-object p0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v0}, Lcom/roblox/platform/k$a;->b(Ljava/lang/String;)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p2}, Lcom/roblox/platform/k$a;->c(Ljava/lang/String;)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p1}, Lcom/roblox/platform/k$a;->d(Ljava/lang/String;)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p3}, Lcom/roblox/platform/k$a;->e(Ljava/lang/String;)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p4}, Lcom/roblox/platform/k$a;->f(Ljava/lang/String;)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 81
    invoke-virtual {p0, p5}, Lcom/roblox/platform/k$a;->a(Z)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p6}, Lcom/roblox/platform/k$a;->b(Z)Lcom/roblox/platform/k$a;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/roblox/platform/k$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/roblox/platform/b;)V
    .locals 0

    .line 136
    sput-object p0, Lcom/roblox/platform/i;->g:Lcom/roblox/platform/b;

    return-void
.end method

.method public static a(Lcom/roblox/platform/c;)V
    .locals 0

    .line 111
    sput-object p0, Lcom/roblox/platform/i;->b:Lcom/roblox/platform/c;

    return-void
.end method

.method public static a(Lcom/roblox/platform/h;)V
    .locals 1

    .line 51
    sput-object p0, Lcom/roblox/platform/i;->e:Lcom/roblox/platform/h;

    .line 52
    const-class p0, Lcom/roblox/platform/i;

    monitor-enter p0

    const/4 v0, 0x0

    .line 53
    :try_start_0
    sput-object v0, Lcom/roblox/platform/i;->f:Lcom/roblox/platform/f;

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/roblox/platform/http/a;)V
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/roblox/platform/http/i;->a(Lcom/roblox/platform/http/a;)V

    return-void
.end method

.method public static a(Lcom/roblox/platform/http/e;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/roblox/platform/i;->d:Lcom/roblox/platform/http/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 93
    sput-object p0, Lcom/roblox/platform/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/roblox/platform/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lcom/roblox/platform/c;
    .locals 1

    .line 107
    sget-object v0, Lcom/roblox/platform/i;->b:Lcom/roblox/platform/c;

    return-object v0
.end method

.method public static d()Lcom/roblox/platform/b;
    .locals 1

    .line 115
    sget-object v0, Lcom/roblox/platform/i;->g:Lcom/roblox/platform/b;

    if-nez v0, :cond_1

    .line 117
    sget-object v0, Lcom/roblox/platform/i;->h:Lcom/roblox/platform/b;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/roblox/platform/i$1;

    invoke-direct {v0}, Lcom/roblox/platform/i$1;-><init>()V

    sput-object v0, Lcom/roblox/platform/i;->h:Lcom/roblox/platform/b;

    .line 129
    :cond_0
    sget-object v0, Lcom/roblox/platform/i;->h:Lcom/roblox/platform/b;

    :cond_1
    return-object v0
.end method

.method public static e()Lc/x;
    .locals 2

    .line 140
    sget-object v0, Lcom/roblox/platform/i;->c:Lc/x;

    if-nez v0, :cond_2

    .line 141
    const-class v0, Lcom/roblox/platform/i;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/roblox/platform/i;->c:Lc/x;

    if-nez v1, :cond_1

    .line 143
    sget-object v1, Lcom/roblox/platform/i;->d:Lcom/roblox/platform/http/e;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/roblox/platform/http/c;

    invoke-direct {v1}, Lcom/roblox/platform/http/c;-><init>()V

    sput-object v1, Lcom/roblox/platform/i;->d:Lcom/roblox/platform/http/e;

    .line 146
    :cond_0
    sget-object v1, Lcom/roblox/platform/i;->d:Lcom/roblox/platform/http/e;

    invoke-interface {v1}, Lcom/roblox/platform/http/e;->a()Lc/x;

    move-result-object v1

    sput-object v1, Lcom/roblox/platform/i;->c:Lc/x;

    .line 148
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 150
    :cond_2
    :goto_0
    sget-object v0, Lcom/roblox/platform/i;->c:Lc/x;

    return-object v0
.end method
