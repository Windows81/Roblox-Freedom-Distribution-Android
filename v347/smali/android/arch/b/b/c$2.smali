.class Landroid/arch/b/b/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/b/b/c;


# direct methods
.method constructor <init>(Landroid/arch/b/b/c;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->a(Landroid/arch/b/b/c;)Landroid/arch/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/b/b/e;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 349
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 351
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->b(Landroid/arch/b/b/c;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    .line 389
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    iget-object v0, v0, Landroid/arch/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    .line 389
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 360
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->a(Landroid/arch/b/b/c;)Landroid/arch/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/b/b/e;->i()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 367
    :cond_3
    :try_start_3
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->d(Landroid/arch/b/b/c;)Landroid/arch/b/a/f;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/b/a/f;->a()I

    .line 368
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->e(Landroid/arch/b/b/c;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v5}, Landroid/arch/b/b/c;->f(Landroid/arch/b/b/c;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    .line 369
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v0}, Landroid/arch/b/b/c;->a(Landroid/arch/b/b/c;)Landroid/arch/b/b/e;

    move-result-object v0

    const-string v4, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v5, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v5}, Landroid/arch/b/b/c;->e(Landroid/arch/b/b/c;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/arch/b/b/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    .line 372
    :goto_1
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 374
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 376
    iget-object v5, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    iget-object v5, v5, Landroid/arch/b/b/c;->b:[J

    aput-wide v6, v5, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 379
    :try_start_5
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    invoke-static {v0, v6, v7}, Landroid/arch/b/b/c;->a(Landroid/arch/b/b/c;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v2, v1

    .line 380
    goto :goto_1

    .line 382
    :cond_4
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 389
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 391
    :goto_2
    if-eqz v2, :cond_0

    .line 392
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    iget-object v1, v0, Landroid/arch/b/b/c;->d:Landroid/arch/a/b/b;

    monitor-enter v1

    .line 393
    :try_start_7
    iget-object v0, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    iget-object v0, v0, Landroid/arch/b/b/c;->d:Landroid/arch/a/b/b;

    invoke-virtual {v0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/b/b/c$c;

    iget-object v3, p0, Landroid/arch/b/b/c$2;->a:Landroid/arch/b/b/c;

    iget-object v3, v3, Landroid/arch/b/b/c;->b:[J

    invoke-virtual {v0, v3}, Landroid/arch/b/b/c$c;->a([J)V

    goto :goto_3

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 382
    :catchall_1
    move-exception v0

    move v1, v2

    :goto_4
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 384
    :catch_0
    move-exception v0

    move v2, v1

    .line 386
    :goto_5
    :try_start_9
    const-string v1, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 389
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 396
    :cond_5
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 384
    :catch_1
    move-exception v0

    move v1, v2

    :goto_6
    move v2, v1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    .line 382
    :catchall_3
    move-exception v0

    goto :goto_4
.end method
