.class final Lcom/google/android/gms/internal/ads/alx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ala;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/alv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/alv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/alx;->a:Lcom/google/android/gms/internal/ads/alv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alx;->a:Lcom/google/android/gms/internal/ads/alv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/alv;->b(Lcom/google/android/gms/internal/ads/alv;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alx;->a:Lcom/google/android/gms/internal/ads/alv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/alv;->a(Lcom/google/android/gms/internal/ads/alv;)V

    goto :goto_0
.end method
