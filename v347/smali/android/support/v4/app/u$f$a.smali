.class final Landroid/support/v4/app/u$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/u$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Landroid/support/v4/app/u$f;


# direct methods
.method constructor <init>(Landroid/support/v4/app/u$f;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Landroid/support/v4/app/u$f$a;->b:Landroid/support/v4/app/u$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Landroid/support/v4/app/u$f$a;->a:Landroid/app/job/JobWorkItem;

    .line 256
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/app/u$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v4/app/u$f$a;->b:Landroid/support/v4/app/u$f;

    iget-object v1, v0, Landroid/support/v4/app/u$f;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/u$f$a;->b:Landroid/support/v4/app/u$f;

    iget-object v0, v0, Landroid/support/v4/app/u$f;->c:Landroid/app/job/JobParameters;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/v4/app/u$f$a;->b:Landroid/support/v4/app/u$f;

    iget-object v0, v0, Landroid/support/v4/app/u$f;->c:Landroid/app/job/JobParameters;

    iget-object v2, p0, Landroid/support/v4/app/u$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 269
    :cond_0
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
