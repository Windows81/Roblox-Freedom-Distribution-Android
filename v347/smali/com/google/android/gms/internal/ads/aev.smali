.class public abstract Lcom/google/android/gms/internal/ads/aev;
.super Lcom/google/android/gms/internal/ads/afb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/ads/aev",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/ads/afb;"
    }
.end annotation


# instance fields
.field protected Y:Lcom/google/android/gms/internal/ads/aex;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afb;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aex;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/aex;->b(I)Lcom/google/android/gms/internal/ads/aey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aey;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public a(Lcom/google/android/gms/internal/ads/aet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aex;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aex;->b(I)Lcom/google/android/gms/internal/ads/aey;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/internal/ads/aet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/aer;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->j()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/aer;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->j()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aer;->a(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/afd;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/ads/afd;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ads/aex;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/aex;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/aey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aey;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ads/aex;->a(ILcom/google/android/gms/internal/ads/aey;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aey;->a(Lcom/google/android/gms/internal/ads/afd;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aev;->Y:Lcom/google/android/gms/internal/ads/aex;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aex;->a(I)Lcom/google/android/gms/internal/ads/aey;

    move-result-object v0

    goto :goto_1
.end method

.method public final synthetic c()Lcom/google/android/gms/internal/ads/afb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/afb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aev;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/afb;->c()Lcom/google/android/gms/internal/ads/afb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aev;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/aez;->a(Lcom/google/android/gms/internal/ads/aev;Lcom/google/android/gms/internal/ads/aev;)V

    return-object v0
.end method
