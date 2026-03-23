.class public final Lcom/google/android/gms/internal/ads/bbl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/bbd;

.field public final c:Lcom/google/android/gms/internal/ads/bbx;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/ads/bbh;

.field public final f:Lcom/google/android/gms/internal/ads/bcd;

.field public final g:J


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    move-object v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/bbl;-><init>(Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/bbx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbh;ILcom/google/android/gms/internal/ads/bcd;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/bbd;Lcom/google/android/gms/internal/ads/bbx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbh;ILcom/google/android/gms/internal/ads/bcd;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbl;->b:Lcom/google/android/gms/internal/ads/bbd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbl;->c:Lcom/google/android/gms/internal/ads/bbx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bbl;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bbl;->e:Lcom/google/android/gms/internal/ads/bbh;

    iput p5, p0, Lcom/google/android/gms/internal/ads/bbl;->a:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bbl;->f:Lcom/google/android/gms/internal/ads/bcd;

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/bbl;->g:J

    return-void
.end method
