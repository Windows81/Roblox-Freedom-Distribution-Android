.class public final Lcom/google/android/gms/internal/measurement/ai;
.super Lcom/google/android/gms/internal/measurement/ac;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/ak;

.field private b:Lcom/google/android/gms/internal/measurement/bs;

.field private final c:Lcom/google/android/gms/internal/measurement/bg;

.field private final d:Lcom/google/android/gms/internal/measurement/cj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/cj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ae;->c()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/cj;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->d:Lcom/google/android/gms/internal/measurement/cj;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ak;-><init>(Lcom/google/android/gms/internal/measurement/ai;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->a:Lcom/google/android/gms/internal/measurement/ak;

    new-instance v0, Lcom/google/android/gms/internal/measurement/aj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/aj;-><init>(Lcom/google/android/gms/internal/measurement/ai;Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->c:Lcom/google/android/gms/internal/measurement/bg;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ai;)Lcom/google/android/gms/internal/measurement/ak;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/ai;->a:Lcom/google/android/gms/internal/measurement/ak;

    return-object p0
.end method

.method private final a(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->o()Lcom/google/android/gms/internal/measurement/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/v;->e()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ai;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ai;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ai;Lcom/google/android/gms/internal/measurement/bs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ai;->a(Lcom/google/android/gms/internal/measurement/bs;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/bs;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ai;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->o()Lcom/google/android/gms/internal/measurement/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/v;->f()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ai;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ai;->f()V

    return-void
.end method

.method private final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->d:Lcom/google/android/gms/internal/measurement/cj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cj;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->c:Lcom/google/android/gms/internal/measurement/bg;

    sget-object v1, Lcom/google/android/gms/internal/measurement/bm;->A:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/bn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bg;->a(J)V

    return-void
.end method

.method private final f()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ai;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ai;->d()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/br;)Z
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->i()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->d()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/bs;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ai;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    return v6
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->a:Lcom/google/android/gms/internal/measurement/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ak;->a()Lcom/google/android/gms/internal/measurement/bs;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ai;->e()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ai;->a:Lcom/google/android/gms/internal/measurement/ak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ai;->b:Lcom/google/android/gms/internal/measurement/bs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->o()Lcom/google/android/gms/internal/measurement/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->e()V

    :cond_0
    return-void
.end method
