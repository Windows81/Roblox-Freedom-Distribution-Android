.class public Lcom/roblox/platform/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/roblox/platform/c;

.field private static c:Lb/w;

.field private static d:Lcom/roblox/platform/f;

.field private static e:Lcom/roblox/platform/e;

.field private static f:Lcom/roblox/platform/b;

.field private static g:Lcom/roblox/platform/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/roblox/platform/a;

    invoke-direct {v0}, Lcom/roblox/platform/a;-><init>()V

    sput-object v0, Lcom/roblox/platform/g;->d:Lcom/roblox/platform/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/m;)Lb/w;
    .locals 1

    .prologue
    const/16 v0, 0x1e

    .line 123
    invoke-static {p0, v0, v0}, Lcom/roblox/platform/g;->a(Lb/m;II)Lb/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lb/m;II)Lb/w;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lb/b/a;

    new-instance v1, Lcom/roblox/platform/g$2;

    invoke-direct {v1}, Lcom/roblox/platform/g$2;-><init>()V

    invoke-direct {v0, v1}, Lb/b/a;-><init>(Lb/b/a$b;)V

    .line 133
    sget-object v1, Lb/b/a$a;->d:Lb/b/a$a;

    invoke-virtual {v0, v1}, Lb/b/a;->a(Lb/b/a$a;)Lb/b/a;

    .line 135
    new-instance v1, Lb/w$a;

    invoke-direct {v1}, Lb/w$a;-><init>()V

    .line 136
    invoke-virtual {v1, v0}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    .line 137
    invoke-static {}, Lcom/roblox/platform/g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/roblox/platform/http/b/b;

    invoke-static {}, Lcom/roblox/platform/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/roblox/platform/http/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lb/w$a;->b(Lb/t;)Lb/w$a;

    .line 140
    :cond_0
    new-instance v0, Lcom/roblox/platform/http/b/a;

    invoke-direct {v0}, Lcom/roblox/platform/http/b/a;-><init>()V

    invoke-virtual {v1, v0}, Lb/w$a;->b(Lb/t;)Lb/w$a;

    .line 141
    new-instance v0, Lcom/roblox/platform/http/b/c;

    invoke-direct {v0}, Lcom/roblox/platform/http/b/c;-><init>()V

    invoke-virtual {v1, v0}, Lb/w$a;->b(Lb/t;)Lb/w$a;

    .line 142
    int-to-long v2, p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lb/w$a;->a(JLjava/util/concurrent/TimeUnit;)Lb/w$a;

    .line 143
    int-to-long v2, p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lb/w$a;->b(JLjava/util/concurrent/TimeUnit;)Lb/w$a;

    .line 144
    if-eqz p0, :cond_1

    :goto_0
    invoke-virtual {v1, p0}, Lb/w$a;->a(Lb/m;)Lb/w$a;

    .line 145
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lb/w$a;->a(Z)Lb/w$a;

    .line 146
    invoke-virtual {v1}, Lb/w$a;->a()Lb/w;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    new-instance p0, Lcom/roblox/platform/http/b;

    sget-object v0, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {p0, v0}, Lcom/roblox/platform/http/b;-><init>(Ljava/net/CookiePolicy;)V

    goto :goto_0
.end method

.method public static a()Lcom/roblox/platform/e;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/roblox/platform/g;->e:Lcom/roblox/platform/e;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/roblox/platform/g;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/roblox/platform/g;->e:Lcom/roblox/platform/e;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/roblox/platform/g;->d:Lcom/roblox/platform/f;

    invoke-interface {v0}, Lcom/roblox/platform/f;->a()Lcom/roblox/platform/e;

    move-result-object v0

    sput-object v0, Lcom/roblox/platform/g;->e:Lcom/roblox/platform/e;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/roblox/platform/g;->e:Lcom/roblox/platform/e;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    new-instance v0, Lcom/roblox/platform/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/roblox/platform/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/roblox/platform/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/roblox/platform/b;)V
    .locals 0

    .prologue
    .line 108
    sput-object p0, Lcom/roblox/platform/g;->f:Lcom/roblox/platform/b;

    .line 109
    return-void
.end method

.method public static a(Lcom/roblox/platform/c;)V
    .locals 0

    .prologue
    .line 83
    sput-object p0, Lcom/roblox/platform/g;->b:Lcom/roblox/platform/c;

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    sput-object p0, Lcom/roblox/platform/g;->a:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/roblox/platform/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Lcom/roblox/platform/c;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/roblox/platform/g;->b:Lcom/roblox/platform/c;

    return-object v0
.end method

.method public static d()Lcom/roblox/platform/b;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/roblox/platform/g;->f:Lcom/roblox/platform/b;

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/roblox/platform/g;->g:Lcom/roblox/platform/b;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/roblox/platform/g$1;

    invoke-direct {v0}, Lcom/roblox/platform/g$1;-><init>()V

    sput-object v0, Lcom/roblox/platform/g;->g:Lcom/roblox/platform/b;

    .line 101
    :cond_0
    sget-object v0, Lcom/roblox/platform/g;->g:Lcom/roblox/platform/b;

    .line 103
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/roblox/platform/g;->f:Lcom/roblox/platform/b;

    goto :goto_0
.end method

.method public static e()Lb/w;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/roblox/platform/g;->c:Lb/w;

    if-nez v0, :cond_1

    .line 113
    const-class v1, Lcom/roblox/platform/g;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Lcom/roblox/platform/g;->c:Lb/w;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/roblox/platform/g;->a(Lb/m;)Lb/w;

    move-result-object v0

    sput-object v0, Lcom/roblox/platform/g;->c:Lb/w;

    .line 117
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    sget-object v0, Lcom/roblox/platform/g;->c:Lb/w;

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
