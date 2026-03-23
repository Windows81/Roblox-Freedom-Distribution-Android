.class public Lcom/roblox/client/o/b;
.super Lcom/roblox/client/o/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/roblox/client/o/a;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/o/c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/roblox/client/o/a;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/roblox/client/b;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/roblox/client/b/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/o/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/o/c;->a()V

    goto :goto_0
.end method
