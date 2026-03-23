.class final Lcom/google/android/gms/internal/ads/axw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ads/aou;

.field b:Lcom/google/android/gms/internal/ads/apk;

.field c:Lcom/google/android/gms/internal/ads/apo;

.field d:Lcom/google/android/gms/internal/ads/asi;

.field e:Lcom/google/android/gms/internal/ads/aor;

.field f:Lcom/google/android/gms/internal/ads/gh;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/ads/internal/m;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/aou;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/axx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/axx;-><init>(Lcom/google/android/gms/internal/ads/aou;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aou;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/apk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/apk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apk;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lcom/google/android/gms/internal/ads/apo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->c:Lcom/google/android/gms/internal/ads/apo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apo;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/asi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/asi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/asi;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/aor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/aor;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/aor;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/gh;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/gh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/gh;)V

    :cond_5
    return-void
.end method
