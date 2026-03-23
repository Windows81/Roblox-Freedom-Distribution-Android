.class public final Lcom/google/android/gms/internal/ads/xz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/tl;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/security/interfaces/ECPrivateKey;

.field private final c:Lcom/google/android/gms/internal/ads/yb;

.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:Lcom/google/android/gms/internal/ads/yh;

.field private final g:Lcom/google/android/gms/internal/ads/xy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/xz;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/yh;Lcom/google/android/gms/internal/ads/xy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xz;->b:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/ads/yb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/yb;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xz;->c:Lcom/google/android/gms/internal/ads/yb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xz;->e:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xz;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xz;->f:Lcom/google/android/gms/internal/ads/yh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/xz;->g:Lcom/google/android/gms/internal/ads/xy;

    return-void
.end method
