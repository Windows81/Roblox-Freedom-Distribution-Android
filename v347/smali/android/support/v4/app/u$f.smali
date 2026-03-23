.class final Landroid/support/v4/app/u$f;
.super Landroid/app/job/JobServiceEngine;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/u$f$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v4/app/u;

.field final b:Ljava/lang/Object;

.field c:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Landroid/support/v4/app/u;)V
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/u$f;->b:Ljava/lang/Object;

    .line 275
    iput-object p1, p0, Landroid/support/v4/app/u$f;->a:Landroid/support/v4/app/u;

    .line 276
    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/support/v4/app/u$f;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/support/v4/app/u$e;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Landroid/support/v4/app/u$f;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/u$f;->c:Landroid/app/job/JobParameters;

    if-nez v2, :cond_1

    .line 312
    monitor-exit v1

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/u$f;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v2

    .line 315
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u$f;->a:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 318
    new-instance v0, Landroid/support/v4/app/u$f$a;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/app/u$f$a;-><init>(Landroid/support/v4/app/u$f;Landroid/app/job/JobWorkItem;)V

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 286
    iput-object p1, p0, Landroid/support/v4/app/u$f;->c:Landroid/app/job/JobParameters;

    .line 288
    iget-object v0, p0, Landroid/support/v4/app/u$f;->a:Landroid/support/v4/app/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Z)V

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/app/u$f;->a:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->b()Z

    move-result v0

    .line 296
    iget-object v1, p0, Landroid/support/v4/app/u$f;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Landroid/support/v4/app/u$f;->c:Landroid/app/job/JobParameters;

    .line 300
    monitor-exit v1

    .line 301
    return v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
