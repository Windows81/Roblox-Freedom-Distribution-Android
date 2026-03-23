.class public Lcom/roblox/client/http/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/http/k;


# instance fields
.field private b:Lc/x;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 18
    iput v0, p0, Lcom/roblox/client/http/k;->c:I

    .line 19
    iput v0, p0, Lcom/roblox/client/http/k;->d:I

    return-void
.end method

.method public static a()Lcom/roblox/client/http/k;
    .locals 2

    .line 22
    sget-object v0, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/roblox/client/http/k;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/roblox/client/http/k;

    invoke-direct {v1}, Lcom/roblox/client/http/k;-><init>()V

    sput-object v1, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    return-object v0
.end method


# virtual methods
.method public b()Lc/x;
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/roblox/client/http/k;->b:Lc/x;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/roblox/platform/http/c;

    const/4 v1, 0x0

    iget v2, p0, Lcom/roblox/client/http/k;->c:I

    iget v3, p0, Lcom/roblox/client/http/k;->d:I

    invoke-static {}, Lcom/roblox/platform/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/roblox/platform/http/c;-><init>(Lc/m;IILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/roblox/platform/http/c;->a()Lc/x;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/http/k;->b:Lc/x;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/http/k;->b:Lc/x;

    return-object v0
.end method
