.class final Lcom/google/android/gms/internal/ads/jh;
.super Lcom/google/android/gms/internal/ads/ji;


# instance fields
.field private final synthetic a:Landroid/os/Bundle;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/jf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jf;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jh;->b:Lcom/google/android/gms/internal/ads/jf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jh;->a:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ji;-><init>(Lcom/google/android/gms/internal/ads/jg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jh;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jf;->r(Lcom/google/android/gms/internal/ads/jf;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/jj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jh;->a:Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/jj;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
