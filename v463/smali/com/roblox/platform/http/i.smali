.class public Lcom/roblox/platform/http/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/roblox/platform/http/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/roblox/platform/http/i;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/roblox/platform/http/a;
    .locals 2

    .line 15
    sget-object v0, Lcom/roblox/platform/http/i;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/roblox/platform/http/i;->b:Lcom/roblox/platform/http/a;

    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Lcom/roblox/platform/http/i;->b:Lcom/roblox/platform/http/a;

    monitor-exit v0

    return-object v1

    .line 20
    :cond_0
    new-instance v1, Lcom/roblox/platform/http/b;

    invoke-direct {v1}, Lcom/roblox/platform/http/b;-><init>()V

    sput-object v1, Lcom/roblox/platform/http/i;->b:Lcom/roblox/platform/http/a;

    .line 22
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Lcom/roblox/platform/http/a;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/roblox/platform/http/i;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    sput-object p0, Lcom/roblox/platform/http/i;->b:Lcom/roblox/platform/http/a;

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
