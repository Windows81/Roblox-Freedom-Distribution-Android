.class public final Lcom/google/android/gms/internal/ads/sr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/sr;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/sr;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/google/android/gms/internal/ads/sr;->c:I

    sput v1, Lcom/google/android/gms/internal/ads/sr;->d:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/sr;->e:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method
