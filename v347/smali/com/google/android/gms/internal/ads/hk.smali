.class final synthetic Lcom/google/android/gms/internal/ads/hk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hk;->a:Lcom/google/android/gms/internal/ads/hj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/nd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hk;->a:Lcom/google/android/gms/internal/ads/hj;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hj;->a(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    return-object v0
.end method
