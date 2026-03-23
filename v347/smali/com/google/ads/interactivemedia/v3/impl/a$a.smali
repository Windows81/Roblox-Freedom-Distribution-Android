.class public Lcom/google/ads/interactivemedia/v3/impl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/a;


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/a;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/app/Activity;)Landroid/app/Activity;

    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->d(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Application;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->e(Lcom/google/ads/interactivemedia/v3/impl/a;)Lcom/google/ads/interactivemedia/v3/impl/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a;Landroid/app/Activity;)Landroid/app/Activity;

    .line 76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, "inactive"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->c(Lcom/google/ads/interactivemedia/v3/impl/a;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/w$c;->appStateChanged:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    .line 79
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/impl/a;->b(Lcom/google/ads/interactivemedia/v3/impl/a;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 81
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Lcom/google/ads/interactivemedia/v3/impl/a;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, "active"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/a;->c(Lcom/google/ads/interactivemedia/v3/impl/a;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/w$c;->appStateChanged:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/a$a;->a:Lcom/google/ads/interactivemedia/v3/impl/a;

    .line 68
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/impl/a;->b(Lcom/google/ads/interactivemedia/v3/impl/a;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
