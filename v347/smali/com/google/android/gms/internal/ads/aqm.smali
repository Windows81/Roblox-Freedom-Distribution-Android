.class final Lcom/google/android/gms/internal/ads/aqm;
.super Lcom/google/android/gms/internal/ads/aoq;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aql;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/aql;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aoq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/aql;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aql;->a(Lcom/google/android/gms/internal/ads/aql;)Lcom/google/android/gms/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/aql;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aql;->l()Lcom/google/android/gms/internal/ads/aqc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/internal/ads/aqc;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aoq;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/aql;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aql;->a(Lcom/google/android/gms/internal/ads/aql;)Lcom/google/android/gms/ads/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/aql;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aql;->l()Lcom/google/android/gms/internal/ads/aqc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/j;->a(Lcom/google/android/gms/internal/ads/aqc;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aoq;->onAdLoaded()V

    return-void
.end method
