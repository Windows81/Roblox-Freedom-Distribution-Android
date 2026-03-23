.class public final Lcom/google/android/gms/internal/ads/asv;
.super Lcom/google/android/gms/internal/ads/auv;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ati;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/ass;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/aub;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/internal/ads/aso;

.field private h:Landroid/os/Bundle;

.field private i:Lcom/google/android/gms/internal/ads/aqc;

.field private j:Landroid/view/View;

.field private k:Lcom/google/android/gms/b/a;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Object;

.field private n:Lcom/google/android/gms/internal/ads/ate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aub;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/aso;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/aqc;Landroid/view/View;Lcom/google/android/gms/b/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/ass;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/aub;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/aso;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/ads/aqc;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/b/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/auv;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->m:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/asv;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/asv;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/asv;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/asv;->d:Lcom/google/android/gms/internal/ads/aub;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/asv;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/asv;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/asv;->g:Lcom/google/android/gms/internal/ads/aso;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/asv;->h:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/asv;->i:Lcom/google/android/gms/internal/ads/aqc;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/asv;->j:Landroid/view/View;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/asv;->k:Lcom/google/android/gms/b/a;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/asv;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/asv;)Lcom/google/android/gms/internal/ads/ate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/asv;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/ate;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/asv;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    if-nez v0, :cond_0

    const-string v0, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ate;->b(Landroid/os/Bundle;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ate;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/asv;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/asv;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    if-nez v0, :cond_0

    const-string v0, "#002 Attempt to record impression before native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ate;->a(Landroid/os/Bundle;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->k:Lcom/google/android/gms/b/a;

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/asv;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    if-nez v0, :cond_0

    const-string v0, "#003 Attempt to report touch event before native ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ate;->c(Landroid/os/Bundle;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/aub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->d:Lcom/google/android/gms/internal/ads/aub;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/aqc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->i:Lcom/google/android/gms/internal/ads/aqc;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->n:Lcom/google/android/gms/internal/ads/ate;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/aso;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->g:Lcom/google/android/gms/internal/ads/aso;

    return-object v0
.end method

.method public final n()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->j:Landroid/view/View;

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/atx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asv;->g:Lcom/google/android/gms/internal/ads/aso;

    return-object v0
.end method

.method public final q()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/jm;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/asw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/asw;-><init>(Lcom/google/android/gms/internal/ads/asv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->b:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->d:Lcom/google/android/gms/internal/ads/aub;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->g:Lcom/google/android/gms/internal/ads/aso;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->h:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->m:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->i:Lcom/google/android/gms/internal/ads/aqc;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/asv;->j:Landroid/view/View;

    return-void
.end method
