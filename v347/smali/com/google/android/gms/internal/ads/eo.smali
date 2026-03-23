.class public final Lcom/google/android/gms/internal/ads/eo;
.super Lcom/google/android/gms/internal/ads/dr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/ads/eo;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/en;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/eo;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/en;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dr;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eo;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eo;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eo;->d:Lcom/google/android/gms/internal/ads/en;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/en;)Lcom/google/android/gms/internal/ads/eo;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/ads/eo;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/eo;->b:Lcom/google/android/gms/internal/ads/eo;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aro;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/eo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/eo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/en;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/eo;->b:Lcom/google/android/gms/internal/ads/eo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->e()Lcom/google/android/gms/internal/ads/jm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/jm;->c(Landroid/content/Context;)Z

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ja;->a(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/eo;->b:Lcom/google/android/gms/internal/ads/eo;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static final synthetic a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/fa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/fa;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/en;Lcom/google/android/gms/internal/ads/zzaef;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 22

    const-string v4, "Starting ad request from service using: google.afma.request.getAdDictionary"

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/gms/internal/ads/asb;

    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->N:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "load_ad"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaef;->d:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzjn;->a:Ljava/lang/String;

    invoke-direct {v11, v4, v5, v6}, Lcom/google/android/gms/internal/ads/asb;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->a:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->A:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->A:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/asb;->a(J)Lcom/google/android/gms/internal/ads/arz;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "cts"

    aput-object v7, v5, v6

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/asb;->a(Lcom/google/android/gms/internal/ads/arz;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/asb;->a()Lcom/google/android/gms/internal/ads/arz;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->i:Lcom/google/android/gms/internal/ads/x;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/x;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v5

    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->cA:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v5, v6, v7, v4, v0}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/nd;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->h:Lcom/google/android/gms/internal/ads/fl;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/fl;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v5

    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->bv:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v5, v8, v9, v4, v0}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/nd;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->c:Lcom/google/android/gms/internal/ads/id;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->g:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/id;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->c:Lcom/google/android/gms/internal/ads/id;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->g:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/id;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->j:Lcom/google/android/gms/internal/ads/ih;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->h:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaef;->g:Landroid/content/pm/PackageInfo;

    invoke-interface {v4, v5, v7}, Lcom/google/android/gms/internal/ads/ih;->a(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->p()Lcom/google/android/gms/internal/ads/fe;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/fe;->a(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v16

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nc;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->c:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzjj;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    const-string v7, "_ad"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaef;->G:Z

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->f:Lcom/google/android/gms/internal/ads/bba;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->f:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/bba;->a(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v4

    move-object v5, v4

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->cr:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/nd;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v17

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nc;

    move-result-object v5

    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->aJ:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->j:Lcom/google/android/gms/internal/ads/ih;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/ih;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v5

    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->aK:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, p3

    invoke-static {v5, v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/nd;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v4

    move-object v7, v4

    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->a:I

    const/4 v13, 0x4

    if-lt v5, v13, :cond_10

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->o:Landroid/os/Bundle;

    if-eqz v5, :cond_10

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->o:Landroid/os/Bundle;

    move-object v13, v4

    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->ad:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->e()Lcom/google/android/gms/internal/ads/jm;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/jm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "Device is offline."

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->a:I

    const/4 v5, 0x7

    if-lt v4, v5, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->v:Ljava/lang/String;

    move-object v14, v4

    :goto_3
    new-instance v4, Lcom/google/android/gms/internal/ads/eu;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14, v5}, Lcom/google/android/gms/internal/ads/eu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->c:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzjj;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->c:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzjj;->c:Landroid/os/Bundle;

    const-string v5, "_ad"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/et;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v4

    :goto_4
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    goto :goto_3

    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->d:Lcom/google/android/gms/internal/ads/arc;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->w:Ljava/util/List;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/arc;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    const/4 v5, 0x0

    sget-object v4, Lcom/google/android/gms/internal/ads/aro;->cA:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-static {v6, v5, v0, v1, v4}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/fm;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/ads/a/a$a;

    const/4 v8, 0x0

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v12, v9}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/fc;

    if-nez v12, :cond_6

    const-string v4, "Error fetching device info. This is not recoverable."

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    goto :goto_4

    :cond_6
    new-instance v16, Lcom/google/android/gms/internal/ads/em;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/em;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/em;->j:Lcom/google/android/gms/internal/ads/zzaef;

    move-object/from16 v0, v16

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/em;->k:Lcom/google/android/gms/internal/ads/fc;

    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/em;->e:Lcom/google/android/gms/internal/ads/fm;

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/em;->d:Landroid/location/Location;

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/em;->b:Landroid/os/Bundle;

    move-object/from16 v0, v16

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/em;->h:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/em;->i:Lcom/google/android/gms/ads/a/a$a;

    if-nez v18, :cond_7

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/em;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/em;->c:Ljava/util/List;

    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/em;->a:Landroid/os/Bundle;

    move-object/from16 v0, v16

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/em;->f:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/em;->g:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/en;->b:Lcom/google/android/gms/internal/ads/amd;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/amd;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/em;->l:Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/en;->k:Z

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/em;->m:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/et;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/em;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_8

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaef;->a:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_9

    :try_start_0
    const-string v5, "request_id"

    invoke-virtual {v4, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_5
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "arc"

    aput-object v7, v5, v6

    invoke-virtual {v11, v15, v5}, Lcom/google/android/gms/internal/ads/asb;->a(Lcom/google/android/gms/internal/ads/arz;[Ljava/lang/String;)Z

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/asb;->a()Lcom/google/android/gms/internal/ads/arz;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/en;->l:Lcom/google/android/gms/internal/ads/es;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/es;->a()Lcom/google/android/gms/internal/ads/bal;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/bal;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/ep;->a:Lcom/google/android/gms/internal/ads/mn;

    move-object/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/nd;Lcom/google/android/gms/internal/ads/mn;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v4

    const-wide/16 v6, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    invoke-static {v4, v6, v7, v5, v0}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/nd;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/en;->e:Lcom/google/android/gms/internal/ads/fj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/fj;->a()Lcom/google/android/gms/internal/ads/nd;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v6, "AdRequestServiceImpl.loadAd.flags"

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/mq;->a(Lcom/google/android/gms/internal/ads/nd;Ljava/lang/String;)V

    :cond_a
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/ms;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/fa;

    if-nez v10, :cond_b

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/fa;->a()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_c

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/fa;->a()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/asb;->d()Lcom/google/android/gms/internal/ads/arz;

    const/4 v4, 0x0

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/fa;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/fa;->i()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/et;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v4

    :cond_d
    if-nez v4, :cond_e

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/fa;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->k:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzang;->a:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/fa;->e()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object/from16 v12, p1

    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/eo;->a(Lcom/google/android/gms/internal/ads/zzaef;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;Lcom/google/android/gms/internal/ads/asb;Lcom/google/android/gms/internal/ads/en;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v4

    :cond_e
    if-nez v4, :cond_f

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    :cond_f
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tts"

    aput-object v7, v5, v6

    invoke-virtual {v11, v15, v5}, Lcom/google/android/gms/internal/ads/asb;->a(Lcom/google/android/gms/internal/ads/arz;[Ljava/lang/String;)Z

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/asb;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/zzaej;->w:Ljava/lang/String;

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto/16 :goto_5

    :cond_10
    move-object v13, v4

    goto/16 :goto_2

    :cond_11
    move-object v7, v5

    goto/16 :goto_1
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzaef;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;Lcom/google/android/gms/internal/ads/asb;Lcom/google/android/gms/internal/ads/en;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 14

    if-eqz p7, :cond_7

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/asb;->a()Lcom/google/android/gms/internal/ads/arz;

    move-result-object v2

    move-object v4, v2

    :goto_0
    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/ads/ey;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/fa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, p0, v2}, Lcom/google/android/gms/internal/ads/ey;-><init>(Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)V

    const-string v3, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->l()Lcom/google/android/gms/common/util/d;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v10

    move v7, v2

    move-object v8, v3

    :goto_2
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/en;->g:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fk;->a()V

    :cond_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->e()Lcom/google/android/gms/internal/ads/jm;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, p1, v0, v5, v2}, Lcom/google/android/gms/internal/ads/jm;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/fa;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "x-afma-drt-cookie"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "x-afma-drt-v2-cookie"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaef;->H:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Sending webview cookie in ad request header."

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;)V

    const-string v5, "Cookie"

    invoke-virtual {v2, v5, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/fa;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/fa;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5, v3}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v5}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    :cond_4
    new-instance v12, Lcom/google/android/gms/internal/ads/mc;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaef;->v:Ljava/lang/String;

    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/ads/mc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/ads/mc;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/ads/mc;->a(Ljava/net/HttpURLConnection;I)V

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_a

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_a

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    const/4 v6, 0x0

    :try_start_5
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->e()Lcom/google/android/gms/internal/ads/jm;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/jm;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v6

    :try_start_7
    invoke-static {v5}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/mc;->a(Ljava/lang/String;)V

    invoke-static {v7, v13, v6, v3}, Lcom/google/android/gms/internal/ads/eo;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v9, v7, v13, v6}, Lcom/google/android/gms/internal/ads/ey;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p7, :cond_5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ufe"

    aput-object v6, v3, v5

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/ads/asb;->a(Lcom/google/android/gms/internal/ads/arz;[Ljava/lang/String;)Z

    :cond_5
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/fa;->j()Z

    move-result v3

    invoke-virtual {v9, v10, v11, v3}, Lcom/google/android/gms/internal/ads/ey;->a(JZ)Lcom/google/android/gms/internal/ads/zzaej;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_6

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/en;->g:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fk;->b()V

    :cond_6
    move-object v2, v3

    :goto_3
    return-object v2

    :cond_7
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v6

    :goto_5
    :try_start_9
    invoke-static {v4}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_9

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/en;->g:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fk;->b()V

    :cond_9
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v3

    move-object v4, v6

    :goto_6
    :try_start_b
    invoke-static {v4}, Lcom/google/android/gms/common/util/l;->a(Ljava/io/Closeable;)V

    throw v3

    :cond_a
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v13, v6, v3}, Lcom/google/android/gms/internal/ads/eo;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v5, 0x12c

    if-lt v3, v5, :cond_e

    const/16 v5, 0x190

    if-ge v3, v5, :cond_e

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v3, "No location header to follow redirect."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_b

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/en;->g:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fk;->b()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :cond_b
    move-object v2, v3

    goto :goto_3

    :cond_c
    :try_start_d
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v7, 0x1

    sget-object v3, Lcom/google/android/gms/internal/ads/aro;->df:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v5, v3, :cond_10

    const-string v3, "Too many redirects."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_d

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/en;->g:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fk;->b()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :cond_d
    move-object v2, v3

    goto/16 :goto_3

    :cond_e
    const/16 v4, 0x2e

    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_f

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/en;->g:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fk;->b()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :cond_f
    move-object v2, v3

    goto/16 :goto_3

    :cond_10
    :try_start_11
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/ey;->a(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p8, :cond_11

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/en;->g:Lcom/google/android/gms/internal/ads/fk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/fk;->b()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    move v7, v5

    move-object v8, v6

    goto/16 :goto_2

    :cond_11
    move v7, v5

    move-object v8, v6

    goto/16 :goto_2

    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_3
    move-exception v3

    move-object v4, v5

    goto/16 :goto_6

    :catchall_4
    move-exception v3

    move-object v4, v5

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "    "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_2

    :cond_3
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "  Response Code:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaef;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eo;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eo;->d:Lcom/google/android/gms/internal/ads/en;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eo;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/eo;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/en;Lcom/google/android/gms/internal/ads/zzaef;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/dt;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->i()Lcom/google/android/gms/internal/ads/in;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eo;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaef;->k:Lcom/google/android/gms/internal/ads/zzang;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/in;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/eq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/eq;-><init>(Lcom/google/android/gms/internal/ads/eo;Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/dt;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jk;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->t()Lcom/google/android/gms/internal/ads/lk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lk;->a()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->t()Lcom/google/android/gms/internal/ads/lk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lk;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/er;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/er;-><init>(Lcom/google/android/gms/internal/ads/eo;Ljava/util/concurrent/Future;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaey;Lcom/google/android/gms/internal/ads/dw;)V
    .locals 1

    const-string v0, "Nonagon code path entered in octagon"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzaey;Lcom/google/android/gms/internal/ads/dw;)V
    .locals 1

    const-string v0, "Nonagon code path entered in octagon"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
