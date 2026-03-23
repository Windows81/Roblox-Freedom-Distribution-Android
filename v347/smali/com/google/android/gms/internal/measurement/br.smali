.class public final Lcom/google/android/gms/internal/measurement/br;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/internal/measurement/bv;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/Boolean;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/br;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r;->h()Lcom/google/android/gms/internal/measurement/i;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/bu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/bu;-><init>(Lcom/google/android/gms/internal/measurement/br;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/i;->a(Lcom/google/android/gms/internal/measurement/ax;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/br;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/br;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ca;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/br;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x2

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/bq;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/bq;->b:Lcom/google/android/gms/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/c/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/c/b;->a()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r;->e()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    if-nez p1, :cond_2

    const-string v1, "AnalyticsService started with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v4

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local AnalyticsService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/bs;

    invoke-direct {v1, p0, p3, v0}, Lcom/google/android/gms/internal/measurement/bs;-><init>(Lcom/google/android/gms/internal/measurement/br;ILcom/google/android/gms/internal/measurement/bj;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/br;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r;->e()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    const-string v1, "Local AnalyticsService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic a(ILcom/google/android/gms/internal/measurement/bj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/measurement/bv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/measurement/bj;Landroid/app/job/JobParameters;)V
    .locals 2

    const-string v0, "AnalyticsJobService processed last dispatch request"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/measurement/bv;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/measurement/bv;->a(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final a(Landroid/app/job/JobParameters;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r;->e()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Local AnalyticsJobService called. action"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/bt;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/measurement/bt;-><init>(Lcom/google/android/gms/internal/measurement/br;Lcom/google/android/gms/internal/measurement/bj;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/br;->a(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r;->e()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    const-string v1, "Local AnalyticsService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    return-void
.end method
