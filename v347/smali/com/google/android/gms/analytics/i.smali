.class public Lcom/google/android/gms/analytics/i;
.super Lcom/google/android/gms/analytics/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/r",
        "<",
        "Lcom/google/android/gms/analytics/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/r;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/r;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r;->g()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r;->c()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/r;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/common/util/d;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/r;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/analytics/o;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r;->o()Lcom/google/android/gms/internal/measurement/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/i;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r;->n()Lcom/google/android/gms/internal/measurement/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/h;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/w;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/w;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/j;

    iget-object v2, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/r;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/j;-><init>(Lcom/google/android/gms/internal/measurement/r;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/i;->c:Z

    return-void
.end method

.method final g()Lcom/google/android/gms/internal/measurement/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/r;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/analytics/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->a()Lcom/google/android/gms/analytics/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r;->p()Lcom/google/android/gms/internal/measurement/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ac;->b()Lcom/google/android/gms/internal/measurement/cd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->a(Lcom/google/android/gms/analytics/q;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/r;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/r;->q()Lcom/google/android/gms/internal/measurement/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/av;->b()Lcom/google/android/gms/internal/measurement/ci;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->a(Lcom/google/android/gms/analytics/q;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/r;->b(Lcom/google/android/gms/analytics/o;)V

    return-object v0
.end method
