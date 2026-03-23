.class public final enum Lcom/google/android/gms/internal/ads/aep;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/aep;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum b:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum c:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum d:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum e:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum f:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum g:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum h:Lcom/google/android/gms/internal/ads/aep;

.field public static final enum i:Lcom/google/android/gms/internal/ads/aep;

.field private static final synthetic k:[Lcom/google/android/gms/internal/ads/aep;


# instance fields
.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->a:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->b:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->c:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->d:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->e:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->f:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/internal/ads/zv;->a:Lcom/google/android/gms/internal/ads/zv;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->g:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->h:Lcom/google/android/gms/internal/ads/aep;

    new-instance v0, Lcom/google/android/gms/internal/ads/aep;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aep;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->i:Lcom/google/android/gms/internal/ads/aep;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/aep;

    sget-object v1, Lcom/google/android/gms/internal/ads/aep;->a:Lcom/google/android/gms/internal/ads/aep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/aep;->b:Lcom/google/android/gms/internal/ads/aep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/aep;->c:Lcom/google/android/gms/internal/ads/aep;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/aep;->d:Lcom/google/android/gms/internal/ads/aep;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/aep;->e:Lcom/google/android/gms/internal/ads/aep;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/ads/aep;->f:Lcom/google/android/gms/internal/ads/aep;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/ads/aep;->g:Lcom/google/android/gms/internal/ads/aep;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/internal/ads/aep;->h:Lcom/google/android/gms/internal/ads/aep;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/aep;->i:Lcom/google/android/gms/internal/ads/aep;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/aep;->k:[Lcom/google/android/gms/internal/ads/aep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aep;->j:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/aep;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/aep;->k:[Lcom/google/android/gms/internal/ads/aep;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/aep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/aep;

    return-object v0
.end method
