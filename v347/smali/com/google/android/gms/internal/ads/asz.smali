.class final Lcom/google/android/gms/internal/ads/asz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/asx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/asx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/asz;->a:Lcom/google/android/gms/internal/ads/asx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asz;->a:Lcom/google/android/gms/internal/ads/asx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/asx;)Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asz;->a:Lcom/google/android/gms/internal/ads/asx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/asx;)Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ate;->i()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asz;->a:Lcom/google/android/gms/internal/ads/asx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/asx;)Lcom/google/android/gms/internal/ads/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ate;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asz;->a:Lcom/google/android/gms/internal/ads/asx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/asx;->a(Lcom/google/android/gms/internal/ads/asx;Lcom/google/android/gms/internal/ads/ate;)Lcom/google/android/gms/internal/ads/ate;

    return-void
.end method
