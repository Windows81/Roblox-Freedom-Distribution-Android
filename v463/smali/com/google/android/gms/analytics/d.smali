.class public final Lcom/google/android/gms/analytics/d;
.super Lcom/google/android/gms/analytics/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/d$b;,
        Lcom/google/android/gms/analytics/d$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/analytics/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/d;->d:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/d;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ae;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/ae;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ae;->j()Lcom/google/android/gms/analytics/d;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 3

    const-class v0, Lcom/google/android/gms/analytics/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/d;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/analytics/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/analytics/d;->b:Ljava/util/List;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/analytics/h;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/analytics/h;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/i;->g()Lcom/google/android/gms/internal/measurement/ae;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/analytics/h;-><init>(Lcom/google/android/gms/internal/measurement/ae;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/bu;)V

    if-lez p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ck;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/i;->g()Lcom/google/android/gms/internal/measurement/ae;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/ck;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/ck;->a(I)Lcom/google/android/gms/internal/measurement/bb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/cm;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/h;->a(Lcom/google/android/gms/internal/measurement/cm;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ac;->z()V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/i;->g()Lcom/google/android/gms/internal/measurement/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ae;->k()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/co;->d()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/co;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/co;->f()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/d;->a(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/co;->d()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/d;->c:Z

    return-void
.end method

.method final a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/d$a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/analytics/d$a;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Application;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/d$b;-><init>(Lcom/google/android/gms/analytics/d;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/d;->e:Z

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/analytics/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/i;->g()Lcom/google/android/gms/internal/measurement/ae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ae;->a()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/d;->a(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/d;->f:Z

    return-void
.end method

.method final b(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/d$a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/analytics/d$a;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/analytics/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->f:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/d;->g:Z

    return v0
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/i;->g()Lcom/google/android/gms/internal/measurement/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ae;->h()Lcom/google/android/gms/internal/measurement/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v;->c()V

    return-void
.end method
