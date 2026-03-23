.class public Lcom/roblox/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/greenrobot/eventbus/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lorg/greenrobot/eventbus/c;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/roblox/a/a/b;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/c;->b()Lorg/greenrobot/eventbus/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/d;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    sput-object v0, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
