.class public abstract Lcom/roblox/client/r/f;
.super Lcom/birbit/android/jobqueue/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/r/f$a;
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

    .line 50
    invoke-static {}, Lcom/roblox/client/r/f;->n()Lcom/birbit/android/jobqueue/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/r/f;-><init>(Lcom/birbit/android/jobqueue/l;)V

    return-void
.end method

.method protected constructor <init>(Lcom/birbit/android/jobqueue/l;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/g;-><init>(Lcom/birbit/android/jobqueue/l;)V

    const-string p1, "RobloxJob"

    .line 17
    iput-object p1, p0, Lcom/roblox/client/r/f;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/roblox/client/r/f;->f:Ljava/lang/Throwable;

    return-void
.end method

.method protected static m()Landroid/os/Handler;
    .locals 3

    .line 22
    sget-object v0, Lcom/roblox/client/r/f;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/roblox/client/r/f;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/roblox/client/r/f;->e:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/roblox/client/r/f;->e:Landroid/os/Handler;

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
    sget-object v0, Lcom/roblox/client/r/f;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static n()Lcom/birbit/android/jobqueue/l;
    .locals 2

    .line 44
    new-instance v0, Lcom/birbit/android/jobqueue/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/birbit/android/jobqueue/l;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;II)Lcom/birbit/android/jobqueue/m;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/roblox/client/r/f;->f:Ljava/lang/Throwable;

    .line 73
    sget-object p1, Lcom/birbit/android/jobqueue/m;->b:Lcom/birbit/android/jobqueue/m;

    return-object p1
.end method

.method protected a(I)V
    .locals 2

    .line 65
    new-instance v0, Lcom/roblox/client/r/f$a;

    iget-object v1, p0, Lcom/roblox/client/r/f;->f:Ljava/lang/Throwable;

    invoke-direct {v0, p0, p1, v1}, Lcom/roblox/client/r/f$a;-><init>(Lcom/roblox/client/r/f;ILjava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/r/f;->a(Lcom/roblox/client/r/f$a;)V

    return-void
.end method

.method protected abstract a(Lcom/roblox/client/r/f$a;)V
.end method

.method public f()V
    .locals 0

    return-void
.end method
