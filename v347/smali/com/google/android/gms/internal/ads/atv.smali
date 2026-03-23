.class final Lcom/google/android/gms/internal/ads/atv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/atj;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/atu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/atu;Lcom/google/android/gms/internal/ads/atj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/atv;->b:Lcom/google/android/gms/internal/ads/atu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/atv;->a:Lcom/google/android/gms/internal/ads/atj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atv;->b:Lcom/google/android/gms/internal/ads/atu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/atv;->a:Lcom/google/android/gms/internal/ads/atj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/atu;->a(Lcom/google/android/gms/internal/ads/atu;Lcom/google/android/gms/internal/ads/atj;)V

    return-void
.end method
