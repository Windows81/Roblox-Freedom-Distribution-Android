.class abstract Lcom/google/android/gms/internal/ads/abu;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/abu;

.field private static final b:Lcom/google/android/gms/internal/ads/abu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/abw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/abw;-><init>(Lcom/google/android/gms/internal/ads/abv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/abu;->a:Lcom/google/android/gms/internal/ads/abu;

    new-instance v0, Lcom/google/android/gms/internal/ads/abx;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/abx;-><init>(Lcom/google/android/gms/internal/ads/abv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/abu;->b:Lcom/google/android/gms/internal/ads/abu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/abv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abu;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/ads/abu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/abu;->a:Lcom/google/android/gms/internal/ads/abu;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/ads/abu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/abu;->b:Lcom/google/android/gms/internal/ads/abu;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;J)V
.end method
