.class public abstract Landroidx/core/app/f;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/f$a;,
        Landroidx/core/app/f$d;,
        Landroidx/core/app/f$e;,
        Landroidx/core/app/f$g;,
        Landroidx/core/app/f$f;,
        Landroidx/core/app/f$c;,
        Landroidx/core/app/f$b;,
        Landroidx/core/app/f$h;
    }
.end annotation


# static fields
.field static final h:Ljava/lang/Object;

.field static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/f$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroidx/core/app/f$b;

.field b:Landroidx/core/app/f$h;

.field c:Landroidx/core/app/f$a;

.field d:Z

.field e:Z

.field f:Z

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/f$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/f;->h:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/f;->i:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 416
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Landroidx/core/app/f;->d:Z

    .line 100
    iput-boolean v0, p0, Landroidx/core/app/f;->e:Z

    .line 101
    iput-boolean v0, p0, Landroidx/core/app/f;->f:Z

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    goto :goto_0

    .line 420
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/f$h;
    .locals 2

    .line 529
    sget-object v0, Landroidx/core/app/f;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/f$h;

    if-nez v0, :cond_2

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 535
    new-instance p2, Landroidx/core/app/f$g;

    invoke-direct {p2, p0, p1, p3}, Landroidx/core/app/f$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_1
    new-instance p2, Landroidx/core/app/f$c;

    invoke-direct {p2, p0, p1}, Landroidx/core/app/f$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_0
    move-object v0, p2

    .line 539
    sget-object p0, Landroidx/core/app/f;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 520
    sget-object v0, Landroidx/core/app/f;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 521
    :try_start_0
    invoke-static {p0, p1, v1, p2}, Landroidx/core/app/f;->a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/f$h;

    move-result-object p0

    .line 522
    invoke-virtual {p0, p2}, Landroidx/core/app/f$h;->a(I)V

    .line 523
    invoke-virtual {p0, p3}, Landroidx/core/app/f$h;->a(Landroid/content/Intent;)V

    .line 524
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 518
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 1

    .line 501
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Landroidx/core/app/f;->a(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method a(Z)V
    .locals 2

    .line 607
    iget-object v0, p0, Landroidx/core/app/f;->c:Landroidx/core/app/f$a;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Landroidx/core/app/f$a;

    invoke-direct {v0, p0}, Landroidx/core/app/f$a;-><init>(Landroidx/core/app/f;)V

    iput-object v0, p0, Landroidx/core/app/f;->c:Landroidx/core/app/f$a;

    .line 609
    iget-object v0, p0, Landroidx/core/app/f;->b:Landroidx/core/app/f$h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {v0}, Landroidx/core/app/f$h;->b()V

    .line 613
    :cond_0
    iget-object p1, p0, Landroidx/core/app/f;->c:Landroidx/core/app/f$a;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/f$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b()Z
    .locals 2

    .line 599
    iget-object v0, p0, Landroidx/core/app/f;->c:Landroidx/core/app/f$a;

    if-eqz v0, :cond_0

    .line 600
    iget-boolean v1, p0, Landroidx/core/app/f;->d:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/f$a;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Landroidx/core/app/f;->e:Z

    .line 603
    invoke-virtual {p0}, Landroidx/core/app/f;->a()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 2

    .line 618
    iget-object v0, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 619
    monitor-enter v0

    const/4 v1, 0x0

    .line 620
    :try_start_0
    iput-object v1, p0, Landroidx/core/app/f;->c:Landroidx/core/app/f$a;

    .line 629
    iget-object v1, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0, v1}, Landroidx/core/app/f;->a(Z)V

    goto :goto_0

    .line 631
    :cond_0
    iget-boolean v1, p0, Landroidx/core/app/f;->f:Z

    if-nez v1, :cond_1

    .line 632
    iget-object v1, p0, Landroidx/core/app/f;->b:Landroidx/core/app/f$h;

    invoke-virtual {v1}, Landroidx/core/app/f$h;->c()V

    .line 634
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method d()Landroidx/core/app/f$e;
    .locals 3

    .line 639
    iget-object v0, p0, Landroidx/core/app/f;->a:Landroidx/core/app/f$b;

    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0}, Landroidx/core/app/f$b;->b()Landroidx/core/app/f$e;

    move-result-object v0

    return-object v0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 644
    iget-object v1, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/f$e;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 646
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 465
    iget-object p1, p0, Landroidx/core/app/f;->a:Landroidx/core/app/f$b;

    if-eqz p1, :cond_0

    .line 466
    invoke-interface {p1}, Landroidx/core/app/f$b;->a()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 429
    new-instance v0, Landroidx/core/app/f$f;

    invoke-direct {v0, p0}, Landroidx/core/app/f$f;-><init>(Landroidx/core/app/f;)V

    iput-object v0, p0, Landroidx/core/app/f;->a:Landroidx/core/app/f$b;

    .line 430
    iput-object v1, p0, Landroidx/core/app/f;->b:Landroidx/core/app/f$h;

    goto :goto_0

    .line 432
    :cond_0
    iput-object v1, p0, Landroidx/core/app/f;->a:Landroidx/core/app/f$b;

    .line 433
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 434
    invoke-static {p0, v0, v1, v1}, Landroidx/core/app/f;->a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/f$h;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/f;->b:Landroidx/core/app/f$h;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 476
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 477
    iget-object v0, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 478
    monitor-enter v0

    const/4 v1, 0x1

    .line 479
    :try_start_0
    iput-boolean v1, p0, Landroidx/core/app/f;->f:Z

    .line 480
    iget-object v1, p0, Landroidx/core/app/f;->b:Landroidx/core/app/f$h;

    invoke-virtual {v1}, Landroidx/core/app/f$h;->c()V

    .line 481
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 444
    iget-object p2, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 445
    iget-object p2, p0, Landroidx/core/app/f;->b:Landroidx/core/app/f$h;

    invoke-virtual {p2}, Landroidx/core/app/f$h;->a()V

    .line 447
    iget-object p2, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    monitor-enter p2

    .line 448
    :try_start_0
    iget-object v0, p0, Landroidx/core/app/f;->g:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/f$d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/f$d;-><init>(Landroidx/core/app/f;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 450
    invoke-virtual {p0, p1}, Landroidx/core/app/f;->a(Z)V

    .line 451
    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method
