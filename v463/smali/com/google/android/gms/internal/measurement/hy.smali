.class public final Lcom/google/android/gms/internal/measurement/hy;
.super Lcom/google/android/gms/internal/measurement/fy;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J

.field private final c:Lcom/google/android/gms/internal/measurement/df;

.field private final d:Lcom/google/android/gms/internal/measurement/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fc;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/fy;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/hz;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->q:Lcom/google/android/gms/internal/measurement/fc;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/hz;-><init>(Lcom/google/android/gms/internal/measurement/hy;Lcom/google/android/gms/internal/measurement/fz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/hy;->c:Lcom/google/android/gms/internal/measurement/df;

    new-instance p1, Lcom/google/android/gms/internal/measurement/ia;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->q:Lcom/google/android/gms/internal/measurement/fc;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/ia;-><init>(Lcom/google/android/gms/internal/measurement/hy;Lcom/google/android/gms/internal/measurement/fz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/hy;->d:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/hy;->b:J

    return-void
.end method

.method private final a(J)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hy;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->c:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->d:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/hy;->b:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->l:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->n:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ei;->m:Lcom/google/android/gms/internal/measurement/ek;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/ek;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ei;->o:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ei;->m:Lcom/google/android/gms/internal/measurement/ek;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ek;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/hy;->c:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ei;->k:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ei;->o:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/df;->a(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/hy;->d:Lcom/google/android/gms/internal/measurement/df;

    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/hy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hy;->x()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/hy;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/hy;->a(J)V

    return-void
.end method

.method private final b(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hy;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->c:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->d:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/hy;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->o:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ei;->o:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/hy;->b:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/hy;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/hy;->b(J)V

    return-void
.end method

.method private final w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->a:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final x()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/hy;->a(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->d()Lcom/google/android/gms/internal/measurement/cp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->a()V

    return-void
.end method

.method public final a(Z)Z
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fy;->F()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ei;->n:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/hy;->b:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ei;->o:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->i()Lcom/google/android/gms/internal/measurement/gw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gw;->v()Lcom/google/android/gms/internal/measurement/gv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/internal/measurement/gw;->a(Lcom/google/android/gms/internal/measurement/gv;Landroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->e()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v2

    const-string v4, "auto"

    const-string v5, "_e"

    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/internal/measurement/gb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/hy;->b:J

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/hy;->d:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/df;->c()V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/hy;->d:Lcom/google/android/gms/internal/measurement/df;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ei;->o:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/df;->a(J)V

    return v3
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/internal/measurement/cp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->d()Lcom/google/android/gms/internal/measurement/cp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/internal/measurement/gb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->e()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/measurement/ds;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->f()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/measurement/dh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->g()Lcom/google/android/gms/internal/measurement/dh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/internal/measurement/gz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->h()Lcom/google/android/gms/internal/measurement/gz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/internal/measurement/gw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->i()Lcom/google/android/gms/internal/measurement/gw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/common/util/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->k()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/internal/measurement/dt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->l()Lcom/google/android/gms/internal/measurement/dt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/internal/measurement/dv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->m()Lcom/google/android/gms/internal/measurement/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/internal/measurement/iq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->n()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/internal/measurement/hy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->o()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->p()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/measurement/dx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/internal/measurement/ei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/internal/measurement/cy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/fy;->s()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v0

    return-object v0
.end method

.method protected final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final v()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->c:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hy;->d:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->c()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/hy;->b:J

    return-void
.end method
