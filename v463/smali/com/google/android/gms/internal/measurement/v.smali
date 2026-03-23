.class public final Lcom/google/android/gms/internal/measurement/v;
.super Lcom/google/android/gms/internal/measurement/ac;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/aq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ae;Lcom/google/android/gms/internal/measurement/ag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/aq;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/aq;-><init>(Lcom/google/android/gms/internal/measurement/ae;Lcom/google/android/gms/internal/measurement/ag;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/v;)Lcom/google/android/gms/internal/measurement/aq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/ah;)J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/aq;->a(Lcom/google/android/gms/internal/measurement/ah;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/aq;->a(Lcom/google/android/gms/internal/measurement/ah;)V

    :cond_0
    return-wide v0
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/bk;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/z;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/v;Lcom/google/android/gms/internal/measurement/bk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/br;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/y;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/y;-><init>(Lcom/google/android/gms/internal/measurement/v;Lcom/google/android/gms/internal/measurement/br;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/v;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aq;->b()V

    return-void
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ce;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/bk;)V

    return-void
.end method

.method public final d()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/aa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/aa;-><init>(Lcom/google/android/gms/internal/measurement/v;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    const-string v1, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_2
    move-exception v0

    const-string v1, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    return-void
.end method

.method final f()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aq;->e()V

    return-void
.end method

.method final g()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/aq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aq;->d()V

    return-void
.end method
