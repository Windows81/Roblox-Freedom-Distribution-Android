.class public Lcom/roblox/client/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/s/a$b;,
        Lcom/roblox/client/s/a$c;,
        Lcom/roblox/client/s/a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field private static k:Lcom/roblox/client/s/a;


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Lcom/roblox/client/s/a$c;

.field private final f:Landroid/content/Context;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/roblox/client/s/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/roblox/client/ae/v$a;

.field private i:Lcom/roblox/client/s/a$a;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/s/a;->a:Ljava/lang/String;

    .line 24
    const-class v0, Lcom/roblox/client/startup/ActivitySplash;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/s/a;->b:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/roblox/client/landing/ActivityStartMVP;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/s/a;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/roblox/client/ae/v$a;)V
    .locals 9

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ActivityTracker"

    .line 21
    iput-object v0, p0, Lcom/roblox/client/s/a;->d:Ljava/lang/String;

    .line 31
    new-instance v8, Lcom/roblox/client/s/a$c;

    const-wide/32 v2, 0xea60

    const/16 v4, 0x3e8

    const-wide/32 v5, 0x1d4c0

    const/16 v7, 0x3e8

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/s/a$c;-><init>(JIJI)V

    iput-object v8, p0, Lcom/roblox/client/s/a;->e:Lcom/roblox/client/s/a$c;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/roblox/client/s/a;->g:Ljava/util/Map;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Constructor]: limit-params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/roblox/client/s/a;->e:Lcom/roblox/client/s/a$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/roblox/client/s/a;->f:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/roblox/client/s/a;->h:Lcom/roblox/client/ae/v$a;

    return-void
.end method

.method private a(Ljava/lang/String;J)Lcom/roblox/client/s/a$b;
    .locals 8

    .line 155
    sget-object v0, Lcom/roblox/client/s/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/roblox/client/s/a$b;

    iget-object v1, p0, Lcom/roblox/client/s/a;->e:Lcom/roblox/client/s/a$c;

    iget-wide v5, v1, Lcom/roblox/client/s/a$c;->c:J

    iget-object v1, p0, Lcom/roblox/client/s/a;->e:Lcom/roblox/client/s/a$c;

    iget v7, v1, Lcom/roblox/client/s/a$c;->d:I

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/s/a$b;-><init>(Ljava/lang/String;JJI)V

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Lcom/roblox/client/s/a$b;

    iget-object v1, p0, Lcom/roblox/client/s/a;->e:Lcom/roblox/client/s/a$c;

    iget-wide v5, v1, Lcom/roblox/client/s/a$c;->a:J

    iget-object v1, p0, Lcom/roblox/client/s/a;->e:Lcom/roblox/client/s/a$c;

    iget v7, v1, Lcom/roblox/client/s/a$c;->b:I

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/s/a$b;-><init>(Ljava/lang/String;JJI)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/s/a;
    .locals 3

    .line 55
    sget-object v0, Lcom/roblox/client/s/a;->k:Lcom/roblox/client/s/a;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/roblox/client/s/a;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/roblox/client/s/a;->k:Lcom/roblox/client/s/a;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/roblox/client/s/a;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lcom/roblox/client/ae/v$b;

    invoke-direct {v2}, Lcom/roblox/client/ae/v$b;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/s/a;-><init>(Landroid/content/Context;Lcom/roblox/client/ae/v$a;)V

    sput-object v1, Lcom/roblox/client/s/a;->k:Lcom/roblox/client/s/a;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lcom/roblox/client/s/a;->k:Lcom/roblox/client/s/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 87
    invoke-static {}, Lcom/roblox/client/b;->T()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/roblox/client/s/a$c;->a(Ljava/lang/String;)Lcom/roblox/client/s/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppSettingsFetched: Got new params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTracker"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object v0, p0, Lcom/roblox/client/s/a;->e:Lcom/roblox/client/s/a$c;

    .line 95
    iget-object v0, p0, Lcom/roblox/client/s/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method a(Lcom/roblox/client/s/a$a;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/roblox/client/s/a;->i:Lcom/roblox/client/s/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTracker"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/roblox/client/s/a;->h:Lcom/roblox/client/ae/v$a;

    invoke-interface {v0}, Lcom/roblox/client/ae/v$a;->a()J

    move-result-wide v0

    .line 108
    iget-object v2, p0, Lcom/roblox/client/s/a;->g:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/s/a$b;

    if-nez v2, :cond_0

    .line 110
    invoke-direct {p0, p1, v0, v1}, Lcom/roblox/client/s/a;->a(Ljava/lang/String;J)Lcom/roblox/client/s/a$b;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/roblox/client/s/a;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 117
    :cond_0
    invoke-virtual {v2}, Lcom/roblox/client/s/a$b;->c()J

    move-result-wide v3

    sub-long v3, v0, v3

    .line 118
    invoke-virtual {v2}, Lcom/roblox/client/s/a$b;->d()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const/4 p1, 0x1

    .line 119
    invoke-virtual {v2, p1, v0, v1}, Lcom/roblox/client/s/a$b;->a(IJ)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v2}, Lcom/roblox/client/s/a$b;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/roblox/client/s/a$b;->e()I

    move-result v4

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v2, v3, v0, v1}, Lcom/roblox/client/s/a$b;->a(IJ)V

    .line 125
    iget-object v0, p0, Lcom/roblox/client/s/a;->i:Lcom/roblox/client/s/a$a;

    if-eqz v0, :cond_3

    .line 126
    iget-object v1, p0, Lcom/roblox/client/s/a;->f:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/s/a$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v2}, Lcom/roblox/client/s/a$b;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTracker"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, p0, Lcom/roblox/client/s/a;->h:Lcom/roblox/client/ae/v$a;

    invoke-interface {p1}, Lcom/roblox/client/ae/v$a;->a()J

    move-result-wide v0

    .line 143
    iget-wide v2, p0, Lcom/roblox/client/s/a;->j:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-eqz p1, :cond_0

    const-wide/32 v2, 0x36ee80

    cmp-long p1, v4, v2

    if-ltz p1, :cond_1

    .line 146
    :cond_0
    iput-wide v0, p0, Lcom/roblox/client/s/a;->j:J

    .line 147
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/f;->e()V

    :cond_1
    return-void
.end method
