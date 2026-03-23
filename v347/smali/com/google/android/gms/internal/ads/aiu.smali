.class public final Lcom/google/android/gms/internal/ads/aiu;
.super Lcom/google/android/gms/internal/ads/aix;


# instance fields
.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ahm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zn;IILandroid/view/View;)V
    .locals 7

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aix;-><init>(Lcom/google/android/gms/internal/ads/ahm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zn;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aiu;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiu;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiu;->a:Lcom/google/android/gms/internal/ads/ahm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ahm;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiu;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aiu;->d:Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/ahv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ahv;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/abp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/abp;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ahv;->a:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/abp;->a:Ljava/lang/Long;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/ahv;->b:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/abp;->b:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ahv;->c:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/abp;->c:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiu;->b:Lcom/google/android/gms/internal/ads/zn;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zn;->M:Lcom/google/android/gms/internal/ads/abp;

    :cond_0
    return-void
.end method
