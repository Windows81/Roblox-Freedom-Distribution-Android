.class final Landroidx/core/app/f$f;
.super Landroid/app/job/JobServiceEngine;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/f$f$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/core/app/f;

.field final b:Ljava/lang/Object;

.field c:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Landroidx/core/app/f;)V
    .locals 1

    .line 275
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/app/f$f;->b:Ljava/lang/Object;

    .line 276
    iput-object p1, p0, Landroidx/core/app/f$f;->a:Landroidx/core/app/f;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroidx/core/app/f$f;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/core/app/f$e;
    .locals 3

    .line 311
    iget-object v0, p0, Landroidx/core/app/f$f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/f$f;->c:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 313
    monitor-exit v0

    return-object v2

    .line 315
    :cond_0
    iget-object v1, p0, Landroidx/core/app/f$f;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/app/f$f;->a:Landroidx/core/app/f;

    invoke-virtual {v2}, Landroidx/core/app/f;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 319
    new-instance v0, Landroidx/core/app/f$f$a;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/f$f$a;-><init>(Landroidx/core/app/f$f;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    .line 316
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 287
    iput-object p1, p0, Landroidx/core/app/f$f;->c:Landroid/app/job/JobParameters;

    .line 289
    iget-object p1, p0, Landroidx/core/app/f$f;->a:Landroidx/core/app/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/app/f;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 296
    iget-object p1, p0, Landroidx/core/app/f$f;->a:Landroidx/core/app/f;

    invoke-virtual {p1}, Landroidx/core/app/f;->b()Z

    move-result p1

    .line 297
    iget-object v0, p0, Landroidx/core/app/f$f;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 300
    :try_start_0
    iput-object v1, p0, Landroidx/core/app/f$f;->c:Landroid/app/job/JobParameters;

    .line 301
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
