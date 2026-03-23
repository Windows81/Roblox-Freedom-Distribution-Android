.class public final Lcom/google/android/gms/internal/ads/air;
.super Lcom/google/android/gms/internal/ads/aix;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ahw;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ahm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zn;IILcom/google/android/gms/internal/ads/ahw;)V
    .locals 7

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aix;-><init>(Lcom/google/android/gms/internal/ads/ahm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zn;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/air;->d:Lcom/google/android/gms/internal/ads/ahw;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/ahw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/air;->e:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/air;->d:Lcom/google/android/gms/internal/ads/ahw;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/air;->b:Lcom/google/android/gms/internal/ads/zn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/air;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/air;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zn;->I:Ljava/lang/Long;

    :cond_0
    return-void
.end method
