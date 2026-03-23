.class final Lcom/google/android/gms/internal/ads/ady;
.super Lcom/google/android/gms/internal/ads/adw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/adw",
        "<",
        "Lcom/google/android/gms/internal/ads/adx;",
        "Lcom/google/android/gms/internal/ads/adx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adw;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adx;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/ads/abd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abd;->zzdtt:Lcom/google/android/gms/internal/ads/adx;

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/adx;->b()Lcom/google/android/gms/internal/ads/adx;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/adx;->c()V

    return-object p1
.end method

.method final synthetic a(Ljava/lang/Object;II)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/adx;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;IJ)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    shl-int/lit8 v0, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/adx;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zv;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/adx;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    check-cast p3, Lcom/google/android/gms/internal/ads/adx;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/adx;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/adx;->b(Lcom/google/android/gms/internal/ads/aeq;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/ads/adx;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ady;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adx;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/adc;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/abd;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/abd;->zzdtt:Lcom/google/android/gms/internal/ads/adx;

    return-object v0
.end method

.method final synthetic b(Ljava/lang/Object;IJ)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/adx;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aeq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/adx;->a(Lcom/google/android/gms/internal/ads/aeq;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/ads/adx;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/ady;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adx;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/abd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abd;->zzdtt:Lcom/google/android/gms/internal/ads/adx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/adx;->a()Lcom/google/android/gms/internal/ads/adx;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/adx;->b()Lcom/google/android/gms/internal/ads/adx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ady;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/adx;)V

    :cond_0
    return-object v0
.end method

.method final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    check-cast p2, Lcom/google/android/gms/internal/ads/adx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/adx;->a()Lcom/google/android/gms/internal/ads/adx;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/adx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/adx;->a(Lcom/google/android/gms/internal/ads/adx;Lcom/google/android/gms/internal/ads/adx;)Lcom/google/android/gms/internal/ads/adx;

    move-result-object p1

    goto :goto_0
.end method

.method final d(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/abd;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/abd;->zzdtt:Lcom/google/android/gms/internal/ads/adx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adx;->c()V

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/adx;->d()I

    move-result v0

    return v0
.end method

.method final synthetic f(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/adx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/adx;->e()I

    move-result v0

    return v0
.end method
