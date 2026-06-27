.class public Ldebug;
.super Ljava/lang/Object;

.method public static show(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxApplication;->b()Landroid/content/Context;
    move-result-object v0

    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/app/b;

    return-void
.end method