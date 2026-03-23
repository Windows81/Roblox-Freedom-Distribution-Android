.class final synthetic Lcom/google/android/gms/internal/ads/azd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ayz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ayz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azd;->a:Lcom/google/android/gms/internal/ads/ayz;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/ayz;)Lcom/google/android/gms/internal/ads/rn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/azd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/azd;-><init>(Lcom/google/android/gms/internal/ads/ayz;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azd;->a:Lcom/google/android/gms/internal/ads/ayz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ayz;->a()V

    return-void
.end method
