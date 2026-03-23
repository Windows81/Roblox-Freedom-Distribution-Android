.class public Lcom/roblox/client/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/util/a$a;


# static fields
.field private static a:Lcom/roblox/client/util/b;

.field private static c:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/util/b;->b:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/roblox/client/util/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lcom/roblox/client/util/b;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/roblox/client/util/b;->a:Lcom/roblox/client/util/b;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/roblox/client/util/b;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/roblox/client/util/b;->a:Lcom/roblox/client/util/b;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/roblox/client/util/b;

    invoke-direct {v0}, Lcom/roblox/client/util/b;-><init>()V

    sput-object v0, Lcom/roblox/client/util/b;->a:Lcom/roblox/client/util/b;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/roblox/client/util/b;->a:Lcom/roblox/client/util/b;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/roblox/client/util/b;->b:Z

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/util/b;->b:Z

    .line 37
    new-instance v0, Lcom/roblox/client/util/a;

    invoke-direct {v0, p1, p0}, Lcom/roblox/client/util/a;-><init>(Landroid/content/Context;Lcom/roblox/client/util/a$a;)V

    .line 38
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/util/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    sput-object p1, Lcom/roblox/client/util/b;->c:Ljava/lang/String;

    .line 45
    return-void
.end method
