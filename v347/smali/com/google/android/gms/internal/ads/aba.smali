.class final enum Lcom/google/android/gms/internal/ads/aba;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/aba;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/aba;

.field public static final enum b:Lcom/google/android/gms/internal/ads/aba;

.field public static final enum c:Lcom/google/android/gms/internal/ads/aba;

.field public static final enum d:Lcom/google/android/gms/internal/ads/aba;

.field private static final synthetic f:[Lcom/google/android/gms/internal/ads/aba;


# instance fields
.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/aba;

    const-string v1, "SCALAR"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/aba;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aba;->a:Lcom/google/android/gms/internal/ads/aba;

    new-instance v0, Lcom/google/android/gms/internal/ads/aba;

    const-string v1, "VECTOR"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/aba;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aba;->b:Lcom/google/android/gms/internal/ads/aba;

    new-instance v0, Lcom/google/android/gms/internal/ads/aba;

    const-string v1, "PACKED_VECTOR"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/aba;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aba;->c:Lcom/google/android/gms/internal/ads/aba;

    new-instance v0, Lcom/google/android/gms/internal/ads/aba;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/aba;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aba;->d:Lcom/google/android/gms/internal/ads/aba;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/aba;

    sget-object v1, Lcom/google/android/gms/internal/ads/aba;->a:Lcom/google/android/gms/internal/ads/aba;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/aba;->b:Lcom/google/android/gms/internal/ads/aba;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/aba;->c:Lcom/google/android/gms/internal/ads/aba;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/aba;->d:Lcom/google/android/gms/internal/ads/aba;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/aba;->f:[Lcom/google/android/gms/internal/ads/aba;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/aba;->e:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/aba;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/aba;->f:[Lcom/google/android/gms/internal/ads/aba;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/aba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/aba;

    return-object v0
.end method
