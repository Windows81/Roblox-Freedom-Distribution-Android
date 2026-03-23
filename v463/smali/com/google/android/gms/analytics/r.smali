.class public Lcom/google/android/gms/analytics/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/r;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/analytics/o;

.field private final b:Lcom/google/android/gms/analytics/s;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/common/util/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/r;->b:Lcom/google/android/gms/analytics/s;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/r;->c:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/analytics/o;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/analytics/o;-><init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/common/util/d;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/o;->j()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/analytics/o;)V
    .locals 0

    return-void
.end method

.method protected final b(Lcom/google/android/gms/analytics/o;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/p;

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/analytics/p;->a(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/analytics/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()Lcom/google/android/gms/analytics/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->a()Lcom/google/android/gms/analytics/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/r;->b(Lcom/google/android/gms/analytics/o;)V

    return-object v0
.end method

.method protected final i()Lcom/google/android/gms/analytics/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->b:Lcom/google/android/gms/analytics/s;

    return-object v0
.end method
