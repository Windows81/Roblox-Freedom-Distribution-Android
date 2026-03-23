.class final Lcom/google/android/gms/internal/ads/azi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/ae",
        "<",
        "Lcom/google/android/gms/internal/ads/qd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae",
            "<-",
            "Lcom/google/android/gms/internal/ads/bah;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aza;Lcom/google/android/gms/ads/internal/gmsg/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/gmsg/ae",
            "<-",
            "Lcom/google/android/gms/internal/ads/bah;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azi;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/ads/internal/gmsg/ae;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/azi;)Lcom/google/android/gms/ads/internal/gmsg/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/ads/internal/gmsg/ae;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azi;->a:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azi;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/ads/internal/gmsg/ae;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
