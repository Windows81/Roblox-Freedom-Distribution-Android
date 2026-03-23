.class public final Lcom/google/android/gms/internal/measurement/v;
.super Lcom/google/android/gms/internal/measurement/p;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/x;

.field private b:Lcom/google/android/gms/internal/measurement/bf;

.field private final c:Lcom/google/android/gms/internal/measurement/at;

.field private final d:Lcom/google/android/gms/internal/measurement/bw;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/r;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r;->c()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/bw;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->d:Lcom/google/android/gms/internal/measurement/bw;

    new-instance v0, Lcom/google/android/gms/internal/measurement/x;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/x;-><init>(Lcom/google/android/gms/internal/measurement/v;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/x;

    new-instance v0, Lcom/google/android/gms/internal/measurement/w;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/w;-><init>(Lcom/google/android/gms/internal/measurement/v;Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->c:Lcom/google/android/gms/internal/measurement/at;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/v;)Lcom/google/android/gms/internal/measurement/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/x;

    return-object v0
.end method

.method private final a(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->o()Lcom/google/android/gms/internal/measurement/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i;->e()V

    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/bf;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/v;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->o()Lcom/google/android/gms/internal/measurement/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i;->f()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/v;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/v;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/v;Lcom/google/android/gms/internal/measurement/bf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/bf;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/v;->f()V

    return-void
.end method

.method private final e()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->d:Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bw;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->c:Lcom/google/android/gms/internal/measurement/at;

    sget-object v0, Lcom/google/android/gms/internal/measurement/az;->A:Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/at;->a(J)V

    return-void
.end method

.method private final f()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/v;->d()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/be;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->h()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/bf;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/v;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->i()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/x;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/x;->a()Lcom/google/android/gms/internal/measurement/bf;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/v;->e()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/android/gms/internal/measurement/x;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/android/gms/internal/measurement/bf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->o()Lcom/google/android/gms/internal/measurement/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i;->e()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
