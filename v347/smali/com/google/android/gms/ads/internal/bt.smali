.class public final Lcom/google/android/gms/ads/internal/bt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/pt;

.field public final b:Lcom/google/android/gms/internal/ads/on;

.field public final c:Lcom/google/android/gms/internal/ads/hu;

.field public final d:Lcom/google/android/gms/internal/ads/amn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/pt;Lcom/google/android/gms/internal/ads/on;Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/amn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/bt;->a:Lcom/google/android/gms/internal/ads/pt;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/bt;->b:Lcom/google/android/gms/internal/ads/on;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/bt;->c:Lcom/google/android/gms/internal/ads/hu;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/bt;->d:Lcom/google/android/gms/internal/ads/amn;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/bt;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/bt;

    new-instance v1, Lcom/google/android/gms/internal/ads/pi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/pi;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/ou;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ou;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/hp;

    new-instance v4, Lcom/google/android/gms/internal/ads/hq;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/hq;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/hp;-><init>(Lcom/google/android/gms/internal/ads/hv;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/amn;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/amn;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/bt;-><init>(Lcom/google/android/gms/internal/ads/pt;Lcom/google/android/gms/internal/ads/on;Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/amn;)V

    return-object v0
.end method
