.class final Lcom/google/android/gms/internal/ads/bbq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/nd;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bbo;Lcom/google/android/gms/internal/ads/nd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbq;->b:Lcom/google/android/gms/internal/ads/bbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbq;->a:Lcom/google/android/gms/internal/ads/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbq;->b:Lcom/google/android/gms/internal/ads/bbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bbo;->e(Lcom/google/android/gms/internal/ads/bbo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/nd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbq;->a:Lcom/google/android/gms/internal/ads/nd;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbq;->b:Lcom/google/android/gms/internal/ads/bbo;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bbo;->e(Lcom/google/android/gms/internal/ads/bbo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbi;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
