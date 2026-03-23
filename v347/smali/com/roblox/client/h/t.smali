.class public abstract Lcom/roblox/client/h/t;
.super Lcom/b/a/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/t$a;
    }
.end annotation


# static fields
.field private static e:Landroid/os/Handler;


# instance fields
.field private final d:Ljava/lang/String;

.field private f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/roblox/client/h/t;->n()Lcom/b/a/a/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/h/t;-><init>(Lcom/b/a/a/o;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/b/a/a/o;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/b/a/a/i;-><init>(Lcom/b/a/a/o;)V

    .line 17
    const-string v0, "RobloxJob"

    iput-object v0, p0, Lcom/roblox/client/h/t;->d:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/h/t;->f:Ljava/lang/Throwable;

    .line 56
    return-void
.end method

.method protected static m()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/roblox/client/h/t;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/roblox/client/h/t;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/roblox/client/h/t;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/roblox/client/h/t;->e:Landroid/os/Handler;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/roblox/client/h/t;->e:Landroid/os/Handler;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static n()Lcom/b/a/a/o;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/b/a/a/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/b/a/a/o;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;II)Lcom/b/a/a/q;
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/roblox/client/h/t;->f:Ljava/lang/Throwable;

    .line 73
    sget-object v0, Lcom/b/a/a/q;->b:Lcom/b/a/a/q;

    return-object v0
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/roblox/client/h/t$a;

    iget-object v1, p0, Lcom/roblox/client/h/t;->f:Ljava/lang/Throwable;

    invoke-direct {v0, p0, p1, v1}, Lcom/roblox/client/h/t$a;-><init>(Lcom/roblox/client/h/t;ILjava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/h/t;->a(Lcom/roblox/client/h/t$a;)V

    .line 66
    return-void
.end method

.method protected abstract a(Lcom/roblox/client/h/t$a;)V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/h/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
