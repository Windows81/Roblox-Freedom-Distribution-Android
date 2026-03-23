.class final Lcom/google/android/gms/internal/ads/oj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/oa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oj;->a:Lcom/google/android/gms/internal/ads/oa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->a:Lcom/google/android/gms/internal/ads/oa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oa;->a(Lcom/google/android/gms/internal/ads/oa;)Lcom/google/android/gms/internal/ads/ol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oj;->a:Lcom/google/android/gms/internal/ads/oa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oa;->a(Lcom/google/android/gms/internal/ads/oa;)Lcom/google/android/gms/internal/ads/ol;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ol;->c()V

    :cond_0
    return-void
.end method
