.class public Lcom/google/android/gms/internal/measurement/r;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/measurement/r;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/common/util/d;

.field private final e:Lcom/google/android/gms/internal/measurement/ar;

.field private final f:Lcom/google/android/gms/internal/measurement/bj;

.field private final g:Lcom/google/android/gms/analytics/s;

.field private final h:Lcom/google/android/gms/internal/measurement/i;

.field private final i:Lcom/google/android/gms/internal/measurement/aw;

.field private final j:Lcom/google/android/gms/internal/measurement/cb;

.field private final k:Lcom/google/android/gms/internal/measurement/bn;

.field private final l:Lcom/google/android/gms/analytics/d;

.field private final m:Lcom/google/android/gms/internal/measurement/aj;

.field private final n:Lcom/google/android/gms/internal/measurement/h;

.field private final o:Lcom/google/android/gms/internal/measurement/ac;

.field private final p:Lcom/google/android/gms/internal/measurement/av;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/t;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/t;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/t;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->c:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/g;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->d:Lcom/google/android/gms/common/util/d;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ar;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/ar;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->e:Lcom/google/android/gms/internal/measurement/ar;

    new-instance v1, Lcom/google/android/gms/internal/measurement/bj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/bj;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->f:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r;->e()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/o;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/bn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/bn;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->k:Lcom/google/android/gms/internal/measurement/bn;

    new-instance v1, Lcom/google/android/gms/internal/measurement/cb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/cb;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->j:Lcom/google/android/gms/internal/measurement/cb;

    new-instance v1, Lcom/google/android/gms/internal/measurement/i;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Lcom/google/android/gms/internal/measurement/r;Lcom/google/android/gms/internal/measurement/t;)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/aj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/aj;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    new-instance v3, Lcom/google/android/gms/internal/measurement/h;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    new-instance v4, Lcom/google/android/gms/internal/measurement/ac;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    new-instance v5, Lcom/google/android/gms/internal/measurement/av;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/measurement/av;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/measurement/s;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/measurement/s;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->g:Lcom/google/android/gms/analytics/s;

    new-instance v0, Lcom/google/android/gms/analytics/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/d;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/r;->m:Lcom/google/android/gms/internal/measurement/aj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/r;->n:Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v4, p0, Lcom/google/android/gms/internal/measurement/r;->o:Lcom/google/android/gms/internal/measurement/ac;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/r;->p:Lcom/google/android/gms/internal/measurement/av;

    new-instance v2, Lcom/google/android/gms/internal/measurement/aw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/aw;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/r;->i:Lcom/google/android/gms/internal/measurement/aw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->h:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->a()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->l:Lcom/google/android/gms/analytics/d;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/r;->a:Lcom/google/android/gms/internal/measurement/r;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/measurement/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/r;->a:Lcom/google/android/gms/internal/measurement/r;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/g;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/measurement/t;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/measurement/t;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/measurement/r;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/measurement/r;-><init>(Lcom/google/android/gms/internal/measurement/t;)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/r;->a:Lcom/google/android/gms/internal/measurement/r;

    invoke-static {}, Lcom/google/android/gms/analytics/d;->c()V

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/az;->E:Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/r;->e()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/o;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/r;->a:Lcom/google/android/gms/internal/measurement/r;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/p;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->x()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/w;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/common/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->d:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/ar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->e:Lcom/google/android/gms/internal/measurement/ar;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/bj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->f:Lcom/google/android/gms/internal/measurement/bj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->f:Lcom/google/android/gms/internal/measurement/bj;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/measurement/bj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->f:Lcom/google/android/gms/internal/measurement/bj;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/analytics/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->g:Lcom/google/android/gms/analytics/s;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->g:Lcom/google/android/gms/analytics/s;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/measurement/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->h:Lcom/google/android/gms/internal/measurement/i;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->h:Lcom/google/android/gms/internal/measurement/i;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/measurement/aw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->i:Lcom/google/android/gms/internal/measurement/aw;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->i:Lcom/google/android/gms/internal/measurement/aw;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/analytics/d;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->l:Lcom/google/android/gms/analytics/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->l:Lcom/google/android/gms/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->b()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/w;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->l:Lcom/google/android/gms/analytics/d;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/measurement/cb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->j:Lcom/google/android/gms/internal/measurement/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->j:Lcom/google/android/gms/internal/measurement/cb;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/measurement/bn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->k:Lcom/google/android/gms/internal/measurement/bn;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->k:Lcom/google/android/gms/internal/measurement/bn;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/measurement/bn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->k:Lcom/google/android/gms/internal/measurement/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->k:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p;->x()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->k:Lcom/google/android/gms/internal/measurement/bn;

    goto :goto_0
.end method

.method public final n()Lcom/google/android/gms/internal/measurement/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->n:Lcom/google/android/gms/internal/measurement/h;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->n:Lcom/google/android/gms/internal/measurement/h;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->m:Lcom/google/android/gms/internal/measurement/aj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->m:Lcom/google/android/gms/internal/measurement/aj;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/measurement/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->o:Lcom/google/android/gms/internal/measurement/ac;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/r;->a(Lcom/google/android/gms/internal/measurement/p;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->o:Lcom/google/android/gms/internal/measurement/ac;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/measurement/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r;->p:Lcom/google/android/gms/internal/measurement/av;

    return-object v0
.end method
