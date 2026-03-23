.class final synthetic Lcom/google/android/gms/internal/ads/axy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/axy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/axy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/axy;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->r()Lcom/google/android/gms/internal/ads/axz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/axz;->a()V

    return-void
.end method
