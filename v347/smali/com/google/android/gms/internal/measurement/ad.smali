.class final Lcom/google/android/gms/internal/measurement/ad;
.super Lcom/google/android/gms/internal/measurement/p;


# instance fields
.field private a:Z

.field private final b:Lcom/google/android/gms/internal/measurement/aa;

.field private final c:Lcom/google/android/gms/internal/measurement/bl;

.field private final d:Lcom/google/android/gms/internal/measurement/bk;

.field private final e:Lcom/google/android/gms/internal/measurement/v;

.field private f:J

.field private final g:Lcom/google/android/gms/internal/measurement/at;

.field private final h:Lcom/google/android/gms/internal/measurement/at;

.field private final i:Lcom/google/android/gms/internal/measurement/bw;

.field private j:J

.field private k:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/r;Lcom/google/android/gms/internal/measurement/t;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ad;->f:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/bk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/bk;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->d:Lcom/google/android/gms/internal/measurement/bk;

    new-instance v0, Lcom/google/android/gms/internal/measurement/aa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/aa;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    new-instance v0, Lcom/google/android/gms/internal/measurement/bl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/bl;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->c:Lcom/google/android/gms/internal/measurement/bl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/v;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/v;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    new-instance v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/bw;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->i:Lcom/google/android/gms/internal/measurement/bw;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ae;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/ae;-><init>(Lcom/google/android/gms/internal/measurement/ad;Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->g:Lcom/google/android/gms/internal/measurement/at;

    new-instance v0, Lcom/google/android/gms/internal/measurement/af;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/af;-><init>(Lcom/google/android/gms/internal/measurement/ad;Lcom/google/android/gms/internal/measurement/r;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->h:Lcom/google/android/gms/internal/measurement/at;

    return-void
.end method

.method private final A()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/ah;-><init>(Lcom/google/android/gms/internal/measurement/ad;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ad;->a(Lcom/google/android/gms/internal/measurement/ax;)V

    return-void
.end method

.method private final B()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->f()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->h:Lcom/google/android/gms/internal/measurement/at;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/at;->a(J)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final C()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ad;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/az;->C:Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ad;->i:Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/bw;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->i:Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bw;->a()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->i:Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bw;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->e()V

    goto :goto_0
.end method

.method private final D()Z
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ad;->c:Lcom/google/android/gms/internal/measurement/bl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bl;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->f()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->g()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x0

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->b()V

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/aa;->a(J)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "Hits loaded from store. count"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/be;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/be;->c()J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-nez v0, :cond_4

    const-string v0, "Database contains successfully uploaded hit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/o;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    const-string v1, "Failed to read hits from persisted store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto/16 :goto_2

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Service connected, sending hits to the service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/be;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/be;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/be;->c()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/be;->c()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/aa;->b(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/be;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto/16 :goto_2

    :cond_6
    move-wide v0, v4

    :try_start_c
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ad;->c:Lcom/google/android/gms/internal/measurement/bl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bl;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ad;->c:Lcom/google/android/gms/internal/measurement/bl;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/bl;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v0

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-wide v4

    goto :goto_5

    :cond_7
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/aa;->a(Ljava/util/List;)V

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-wide v0, v4

    :cond_8
    :try_start_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_10
    const-string v1, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto/16 :goto_2

    :cond_9
    :try_start_12
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    move-wide v4, v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/aa;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v0

    :catch_a
    move-exception v0

    const-string v1, "Failed to commit local dispatch transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto/16 :goto_2
.end method

.method private final E()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->g()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private final F()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->p()Lcom/google/android/gms/internal/measurement/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/aw;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/aw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->E()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/az;->h:Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->e()J

    move-result-wide v2

    const-string v0, "Dispatch alarm scheduled (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/aw;->d()V

    goto :goto_0
.end method

.method private final G()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->g:Lcom/google/android/gms/internal/measurement/at;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->g:Lcom/google/android/gms/internal/measurement/at;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/at;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->p()Lcom/google/android/gms/internal/measurement/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aw;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aw;->e()V

    :cond_1
    return-void
.end method

.method private final H()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ad;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ad;->f:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/az;->e:Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->q()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/cb;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->q()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget v0, v0, Lcom/google/android/gms/internal/measurement/cb;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private final I()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ad;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->A()V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/u;Lcom/google/android/gms/internal/measurement/ce;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/i;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->h()Lcom/google/android/gms/internal/measurement/r;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/i;->b(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/r;->h()Lcom/google/android/gms/analytics/o;

    move-result-object v5

    const-class v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/d;->b(Z)V

    invoke-virtual {v5, p2}, Lcom/google/android/gms/analytics/o;->a(Lcom/google/android/gms/analytics/q;)V

    const-class v1, Lcom/google/android/gms/internal/measurement/ch;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ch;

    const-class v2, Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->f()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/cd;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/cd;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/cd;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/cd;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/measurement/ch;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "Sending installation campaign to"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->b()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/analytics/o;->a(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/o;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->B()V

    return-void
.end method

.method private final g(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/u;Z)J
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "properties"

    const-string v6, "app_uid=? AND cid<>?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v1, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "Deleted property records"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/aa;->a(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/u;->a(J)V

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/p;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/aa;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->f()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Failed to update Analytics property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    const-wide/16 v0, -0x1

    :goto_2
    return-wide v0

    :cond_1
    :try_start_3
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    move-object v1, v0

    :goto_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "app_uid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "cid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "adid"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "hits_count"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "params"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "properties"

    const/4 v1, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    const-string v0, "Failed to insert/update a property (got -1)"

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/o;->f(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->c()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    move-wide v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "Error storing a property"

    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/aa;->d()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_7
    throw v0

    :catch_2
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v1, "Failed to end transaction"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string v2, "Failed to end transaction"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->c:Lcom/google/android/gms/internal/measurement/bl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p;->z()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p;->z()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ax;)V
    .locals 8

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/ad;->j:J

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bn;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    const-string v4, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->C()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->D()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/ax;->a(Ljava/lang/Throwable;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ad;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->d:Lcom/google/android/gms/internal/measurement/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bk;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/bn;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/ax;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/be;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ad;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->c(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->C()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/be;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->g()Lcom/google/android/gms/internal/measurement/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bp;->a()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->b()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "_m"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/be;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->f()Z

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->c()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->a()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/be;->e()Ljava/util/List;

    move-result-object v9

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/be;-><init>(Lcom/google/android/gms/internal/measurement/o;Ljava/util/Map;JZJILjava/util/List;)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/aa;->a(Lcom/google/android/gms/internal/measurement/be;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->k()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    const-string v1, "deliver: failed to insert hit to database"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/be;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected final a(Lcom/google/android/gms/internal/measurement/u;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    const-string v0, "Sending first hit to property"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->c()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/bw;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->k()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ca;->a(Lcom/google/android/gms/internal/measurement/bj;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ce;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/ad;->a(Lcom/google/android/gms/internal/measurement/u;Lcom/google/android/gms/internal/measurement/ce;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->k()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ca;->a(Lcom/google/android/gms/internal/measurement/bj;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ce;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/o;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Ignoring duplicate install campaign"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/o;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bn;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->c()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/bw;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Campaign received too late, ignoring"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/o;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v0, "Received installation campaign"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/aa;->c(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ad;->a(Lcom/google/android/gms/internal/measurement/u;Lcom/google/android/gms/internal/measurement/ce;)V

    goto :goto_1
.end method

.method final b()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ad;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/w;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/ad;->a:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ag;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/ag;-><init>(Lcom/google/android/gms/internal/measurement/ad;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->h()Lcom/google/android/gms/internal/measurement/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bq;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->b()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ad;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->I()V

    :cond_2
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ad;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->I()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/br;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ad;->k:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->e()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->C()V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    return-void

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/br;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/o;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final d()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ad;->j:J

    return-void
.end method

.method protected final e()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->b(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/aa;->a(J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/be;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/aa;->b(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/be;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ad;->e:Lcom/google/android/gms/internal/measurement/v;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/v;->a(Lcom/google/android/gms/internal/measurement/be;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/o;->c(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ad;->j:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->C()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->D()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/bn;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/ad;->j:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->d:Lcom/google/android/gms/internal/measurement/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bk;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/o;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ad;->g()V

    goto :goto_0
.end method

.method public final g()V
    .locals 8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ad;->k:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->H()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->d:Lcom/google/android/gms/internal/measurement/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bk;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->d:Lcom/google/android/gms/internal/measurement/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bk;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/az;->z:Lcom/google/android/gms/internal/measurement/ba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->d:Lcom/google/android/gms/internal/measurement/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bk;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->d:Lcom/google/android/gms/internal/measurement/bk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bk;->d()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->F()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->H()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->r()Lcom/google/android/gms/internal/measurement/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->d()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_4

    :goto_3
    const-string v2, "Dispatch scheduled (ms)"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ad;->g:Lcom/google/android/gms/internal/measurement/at;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/at;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ad;->g:Lcom/google/android/gms/internal/measurement/at;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/at;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ad;->g:Lcom/google/android/gms/internal/measurement/at;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/at;->b(J)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->d()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ar;->d()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ad;->g:Lcom/google/android/gms/internal/measurement/at;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/at;->a(J)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->G()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ad;->F()V

    goto/16 :goto_1
.end method
