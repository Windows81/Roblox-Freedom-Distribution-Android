.class final Lcom/google/android/gms/internal/ads/acz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/aci;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ack;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/ada;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ack;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acz;->a:Lcom/google/android/gms/internal/ads/ack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acz;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/ada;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/ada;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->a(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/abd$e;->h:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/abd$e;->i:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->a(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/ack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->a:Lcom/google/android/gms/internal/ads/ack;

    return-object v0
.end method

.method final d()Lcom/google/android/gms/internal/ads/ada;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->b(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->c(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->d(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->e(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->f(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    return v0
.end method

.method final j()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->g(Lcom/google/android/gms/internal/ads/ada;)[I

    move-result-object v0

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->h(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/ada;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ada;->i(Lcom/google/android/gms/internal/ads/ada;)I

    move-result v0

    return v0
.end method
