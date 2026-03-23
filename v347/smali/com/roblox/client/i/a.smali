.class public Lcom/roblox/client/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/i/a$b;,
        Lcom/roblox/client/i/a$c;,
        Lcom/roblox/client/i/a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field private static l:Lcom/roblox/client/i/a;


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Lcom/roblox/client/i/a$c;

.field private final g:Landroid/content/Context;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/roblox/client/i/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/roblox/client/util/p$a;

.field private j:Lcom/roblox/client/i/a$a;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/i/a;->a:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/roblox/client/chat/ConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/i/a;->b:Ljava/lang/String;

    .line 26
    const-class v0, Lcom/roblox/client/startup/ActivitySplash;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/i/a;->c:Ljava/lang/String;

    .line 27
    const-class v0, Lcom/roblox/client/landing/ActivityStartMVP;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/i/a;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/roblox/client/util/p$a;)V
    .locals 7

    .prologue
    const/16 v3, 0x3e8

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/i/a;->e:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/roblox/client/i/a$c;

    const-wide/32 v1, 0xea60

    const-wide/32 v4, 0x1d4c0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/i/a$c;-><init>(JIJI)V

    iput-object v0, p0, Lcom/roblox/client/i/a;->f:Lcom/roblox/client/i/a$c;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/i/a;->h:Ljava/util/Map;

    .line 70
    iget-object v0, p0, Lcom/roblox/client/i/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Constructor]: limit-params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/i/a;->f:Lcom/roblox/client/i/a$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/roblox/client/i/a;->g:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/roblox/client/i/a;->i:Lcom/roblox/client/util/p$a;

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;J)Lcom/roblox/client/i/a$b;
    .locals 8

    .prologue
    .line 157
    sget-object v0, Lcom/roblox/client/i/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/roblox/client/i/a$b;

    iget-object v1, p0, Lcom/roblox/client/i/a;->f:Lcom/roblox/client/i/a$c;

    iget-wide v4, v1, Lcom/roblox/client/i/a$c;->c:J

    iget-object v1, p0, Lcom/roblox/client/i/a;->f:Lcom/roblox/client/i/a$c;

    iget v6, v1, Lcom/roblox/client/i/a$c;->d:I

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/i/a$b;-><init>(Ljava/lang/String;JJI)V

    .line 161
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/roblox/client/i/a$b;

    iget-object v1, p0, Lcom/roblox/client/i/a;->f:Lcom/roblox/client/i/a$c;

    iget-wide v4, v1, Lcom/roblox/client/i/a$c;->a:J

    iget-object v1, p0, Lcom/roblox/client/i/a;->f:Lcom/roblox/client/i/a$c;

    iget v6, v1, Lcom/roblox/client/i/a$c;->b:I

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/i/a$b;-><init>(Ljava/lang/String;JJI)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/roblox/client/i/a;
    .locals 4

    .prologue
    .line 57
    sget-object v0, Lcom/roblox/client/i/a;->l:Lcom/roblox/client/i/a;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Lcom/roblox/client/i/a;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/roblox/client/i/a;->l:Lcom/roblox/client/i/a;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/roblox/client/i/a;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/util/p$b;

    invoke-direct {v3}, Lcom/roblox/client/util/p$b;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/i/a;-><init>(Landroid/content/Context;Lcom/roblox/client/util/p$a;)V

    sput-object v0, Lcom/roblox/client/i/a;->l:Lcom/roblox/client/i/a;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/roblox/client/i/a;->l:Lcom/roblox/client/i/a;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Lcom/roblox/client/b;->au()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/roblox/client/i/a$c;->a(Ljava/lang/String;)Lcom/roblox/client/i/a$c;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/roblox/client/i/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppSettingsFetched: Got new params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object v0, p0, Lcom/roblox/client/i/a;->f:Lcom/roblox/client/i/a$c;

    .line 97
    iget-object v0, p0, Lcom/roblox/client/i/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    :cond_0
    return-void
.end method

.method a(Lcom/roblox/client/i/a$a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/roblox/client/i/a;->j:Lcom/roblox/client/i/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 105
    iget-object v0, p0, Lcom/roblox/client/i/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/roblox/client/i/a;->i:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v2

    .line 110
    iget-object v0, p0, Lcom/roblox/client/i/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/i/a$b;

    .line 111
    if-nez v0, :cond_1

    .line 112
    invoke-direct {p0, p1, v2, v3}, Lcom/roblox/client/i/a;->a(Ljava/lang/String;J)Lcom/roblox/client/i/a$b;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/roblox/client/i/a;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/i/a$b;->c()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 120
    invoke-virtual {v0}, Lcom/roblox/client/i/a$b;->d()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/i/a$b;->a(IJ)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0}, Lcom/roblox/client/i/a$b;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/roblox/client/i/a$b;->e()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/i/a$b;->a(IJ)V

    .line 127
    iget-object v0, p0, Lcom/roblox/client/i/a;->j:Lcom/roblox/client/i/a$a;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/roblox/client/i/a;->j:Lcom/roblox/client/i/a$a;

    iget-object v1, p0, Lcom/roblox/client/i/a;->g:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/roblox/client/i/a$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {v0}, Lcom/roblox/client/i/a$b;->a()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 142
    iget-object v0, p0, Lcom/roblox/client/i/a;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/roblox/client/i/a;->i:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    .line 145
    iget-wide v2, p0, Lcom/roblox/client/i/a;->k:J

    sub-long v2, v0, v2

    .line 146
    iget-wide v4, p0, Lcom/roblox/client/i/a;->k:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 148
    :cond_0
    iput-wide v0, p0, Lcom/roblox/client/i/a;->k:J

    .line 149
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/f;->c()V

    .line 151
    :cond_1
    return-void
.end method
