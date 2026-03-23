.class public Lcom/roblox/client/http/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/http/k;


# instance fields
.field private b:Lb/w;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/roblox/client/http/k;->c:I

    .line 18
    iput v0, p0, Lcom/roblox/client/http/k;->d:I

    return-void
.end method

.method public static a()Lcom/roblox/client/http/k;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/roblox/client/http/k;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/roblox/client/http/k;

    invoke-direct {v0}, Lcom/roblox/client/http/k;-><init>()V

    sput-object v0, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/roblox/client/http/k;->a:Lcom/roblox/client/http/k;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()Lb/w;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/roblox/client/http/k;->b:Lb/w;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    iget v1, p0, Lcom/roblox/client/http/k;->c:I

    iget v2, p0, Lcom/roblox/client/http/k;->d:I

    invoke-static {v0, v1, v2}, Lcom/roblox/platform/g;->a(Lb/m;II)Lb/w;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/http/k;->b:Lb/w;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/http/k;->b:Lb/w;

    return-object v0
.end method
