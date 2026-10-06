.class public Lactivitylogger;
.super Ljava/lang/Object;

.implements Landroid/app/Application$ActivityLifecycleCallbacks;

# direct methods
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# lifecycle methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 5
    const v0, 0x1
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v1
    add-int/lit8 v0, v0, -0x1
    aput-object v1, v2, v0

    const-string v0, "Activity Started: %s"
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1

    invoke-static {v1}, Ldebuggy;->print(Ljava/lang/Object;)V
    # invoke-static {}, Ldebuggy;->printStackTrace()V
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    return-void
.end method