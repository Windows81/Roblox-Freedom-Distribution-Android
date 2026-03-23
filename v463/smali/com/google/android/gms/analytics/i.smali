.class public Lcom/google/android/gms/analytics/i;
.super Lcom/google/android/gms/analytics/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/r<",
        "Lcom/google/android/gms/analytics/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/ae;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ae;->g()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ae;->c()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/r;-><init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/common/util/d;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/ae;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/analytics/o;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/Class;)Lcom/google/android/gms/analytics/q;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/q;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ae;->o()Lcom/google/android/gms/internal/measurement/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/aw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/q;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/i;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/q;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ae;->n()Lcom/google/android/gms/internal/measurement/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/q;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/q;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/o;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/w;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/w;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/j;

    iget-object v2, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/ae;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/j;-><init>(Lcom/google/android/gms/internal/measurement/ae;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/i;->c:Z

    return-void
.end method

.method final g()Lcom/google/android/gms/internal/measurement/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/ae;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/analytics/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->a()Lcom/google/android/gms/analytics/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ae;->p()Lcom/google/android/gms/internal/measurement/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ap;->b()Lcom/google/android/gms/internal/measurement/jq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->a(Lcom/google/android/gms/analytics/q;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->b:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ae;->q()Lcom/google/android/gms/internal/measurement/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/bi;->b()Lcom/google/android/gms/internal/measurement/kl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->a(Lcom/google/android/gms/analytics/q;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/r;->b(Lcom/google/android/gms/analytics/o;)V

    return-object v0
.end method
