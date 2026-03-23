.class public Lcom/roblox/client/routing/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/routing/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/roblox/client/routing/a;


# instance fields
.field private c:Lorg/greenrobot/eventbus/c;

.field private d:Lcom/roblox/client/routing/b;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/roblox/client/routing/a;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/greenrobot/eventbus/c;Lcom/roblox/client/routing/b;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/roblox/client/routing/a;->f:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/roblox/client/routing/a;->c:Lorg/greenrobot/eventbus/c;

    .line 59
    iput-object p2, p0, Lcom/roblox/client/routing/a;->d:Lcom/roblox/client/routing/b;

    .line 60
    iput-object p3, p0, Lcom/roblox/client/routing/a;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Lcom/roblox/client/routing/a;
    .locals 5

    .line 43
    sget-object v0, Lcom/roblox/client/routing/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/roblox/client/routing/a;->b:Lcom/roblox/client/routing/a;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/roblox/client/routing/a;

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/routing/b;

    invoke-direct {v3}, Lcom/roblox/client/routing/b;-><init>()V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/client/routing/a;-><init>(Lorg/greenrobot/eventbus/c;Lcom/roblox/client/routing/b;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/roblox/client/routing/a;->b:Lcom/roblox/client/routing/a;

    .line 52
    :cond_0
    sget-object v1, Lcom/roblox/client/routing/a;->b:Lcom/roblox/client/routing/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 75
    new-instance v0, Lcom/roblox/client/routing/a$a;

    iget-object v1, p0, Lcom/roblox/client/routing/a;->c:Lorg/greenrobot/eventbus/c;

    iget-object v2, p0, Lcom/roblox/client/routing/a;->d:Lcom/roblox/client/routing/b;

    iget-object v3, p0, Lcom/roblox/client/routing/a;->e:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/routing/a$a;-><init>(Lorg/greenrobot/eventbus/c;Lcom/roblox/client/routing/b;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/roblox/client/routing/a;->e:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/routing/a$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/roblox/client/routing/a;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/roblox/client/routing/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/roblox/client/routing/a;->f:Ljava/lang/String;

    const-string v1, ""

    .line 90
    iput-object v1, p0, Lcom/roblox/client/routing/a;->f:Ljava/lang/String;

    return-object v0
.end method
