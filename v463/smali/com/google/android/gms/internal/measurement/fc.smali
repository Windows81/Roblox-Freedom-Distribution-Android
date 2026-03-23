.class public Lcom/google/android/gms/internal/measurement/fc;
.super Lcom/google/android/gms/internal/measurement/ii;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fz;


# static fields
.field private static volatile d:Lcom/google/android/gms/internal/measurement/fc;


# instance fields
.field private A:I

.field private B:I

.field private final C:J

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/measurement/cy;

.field private final g:Lcom/google/android/gms/internal/measurement/ei;

.field private final h:Lcom/google/android/gms/internal/measurement/dx;

.field private final i:Lcom/google/android/gms/internal/measurement/ex;

.field private final j:Lcom/google/android/gms/internal/measurement/hy;

.field private final k:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final l:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final m:Lcom/google/android/gms/internal/measurement/iq;

.field private final n:Lcom/google/android/gms/internal/measurement/dv;

.field private final o:Lcom/google/android/gms/common/util/d;

.field private final p:Lcom/google/android/gms/internal/measurement/gw;

.field private final q:Lcom/google/android/gms/internal/measurement/gb;

.field private final r:Lcom/google/android/gms/internal/measurement/cp;

.field private s:Lcom/google/android/gms/internal/measurement/dt;

.field private t:Lcom/google/android/gms/internal/measurement/gz;

.field private u:Lcom/google/android/gms/internal/measurement/dh;

.field private v:Lcom/google/android/gms/internal/measurement/ds;

.field private w:Lcom/google/android/gms/internal/measurement/eo;

.field private x:Z

.field private y:Ljava/lang/Boolean;

.field private z:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/ga;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ii;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fc;->x:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/measurement/ii;->a(Lcom/google/android/gms/internal/measurement/fc;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/ga;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/jy;->a(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/fc;->c:J

    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->o:Lcom/google/android/gms/common/util/d;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/fc;->C:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/cy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/cy;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->f:Lcom/google/android/gms/internal/measurement/cy;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ei;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ei;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->g:Lcom/google/android/gms/internal/measurement/ei;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/dx;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->h:Lcom/google/android/gms/internal/measurement/dx;

    new-instance v0, Lcom/google/android/gms/internal/measurement/iq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/iq;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->m:Lcom/google/android/gms/internal/measurement/iq;

    new-instance v0, Lcom/google/android/gms/internal/measurement/dv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/dv;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->n:Lcom/google/android/gms/internal/measurement/dv;

    new-instance v0, Lcom/google/android/gms/internal/measurement/cp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/cp;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->r:Lcom/google/android/gms/internal/measurement/cp;

    new-instance v0, Lcom/google/android/gms/internal/measurement/gw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/gw;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->p:Lcom/google/android/gms/internal/measurement/gw;

    new-instance v0, Lcom/google/android/gms/internal/measurement/gb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/gb;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->q:Lcom/google/android/gms/internal/measurement/gb;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->k:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->l:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/google/android/gms/internal/measurement/hy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/hy;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->j:Lcom/google/android/gms/internal/measurement/hy;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ex;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ex;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->i:Lcom/google/android/gms/internal/measurement/ex;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->h()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/gu;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/measurement/gu;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/gu;-><init>(Lcom/google/android/gms/internal/measurement/gb;Lcom/google/android/gms/internal/measurement/gc;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/gu;

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/gu;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/gb;->a:Lcom/google/android/gms/internal/measurement/gu;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->y()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/eb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/eb;-><init>(Lcom/google/android/gms/internal/measurement/ii;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ih;->O()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->b:Lcom/google/android/gms/internal/measurement/eb;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ew;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ew;-><init>(Lcom/google/android/gms/internal/measurement/ii;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ih;->O()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->a:Lcom/google/android/gms/internal/measurement/ew;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->i:Lcom/google/android/gms/internal/measurement/ex;

    new-instance v1, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/fd;-><init>(Lcom/google/android/gms/internal/measurement/fc;Lcom/google/android/gms/internal/measurement/ga;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final K()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fc;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/fc;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/fc;->d:Lcom/google/android/gms/internal/measurement/fc;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/fc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/fc;->d:Lcom/google/android/gms/internal/measurement/fc;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ga;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/ga;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/measurement/fc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fc;-><init>(Lcom/google/android/gms/internal/measurement/ga;)V

    sput-object p0, Lcom/google/android/gms/internal/measurement/fc;->d:Lcom/google/android/gms/internal/measurement/fc;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/fc;->d:Lcom/google/android/gms/internal/measurement/fc;

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/fx;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/google/android/gms/internal/measurement/fy;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fy;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static z()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final A()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/fc;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/fc;->B:I

    return-void
.end method

.method protected final B()Z
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fc;->K()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/fc;->z:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/fc;->z:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/fc;->z:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->m()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/iq;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->m()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/iq;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/es;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ht;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->m()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->u()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ds;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/iq;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->y:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final a()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->c:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->c:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->h:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/fc;->C:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Persisting first open"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->h:Lcom/google/android/gms/internal/measurement/el;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/fc;->C:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->B()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->x()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->m()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/iq;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->m()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/iq;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/es;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ht;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->u()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ds;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ei;->v()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->u()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ds;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ei;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->u()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ds;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->A()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ei;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->t:Lcom/google/android/gms/internal/measurement/gz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gz;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->t:Lcom/google/android/gms/internal/measurement/gz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gz;->z()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->u()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ds;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ei;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->h:Lcom/google/android/gms/internal/measurement/el;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/fc;->C:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->j:Lcom/google/android/gms/internal/measurement/en;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/en;->a(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->h()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ei;->j:Lcom/google/android/gms/internal/measurement/en;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/en;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->u()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ds;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->x()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ei;->B()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->b()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/cy;->u()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ei;->d(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->b()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->u()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ds;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/cy;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->h()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gb;->D()V

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fc;->s()Lcom/google/android/gms/internal/measurement/gz;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gz;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_c
    :goto_1
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/ii;->a()V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/fy;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/measurement/fc;->A:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/fc;->A:I

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ga;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/dh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/dh;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->u:Lcom/google/android/gms/internal/measurement/dh;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ds;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ds;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->v:Lcom/google/android/gms/internal/measurement/ds;

    new-instance v1, Lcom/google/android/gms/internal/measurement/dt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/dt;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/fc;->s:Lcom/google/android/gms/internal/measurement/dt;

    new-instance v1, Lcom/google/android/gms/internal/measurement/gz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/gz;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/fy;->G()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/fc;->t:Lcom/google/android/gms/internal/measurement/gz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fc;->m:Lcom/google/android/gms/internal/measurement/iq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/fy;->H()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fc;->g:Lcom/google/android/gms/internal/measurement/ei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/fy;->H()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/eo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/eo;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/fc;->w:Lcom/google/android/gms/internal/measurement/eo;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fc;->v:Lcom/google/android/gms/internal/measurement/ds;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/fy;->H()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/dx;->A()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v1

    const-wide/16 v2, 0x30a3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "App measurement is starting up, version"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/dx;->A()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v1

    const-string v2, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ds;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->m()Lcom/google/android/gms/internal/measurement/iq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/iq;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->A()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/dx;->A()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->B()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/fc;->A:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/fc;->B:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/fc;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/fc;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Not all components initialized"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/ii;->a(Lcom/google/android/gms/internal/measurement/in;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/fc;->x:Z

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/cy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->f:Lcom/google/android/gms/internal/measurement/cy;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/ei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->g:Lcom/google/android/gms/internal/measurement/ei;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->a(Lcom/google/android/gms/internal/measurement/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->g:Lcom/google/android/gms/internal/measurement/ei;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/dx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->h:Lcom/google/android/gms/internal/measurement/dx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->h:Lcom/google/android/gms/internal/measurement/dx;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/hy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->j:Lcom/google/android/gms/internal/measurement/hy;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->j:Lcom/google/android/gms/internal/measurement/hy;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/measurement/eo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->w:Lcom/google/android/gms/internal/measurement/eo;

    return-object v0
.end method

.method final g()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->i:Lcom/google/android/gms/internal/measurement/ex;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/measurement/gb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->q:Lcom/google/android/gms/internal/measurement/gb;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->q:Lcom/google/android/gms/internal/measurement/gb;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->k:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/common/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->o:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final l()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->l:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/measurement/iq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->m:Lcom/google/android/gms/internal/measurement/iq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->a(Lcom/google/android/gms/internal/measurement/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->m:Lcom/google/android/gms/internal/measurement/iq;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/measurement/dv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->n:Lcom/google/android/gms/internal/measurement/dv;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->a(Lcom/google/android/gms/internal/measurement/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->n:Lcom/google/android/gms/internal/measurement/dv;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/dt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->s:Lcom/google/android/gms/internal/measurement/dt;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->s:Lcom/google/android/gms/internal/measurement/dt;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->i:Lcom/google/android/gms/internal/measurement/ex;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->i:Lcom/google/android/gms/internal/measurement/ex;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/measurement/dx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->h:Lcom/google/android/gms/internal/measurement/dx;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->h:Lcom/google/android/gms/internal/measurement/dx;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/measurement/gw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->p:Lcom/google/android/gms/internal/measurement/gw;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->p:Lcom/google/android/gms/internal/measurement/gw;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/internal/measurement/gz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->t:Lcom/google/android/gms/internal/measurement/gz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->t:Lcom/google/android/gms/internal/measurement/gz;

    return-object v0
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/dh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->u:Lcom/google/android/gms/internal/measurement/dh;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->u:Lcom/google/android/gms/internal/measurement/dh;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/ds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->v:Lcom/google/android/gms/internal/measurement/ds;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->b(Lcom/google/android/gms/internal/measurement/fy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->v:Lcom/google/android/gms/internal/measurement/ds;

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/measurement/cp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->r:Lcom/google/android/gms/internal/measurement/cp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fc;->a(Lcom/google/android/gms/internal/measurement/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fc;->r:Lcom/google/android/gms/internal/measurement/cp;

    return-object v0
.end method

.method public final w()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->p()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    return-void
.end method

.method public final x()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/fc;->K()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->b()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cy;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->b()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v0

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/cy;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ei;->c(Z)Z

    move-result v0

    return v0
.end method

.method final y()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ii;->c()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->h:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/el;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/fc;->C:J

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/fc;->C:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method
