.class Lcom/roblox/client/game/b$f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/b$f;-><init>(Ljava/lang/String;Lcom/roblox/client/game/b$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/b$f;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/b$f;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/roblox/client/game/b$f$2;->a:Lcom/roblox/client/game/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 445
    new-instance v0, Lcom/roblox/client/game/b$e;

    new-instance v1, Lcom/roblox/client/game/b$f$2$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/game/b$f$2$1;-><init>(Lcom/roblox/client/game/b$f$2;)V

    invoke-direct {v0, v1}, Lcom/roblox/client/game/b$e;-><init>(Lcom/roblox/client/game/b$g;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 450
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/game/b$e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
