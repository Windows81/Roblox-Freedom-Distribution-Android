.class public Lcom/roblox/client/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/e/a/b;


# instance fields
.field private b:Landroidx/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/d<",
            "Lcom/roblox/client/e/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/e/a/b;->d:Ljava/lang/Object;

    .line 29
    new-instance v0, Landroidx/c/d;

    invoke-direct {v0}, Landroidx/c/d;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/e/a/b;->b:Landroidx/c/d;

    return-void
.end method

.method public static a()Lcom/roblox/client/e/a/b;
    .locals 2

    .line 13
    sget-object v0, Lcom/roblox/client/e/a/b;->a:Lcom/roblox/client/e/a/b;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/roblox/client/e/a/b;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/roblox/client/e/a/b;->a:Lcom/roblox/client/e/a/b;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/roblox/client/e/a/b;

    invoke-direct {v1}, Lcom/roblox/client/e/a/b;-><init>()V

    sput-object v1, Lcom/roblox/client/e/a/b;->a:Lcom/roblox/client/e/a/b;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/e/a/b;->a:Lcom/roblox/client/e/a/b;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/roblox/client/e/a/a;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/roblox/client/e/a/b;->b:Landroidx/c/d;

    invoke-virtual {v0, p1, p2}, Landroidx/c/d;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/e/a/a;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/roblox/client/e/a/b;->c:I

    return-void
.end method

.method public a(Lcom/roblox/client/e/a/a;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/roblox/client/e/a/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/e/a/b;->b:Landroidx/c/d;

    invoke-virtual {p1}, Lcom/roblox/client/e/a/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/c/d;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/e/a/a;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1, p1}, Lcom/roblox/client/e/a/a;->a(Lcom/roblox/client/e/a/a;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/e/a/b;->b:Landroidx/c/d;

    invoke-virtual {p1}, Lcom/roblox/client/e/a/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroidx/c/d;->b(JLjava/lang/Object;)V

    .line 44
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/roblox/client/e/a/b;->c:I

    return v0
.end method

.method public c()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/roblox/client/e/a/b;->b:Landroidx/c/d;

    invoke-virtual {v0}, Landroidx/c/d;->c()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/roblox/client/e/a/b;->c:I

    return-void
.end method
