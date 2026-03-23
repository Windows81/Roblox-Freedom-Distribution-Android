.class public final Lcom/google/android/gms/internal/ads/adz;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/ads/abt;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/abt;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/abt;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adz;->a:Lcom/google/android/gms/internal/ads/abt;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/adz;)Lcom/google/android/gms/internal/ads/abt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adz;->a:Lcom/google/android/gms/internal/ads/abt;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zv;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adz;->a:Lcom/google/android/gms/internal/ads/abt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/abt;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adz;->a:Lcom/google/android/gms/internal/ads/abt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abt;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/abt;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adz;->a:Lcom/google/android/gms/internal/ads/abt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/abt;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/aeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aeb;-><init>(Lcom/google/android/gms/internal/ads/adz;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/aea;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/aea;-><init>(Lcom/google/android/gms/internal/ads/adz;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adz;->a:Lcom/google/android/gms/internal/ads/abt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abt;->size()I

    move-result v0

    return v0
.end method
