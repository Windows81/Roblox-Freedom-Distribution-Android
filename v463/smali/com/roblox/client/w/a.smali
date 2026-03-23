.class public Lcom/roblox/client/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/roblox/client/b;->bg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/roblox/engine/jni/reporter/SessionReporter;->initialize()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/roblox/client/b;->bg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/roblox/engine/jni/reporter/SessionReporter;->setState(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
