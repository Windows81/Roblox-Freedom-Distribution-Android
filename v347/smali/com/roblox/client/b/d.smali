.class public Lcom/roblox/client/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/b/d$a;
    }
.end annotation


# static fields
.field private static f:Lcom/roblox/client/b/d;


# instance fields
.field private a:Lcom/roblox/client/b/d$a;

.field private b:J

.field private c:J

.field private final d:Lcom/roblox/client/util/p$a;

.field private final e:Lcom/roblox/client/i/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/f;Lcom/roblox/client/util/p$a;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/roblox/client/b/d$a;->a:Lcom/roblox/client/b/d$a;

    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 48
    iput-wide v2, p0, Lcom/roblox/client/b/d;->b:J

    .line 49
    iput-wide v2, p0, Lcom/roblox/client/b/d;->c:J

    .line 72
    const-string v0, "LaunchTimeReporter"

    const-string v1, "[Constructor]: ENTER."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/roblox/client/b/d;->e:Lcom/roblox/client/i/f;

    .line 74
    iput-object p2, p0, Lcom/roblox/client/b/d;->d:Lcom/roblox/client/util/p$a;

    .line 75
    return-void
.end method

.method public static a()Lcom/roblox/client/b/d;
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lcom/roblox/client/b/d;->f:Lcom/roblox/client/b/d;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/roblox/client/b/d;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/roblox/client/b/d;->f:Lcom/roblox/client/b/d;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/roblox/client/b/d;

    .line 62
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/util/p$b;

    invoke-direct {v3}, Lcom/roblox/client/util/p$b;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/b/d;-><init>(Lcom/roblox/client/i/f;Lcom/roblox/client/util/p$a;)V

    sput-object v0, Lcom/roblox/client/b/d;->f:Lcom/roblox/client/b/d;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/roblox/client/b/d;->f:Lcom/roblox/client/b/d;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->c:Lcom/roblox/client/b/d$a;

    if-ne v0, v1, :cond_0

    .line 93
    if-eqz p1, :cond_1

    sget-object v0, Lcom/roblox/client/b/d$a;->d:Lcom/roblox/client/b/d$a;

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 96
    iget-object v0, p0, Lcom/roblox/client/b/d;->d:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/b/d;->c:J

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-wide v0, p0, Lcom/roblox/client/b/d;->c:J

    iget-wide v2, p0, Lcom/roblox/client/b/d;->b:J

    sub-long/2addr v0, v2

    .line 100
    const-string v2, "Startup"

    const-string v3, "Launch"

    invoke-static {v2, v3, v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    iget-object v2, p0, Lcom/roblox/client/b/d;->e:Lcom/roblox/client/i/f;

    const-string v3, "Android-AppStartup-Launch-Time"

    invoke-virtual {v2, v3, v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;J)V

    .line 105
    :cond_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/roblox/client/b/d$a;->e:Lcom/roblox/client/b/d$a;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->a:Lcom/roblox/client/b/d$a;

    if-ne v0, v1, :cond_0

    .line 86
    sget-object v0, Lcom/roblox/client/b/d$a;->c:Lcom/roblox/client/b/d$a;

    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 87
    iget-object v0, p0, Lcom/roblox/client/b/d;->d:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/b/d;->b:J

    .line 89
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->d:Lcom/roblox/client/b/d$a;

    if-ne v0, v1, :cond_0

    .line 109
    if-eqz p1, :cond_1

    sget-object v0, Lcom/roblox/client/b/d$a;->f:Lcom/roblox/client/b/d$a;

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/roblox/client/b/d;->d:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/b/d;->c:J

    sub-long/2addr v0, v2

    .line 115
    const-string v2, "Startup"

    const-string v3, "AutoLogin"

    invoke-static {v2, v3, v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    iget-object v2, p0, Lcom/roblox/client/b/d;->e:Lcom/roblox/client/i/f;

    const-string v3, "Android-AppStartup-Auto-Login-Time"

    invoke-virtual {v2, v3, v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;J)V

    .line 120
    :cond_0
    return-void

    .line 109
    :cond_1
    sget-object v0, Lcom/roblox/client/b/d$a;->g:Lcom/roblox/client/b/d$a;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->f:Lcom/roblox/client/b/d$a;

    if-ne v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/roblox/client/b/d$a;->h:Lcom/roblox/client/b/d$a;

    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 126
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->i:Lcom/roblox/client/b/d$a;

    if-ne v0, v1, :cond_0

    .line 148
    sget-object v0, Lcom/roblox/client/b/d$a;->j:Lcom/roblox/client/b/d$a;

    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 150
    iget-object v0, p0, Lcom/roblox/client/b/d;->d:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/b/d;->b:J

    sub-long v2, v0, v2

    .line 151
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 152
    const-string v0, "Startup time from Launch to Home is negative"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v0, "Startup"

    const-string v1, "Home"

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 156
    iget-object v0, p0, Lcom/roblox/client/b/d;->e:Lcom/roblox/client/i/f;

    const-string v1, "Android-AppStartup-Launch-To-Home-Time"

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;J)V

    .line 158
    invoke-static {}, Lcom/roblox/client/b;->cb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    if-eqz p1, :cond_2

    const-string v0, "Android-AppStartup-Launch-To-Home-Time-Lua"

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/b/d;->e:Lcom/roblox/client/i/f;

    invoke-virtual {v1, v0, v2, v3}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "Android-AppStartup-Launch-To-Home-Time-Web"

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->i:Lcom/roblox/client/b/d$a;

    if-eq v0, v1, :cond_0

    .line 130
    sget-object v0, Lcom/roblox/client/b/d$a;->b:Lcom/roblox/client/b/d$a;

    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 132
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->i:Lcom/roblox/client/b/d$a;

    if-ne v0, v1, :cond_0

    .line 136
    sget-object v0, Lcom/roblox/client/b/d$a;->b:Lcom/roblox/client/b/d$a;

    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 138
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->h:Lcom/roblox/client/b/d$a;

    if-ne v0, v1, :cond_0

    .line 142
    sget-object v0, Lcom/roblox/client/b/d$a;->i:Lcom/roblox/client/b/d$a;

    iput-object v0, p0, Lcom/roblox/client/b/d;->a:Lcom/roblox/client/b/d$a;

    .line 144
    :cond_0
    return-void
.end method
