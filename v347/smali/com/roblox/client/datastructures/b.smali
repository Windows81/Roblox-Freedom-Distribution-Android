.class public abstract Lcom/roblox/client/datastructures/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/datastructures/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/roblox/client/datastructures/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/roblox/client/datastructures/b$a;

.field private c:Landroid/os/Handler;

.field private d:Lcom/roblox/client/datastructures/a;

.field private e:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/roblox/client/datastructures/b$a;->a:Lcom/roblox/client/datastructures/b$a;

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->b:Lcom/roblox/client/datastructures/b$a;

    .line 65
    new-instance v0, Lcom/roblox/client/datastructures/b$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/datastructures/b$1;-><init>(Lcom/roblox/client/datastructures/b;)V

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->d:Lcom/roblox/client/datastructures/a;

    .line 73
    new-instance v0, Lcom/roblox/client/datastructures/b$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/datastructures/b$2;-><init>(Lcom/roblox/client/datastructures/b;)V

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->e:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->a:Ljava/util/Queue;

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 30
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->c:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/datastructures/b;Lcom/roblox/client/datastructures/b$a;)Lcom/roblox/client/datastructures/b$a;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/roblox/client/datastructures/b;->b:Lcom/roblox/client/datastructures/b$a;

    return-object p1
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/datastructures/b;->b:Lcom/roblox/client/datastructures/b$a;

    sget-object v1, Lcom/roblox/client/datastructures/b$a;->a:Lcom/roblox/client/datastructures/b$a;

    if-ne v0, v1, :cond_0

    .line 44
    sget-object v0, Lcom/roblox/client/datastructures/b$a;->b:Lcom/roblox/client/datastructures/b$a;

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->b:Lcom/roblox/client/datastructures/b$a;

    .line 45
    iget-object v0, p0, Lcom/roblox/client/datastructures/b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/c;

    .line 46
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/roblox/client/datastructures/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/roblox/client/datastructures/b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/c;

    .line 48
    if-eqz v0, :cond_1

    .line 49
    iget-object v1, p0, Lcom/roblox/client/datastructures/b;->d:Lcom/roblox/client/datastructures/a;

    invoke-interface {v0, v1}, Lcom/roblox/client/datastructures/c;->a(Lcom/roblox/client/datastructures/a;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v0, Lcom/roblox/client/datastructures/b$a;->a:Lcom/roblox/client/datastructures/b$a;

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->b:Lcom/roblox/client/datastructures/b$a;

    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/roblox/client/datastructures/b$a;->a:Lcom/roblox/client/datastructures/b$a;

    iput-object v0, p0, Lcom/roblox/client/datastructures/b;->b:Lcom/roblox/client/datastructures/b$a;

    .line 56
    iget-object v0, p0, Lcom/roblox/client/datastructures/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/datastructures/b;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget-object v0, p0, Lcom/roblox/client/datastructures/b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/roblox/client/datastructures/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/datastructures/b;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/datastructures/c;)V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/datastructures/b;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/datastructures/b;->a()V

    .line 40
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v0, "RbxBlockingQueue"

    const-string v1, "Queue full! Cannot add more reports."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
