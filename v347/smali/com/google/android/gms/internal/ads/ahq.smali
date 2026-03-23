.class final Lcom/google/android/gms/internal/ads/ahq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ahm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ahm;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahq;->c:Lcom/google/android/gms/internal/ads/ahm;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ahq;->a:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ahq;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahq;->c:Lcom/google/android/gms/internal/ads/ahm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ahq;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ahq;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ahm;->b(IZ)Lcom/google/android/gms/internal/ads/zn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ahq;->c:Lcom/google/android/gms/internal/ads/ahm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ahm;->a(Lcom/google/android/gms/internal/ads/ahm;Lcom/google/android/gms/internal/ads/zn;)Lcom/google/android/gms/internal/ads/zn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ahq;->a:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ahm;->a(ILcom/google/android/gms/internal/ads/zn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahq;->c:Lcom/google/android/gms/internal/ads/ahm;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ahq;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ahq;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ahm;->a(IZ)V

    :cond_0
    return-void
.end method
