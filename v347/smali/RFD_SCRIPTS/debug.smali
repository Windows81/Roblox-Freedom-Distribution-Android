.class public Ldebug;
.super Ljava/lang/Object;

.method public static show(Ljava/lang/Object;)V
    .locals 4

    # Convert param to string
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0

    # Check if we're on the UI thread
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v3
    if-ne v2, v3, :cond_1d

    # Already on UI thread, call directly
    invoke-static {v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;)Landroid/support/v7/app/b;

    return-void

    :cond_1d
    # Not on UI thread, post to handler
    new-instance v2, Ldebug$1;
    invoke-direct {v2, v0}, Ldebug$1;-><init>(Ljava/lang/String;)V
    new-instance v3, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method