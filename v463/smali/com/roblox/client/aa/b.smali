.class public Lcom/roblox/client/aa/b;
.super Lcom/roblox/client/aa/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/roblox/client/aa/a;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/aa/c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/roblox/client/aa/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/roblox/client/b;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/roblox/client/analytics/h;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/aa/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 23
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/aa/c;->a()V

    :goto_0
    return-void
.end method
