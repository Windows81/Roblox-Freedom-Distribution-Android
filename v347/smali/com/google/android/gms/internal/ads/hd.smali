.class public final Lcom/google/android/gms/internal/ads/hd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bbx;

.field private final b:Lcom/google/android/gms/internal/ads/gw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bbx;Lcom/google/android/gms/internal/ads/gv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hd;->a:Lcom/google/android/gms/internal/ads/bbx;

    new-instance v0, Lcom/google/android/gms/internal/ads/gw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/gw;-><init>(Lcom/google/android/gms/internal/ads/gv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hd;->b:Lcom/google/android/gms/internal/ads/gw;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/bbx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hd;->a:Lcom/google/android/gms/internal/ads/bbx;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/gw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hd;->b:Lcom/google/android/gms/internal/ads/gw;

    return-object v0
.end method
