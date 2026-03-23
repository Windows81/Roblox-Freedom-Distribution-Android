.class public Lcom/roblox/client/http/t;
.super Lcom/roblox/client/http/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/m;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 18
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/roblox/client/b;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/roblox/client/b/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/http/t;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/http/r;->c()V

    goto :goto_0
.end method
