.class public Lcom/google/android/gms/internal/measurement/ae;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/measurement/ae;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/common/util/d;

.field private final e:Lcom/google/android/gms/internal/measurement/be;

.field private final f:Lcom/google/android/gms/internal/measurement/bw;

.field private final g:Lcom/google/android/gms/analytics/s;

.field private final h:Lcom/google/android/gms/internal/measurement/v;

.field private final i:Lcom/google/android/gms/internal/measurement/bj;

.field private final j:Lcom/google/android/gms/internal/measurement/co;

.field private final k:Lcom/google/android/gms/internal/measurement/ca;

.field private final l:Lcom/google/android/gms/analytics/d;

.field private final m:Lcom/google/android/gms/internal/measurement/aw;

.field private final n:Lcom/google/android/gms/internal/measurement/u;

.field private final o:Lcom/google/android/gms/internal/measurement/ap;

.field private final p:Lcom/google/android/gms/internal/measurement/bi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/ag;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ag;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ae;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ae;->d:Lcom/google/android/gms/common/util/d;

    new-instance v1, Lcom/google/android/gms/internal/measurement/be;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/be;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ae;->e:Lcom/google/android/gms/internal/measurement/be;

    new-instance v1, Lcom/google/android/gms/internal/measurement/bw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/bw;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ae;->f:Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ae;->e()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/ad;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/ca;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/ca;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ae;->k:Lcom/google/android/gms/internal/measurement/ca;

    new-instance v1, Lcom/google/android/gms/internal/measurement/co;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/co;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ae;->j:Lcom/google/android/gms/internal/measurement/co;

    new-instance v1, Lcom/google/android/gms/internal/measurement/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/v;-><init>(Lcom/google/android/gms/internal/measurement/ae;Lcom/google/android/gms/internal/measurement/ag;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/aw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/aw;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/u;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/u;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    new-instance v3, Lcom/google/android/gms/internal/measurement/ap;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/measurement/ap;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    new-instance v4, Lcom/google/android/gms/internal/measurement/bi;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/measurement/bi;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/measurement/af;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/measurement/af;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->g:Lcom/google/android/gms/analytics/s;

    new-instance v0, Lcom/google/android/gms/analytics/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/d;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ae;->m:Lcom/google/android/gms/internal/measurement/aw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/ae;->n:Lcom/google/android/gms/internal/measurement/u;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/ae;->o:Lcom/google/android/gms/internal/measurement/ap;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/ae;->p:Lcom/google/android/gms/internal/measurement/bi;

    new-instance p1, Lcom/google/android/gms/internal/measurement/bj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/bj;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ae;->i:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ae;->h:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->a()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->l:Lcom/google/android/gms/analytics/d;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/v;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/ae;
    .locals 6

    invoke-static {p0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ae;->a:Lcom/google/android/gms/internal/measurement/ae;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/ae;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ae;->a:Lcom/google/android/gms/internal/measurement/ae;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/measurement/ag;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/measurement/ag;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/measurement/ae;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/ae;-><init>(Lcom/google/android/gms/internal/measurement/ag;)V

    sput-object p0, Lcom/google/android/gms/internal/measurement/ae;->a:Lcom/google/android/gms/internal/measurement/ae;

    invoke-static {}, Lcom/google/android/gms/analytics/d;->c()V

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-object v1, Lcom/google/android/gms/internal/measurement/bm;->E:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/bn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ae;->e()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object p0

    const-string v3, "Slow initialization (ms)"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ab;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/ae;->a:Lcom/google/android/gms/internal/measurement/ae;

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/ac;)V
    .locals 1

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->x()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/aa;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/common/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->d:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/be;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->e:Lcom/google/android/gms/internal/measurement/be;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/bw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->f:Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->f:Lcom/google/android/gms/internal/measurement/bw;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/measurement/bw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->f:Lcom/google/android/gms/internal/measurement/bw;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/analytics/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->g:Lcom/google/android/gms/analytics/s;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->g:Lcom/google/android/gms/analytics/s;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/measurement/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->h:Lcom/google/android/gms/internal/measurement/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->h:Lcom/google/android/gms/internal/measurement/v;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/measurement/bj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->i:Lcom/google/android/gms/internal/measurement/bj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->i:Lcom/google/android/gms/internal/measurement/bj;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/analytics/d;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->l:Lcom/google/android/gms/analytics/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->l:Lcom/google/android/gms/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->b()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aa;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->l:Lcom/google/android/gms/analytics/d;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/measurement/co;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->j:Lcom/google/android/gms/internal/measurement/co;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->j:Lcom/google/android/gms/internal/measurement/co;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/measurement/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->k:Lcom/google/android/gms/internal/measurement/ca;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->k:Lcom/google/android/gms/internal/measurement/ca;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/measurement/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->k:Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->k:Lcom/google/android/gms/internal/measurement/ca;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/measurement/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->n:Lcom/google/android/gms/internal/measurement/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->n:Lcom/google/android/gms/internal/measurement/u;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/aw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->m:Lcom/google/android/gms/internal/measurement/aw;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->m:Lcom/google/android/gms/internal/measurement/aw;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/measurement/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->o:Lcom/google/android/gms/internal/measurement/ap;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ae;->a(Lcom/google/android/gms/internal/measurement/ac;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->o:Lcom/google/android/gms/internal/measurement/ap;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/measurement/bi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ae;->p:Lcom/google/android/gms/internal/measurement/bi;

    return-object v0
.end method
