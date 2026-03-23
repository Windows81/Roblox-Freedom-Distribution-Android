.class public Lcom/roblox/client/friends/nearby/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/nearby/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/nearby/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/client/friends/nearby/b$a;-><init>(Lcom/roblox/client/friends/nearby/b$1;)V

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/friends/nearby/b;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b;->a:Ljava/util/concurrent/Executor;

    .line 19
    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method
