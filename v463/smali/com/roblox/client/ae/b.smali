.class public Lcom/roblox/client/ae/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/ae/a$a;


# static fields
.field private static a:Lcom/roblox/client/ae/b;

.field private static c:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/roblox/client/ae/b;->b:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/roblox/client/ae/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lcom/roblox/client/ae/b;
    .locals 2

    .line 23
    sget-object v0, Lcom/roblox/client/ae/b;->a:Lcom/roblox/client/ae/b;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/roblox/client/ae/b;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/roblox/client/ae/b;->a:Lcom/roblox/client/ae/b;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/roblox/client/ae/b;

    invoke-direct {v1}, Lcom/roblox/client/ae/b;-><init>()V

    sput-object v1, Lcom/roblox/client/ae/b;->a:Lcom/roblox/client/ae/b;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/ae/b;->a:Lcom/roblox/client/ae/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/roblox/client/ae/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/roblox/client/ae/b;->b:Z

    .line 37
    new-instance v0, Lcom/roblox/client/ae/a;

    invoke-direct {v0, p1, p0}, Lcom/roblox/client/ae/a;-><init>(Landroid/content/Context;Lcom/roblox/client/ae/a$a;)V

    .line 38
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/ae/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 44
    sput-object p1, Lcom/roblox/client/ae/b;->c:Ljava/lang/String;

    return-void
.end method
