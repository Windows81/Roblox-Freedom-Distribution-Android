.class public Lcom/roblox/client/http/s;
.super Lcom/roblox/client/http/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/roblox/client/http/n;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/http/n;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/roblox/client/b;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/roblox/client/b/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/http/s;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/http/n;->a()V

    goto :goto_0
.end method
