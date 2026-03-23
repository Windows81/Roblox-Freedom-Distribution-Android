.class final Lcom/google/android/gms/internal/measurement/aq;
.super Lcom/google/android/gms/internal/measurement/ac;


# instance fields
.field private a:Z

.field private final b:Lcom/google/android/gms/internal/measurement/an;

.field private final c:Lcom/google/android/gms/internal/measurement/by;

.field private final d:Lcom/google/android/gms/internal/measurement/bx;

.field private final e:Lcom/google/android/gms/internal/measurement/ai;

.field private f:J

.field private final g:Lcom/google/android/gms/internal/measurement/bg;

.field private final h:Lcom/google/android/gms/internal/measurement/bg;

.field private final i:Lcom/google/android/gms/internal/measurement/cj;

.field private j:J

.field private k:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/ae;Lcom/google/android/gms/internal/measurement/ag;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/aq;->f:J

    new-instance p2, Lcom/google/android/gms/internal/measurement/bx;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/bx;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/aq;->d:Lcom/google/android/gms/internal/measurement/bx;

    new-instance p2, Lcom/google/android/gms/internal/measurement/an;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/an;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    new-instance p2, Lcom/google/android/gms/internal/measurement/by;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/by;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/aq;->c:Lcom/google/android/gms/internal/measurement/by;

    new-instance p2, Lcom/google/android/gms/internal/measurement/ai;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/ai;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    new-instance p2, Lcom/google/android/gms/internal/measurement/cj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/measurement/cj;-><init>(Lcom/google/android/gms/common/util/d;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/aq;->i:Lcom/google/android/gms/internal/measurement/cj;

    new-instance p2, Lcom/google/android/gms/internal/measurement/ar;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/ar;-><init>(Lcom/google/android/gms/internal/measurement/aq;Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/aq;->g:Lcom/google/android/gms/internal/measurement/bg;

    new-instance p2, Lcom/google/android/gms/internal/measurement/as;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/as;-><init>(Lcom/google/android/gms/internal/measurement/aq;Lcom/google/android/gms/internal/measurement/ae;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/aq;->h:Lcom/google/android/gms/internal/measurement/bg;

    return-void
.end method

.method private final A()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/au;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/au;-><init>(Lcom/google/android/gms/internal/measurement/aq;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/aq;->a(Lcom/google/android/gms/internal/measurement/bk;)V

    return-void
.end method

.method private final B()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->f()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to delete stale hits"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->h:Lcom/google/android/gms/internal/measurement/bg;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bg;->a(J)V

    return-void
.end method

.method private final C()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/aq;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/bm;->C:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->i:Lcom/google/android/gms/internal/measurement/cj;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/cj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->i:Lcom/google/android/gms/internal/measurement/cj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cj;->a()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->i:Lcom/google/android/gms/internal/measurement/cj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cj;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->e()V

    :cond_3
    return-void
.end method

.method private final D()Z
    .locals 12

    const-string v0, "Failed to commit local dispatch transaction"

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    const-string v1, "Dispatching a batch of local hits"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ai;->b()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->c:Lcom/google/android/gms/internal/measurement/by;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/by;->b()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->f()I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->g()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/an;->b()V

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/an;->a(J)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v1, "Store is empty, nothing to dispatch"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3

    :cond_1
    :try_start_3
    const-string v8, "Hits loaded from store. count"

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/google/android/gms/internal/measurement/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/br;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/br;->c()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-nez v11, :cond_2

    const-string v1, "Database contains successfully uploaded hit"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    return v3

    :catch_1
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3

    :cond_3
    :try_start_6
    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ai;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "Service connected, sending hits to the service"

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/br;

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/ai;->a(Lcom/google/android/gms/internal/measurement/br;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/br;->c()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v9, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {p0, v9, v8}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/br;->c()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/an;->b(J)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/br;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_8
    const-string v2, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3

    return v3

    :catch_3
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3

    :cond_4
    :try_start_a
    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/aq;->c:Lcom/google/android/gms/internal/measurement/by;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/by;->b()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/aq;->c:Lcom/google/android/gms/internal/measurement/by;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/by;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_b
    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/an;->a(Ljava/util/List;)V

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v1

    :try_start_c
    const-string v2, "Failed to remove successfully uploaded hits"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    return v3

    :catch_5
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3

    :cond_6
    :goto_3
    :try_start_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v7, :cond_7

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    return v3

    :catch_6
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3

    :cond_7
    :try_start_10
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3

    :catch_8
    move-exception v1

    :try_start_11
    const-string v2, "Failed to read hits from persisted store"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    return v3

    :catch_9
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3

    :catchall_0
    move-exception v1

    :try_start_13
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/an;->c()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    throw v1

    :catch_a
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return v3
.end method

.method private final E()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->g()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final F()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->p()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->E()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget-object v3, Lcom/google/android/gms/internal/measurement/bm;->h:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bn;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Dispatch alarm scheduled (ms)"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->d()V

    :cond_1
    return-void
.end method

.method private final G()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->g:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->g:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bg;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->p()Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->e()V

    :cond_1
    return-void
.end method

.method private final H()J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/aq;->f:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/bm;->e:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->q()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/co;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->q()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget v0, v0, Lcom/google/android/gms/internal/measurement/co;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_1
    return-wide v0
.end method

.method private final I()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/aq;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ai;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/ah;Lcom/google/android/gms/internal/measurement/jr;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/i;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->h()Lcom/google/android/gms/internal/measurement/ae;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ah;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ah;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/i;->b(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/r;->h()Lcom/google/android/gms/analytics/o;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/q;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/q;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/q;->b(Z)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/o;->a(Lcom/google/android/gms/analytics/q;)V

    const-class v2, Lcom/google/android/gms/internal/measurement/kk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/kk;

    const-class v3, Lcom/google/android/gms/internal/measurement/jq;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/jq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ah;->f()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "an"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/jq;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "av"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/jq;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "aid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/jq;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "aiid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/jq;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v7, "uid"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/q;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/measurement/kk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ah;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Sending installation campaign to"

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ca;->b()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/o;->a(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->A()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->B()V

    return-void
.end method

.method private final g(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/d/b;->a(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/ah;Z)J
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "properties"

    const-string v2, "Failed to end transaction"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    const-wide/16 v3, -0x1

    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/an;->b()V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->a()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/an;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "app_uid=? AND cid<>?"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v11, v7

    const/4 v6, 0x1

    aput-object v8, v11, v6

    invoke-virtual {v9, v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    const-string v9, "Deleted property records"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/internal/measurement/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->a()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/an;->a(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    move-object/from16 v5, p1

    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/internal/measurement/ah;->a(J)V

    iget-object v10, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/an;->A()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->f()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Landroid/net/Uri$Builder;

    invoke-direct {v13}, Landroid/net/Uri$Builder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    const-string v12, ""

    :cond_2
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "app_uid"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->a()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v14, "cid"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "tid"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "adid"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->d()Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "hits_count"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ah;->e()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "params"

    invoke-virtual {v13, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x5

    :try_start_1
    invoke-virtual {v11, v0, v5, v13, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_4

    const-string v0, "Failed to insert/update a property (got -1)"

    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/measurement/ab;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "Error storing a property"

    invoke-virtual {v10, v5, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->c()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-wide v8

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    const-string v5, "Failed to update Analytics property"

    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-wide v3

    :goto_4
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->d()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    goto :goto_7

    :goto_6
    throw v3

    :goto_7
    goto :goto_6
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->c:Lcom/google/android/gms/internal/measurement/by;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/measurement/ah;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ah;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending first hit to property"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ca;->c()Lcom/google/android/gms/internal/measurement/cj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ca;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->k()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/cn;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/jr;

    move-result-object v0

    const-string v1, "Found relevant installation campaign"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/aq;->a(Lcom/google/android/gms/internal/measurement/ah;Lcom/google/android/gms/internal/measurement/jr;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/bk;)V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/aq;->j:J

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ca;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->C()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->D()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ca;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/measurement/bk;->a(Ljava/lang/Throwable;)V

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/aq;->j:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->d:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ca;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/bk;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/br;)V
    .locals 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/aq;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Delivering hit"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ca;->g()Lcom/google/android/gms/internal/measurement/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cc;->a()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->b()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "_m"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/br;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->d()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->f()Z

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->c()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->a()I

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/br;->e()Ljava/util/List;

    move-result-object v10

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/br;-><init>(Lcom/google/android/gms/internal/measurement/ab;Ljava/util/Map;JZJILjava/util/List;)V

    move-object p1, v0

    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->C()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ai;->a(Lcom/google/android/gms/internal/measurement/br;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Hit sent to the device AnalyticsService for delivery"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ab;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/an;->a(Lcom/google/android/gms/internal/measurement/br;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Delivery failed to save hit to a database"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->k()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v0

    const-string v1, "deliver: failed to insert hit to database"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/br;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->k()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/cn;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/jr;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Parsing failed. Ignoring invalid campaign data"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ca;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Ignoring duplicate install campaign"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "Ignoring multiple install campaigns. original, new"

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/ca;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ca;->c()Lcom/google/android/gms/internal/measurement/cj;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->l()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/cj;->a(J)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Campaign received too late, ignoring"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "Received installation campaign"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/an;->c(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ah;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/aq;->a(Lcom/google/android/gms/internal/measurement/ah;Lcom/google/android/gms/internal/measurement/jr;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/aq;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aa;->a(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/aq;->a:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/at;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/at;-><init>(Lcom/google/android/gms/internal/measurement/aq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->h()Lcom/google/android/gms/internal/measurement/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ae;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/cd;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ce;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ab;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ca;->b()J

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/aq;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->I()V

    :cond_3
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/aq;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->I()V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ce;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AnalyticsService registered in the app manifest and enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/aq;->k:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->e()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->C()V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    return-void
.end method

.method final d()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/aq;->j:J

    return-void
.end method

.method protected final e()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ai;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->e()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->b(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/an;->a(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/br;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->e:Lcom/google/android/gms/internal/measurement/ai;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/ai;->a(Lcom/google/android/gms/internal/measurement/br;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    return-void

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/br;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/an;->b(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    :cond_5
    return-void
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    const-string v0, "Sync dispatching local hits"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->c(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/aq;->j:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->C()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->D()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ca;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/aq;->j:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->d:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Sync local dispatch failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/aq;->g()V

    return-void
.end method

.method public final g()V
    .locals 8

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/aq;->k:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->H()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->d:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->b:Lcom/google/android/gms/internal/measurement/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/an;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->d:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    return-void

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/bm;->z:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->d:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->d:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->d()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->F()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->H()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->r()Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ca;->d()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/be;->d()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Dispatch scheduled (ms)"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ab;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->g:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bg;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->g:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/bg;->b()J

    move-result-wide v2

    add-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/aq;->g:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/bg;->b(J)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/aq;->g:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/bg;->a(J)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->G()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/aq;->F()V

    return-void
.end method
