.class public Lcom/roblox/client/signup/multiscreen/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/client/signup/multiscreen/f$a;-><init>(Lcom/roblox/client/signup/multiscreen/f$1;)V

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/f;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/f;->a:Ljava/util/concurrent/Executor;

    .line 17
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/f;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/f;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
