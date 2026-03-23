.class public Lcom/roblox/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/greenrobot/eventbus/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/greenrobot/eventbus/c;
    .locals 2

    .line 19
    sget-object v0, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/roblox/a/a/b;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    if-nez v1, :cond_0

    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/c;->b()Lorg/greenrobot/eventbus/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/eventbus/d;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    sput-object v1, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/a/a/b;->a:Lorg/greenrobot/eventbus/c;

    return-object v0
.end method
