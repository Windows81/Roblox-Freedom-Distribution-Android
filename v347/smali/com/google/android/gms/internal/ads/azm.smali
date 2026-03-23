.class final synthetic Lcom/google/android/gms/internal/ads/azm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ayz;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azk;

.field private final b:Lcom/google/android/gms/internal/ads/bab;

.field private final c:Lcom/google/android/gms/internal/ads/ayy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/bab;Lcom/google/android/gms/internal/ads/ayy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azm;->a:Lcom/google/android/gms/internal/ads/azk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azm;->b:Lcom/google/android/gms/internal/ads/bab;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azm;->c:Lcom/google/android/gms/internal/ads/ayy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azm;->a:Lcom/google/android/gms/internal/ads/azk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azm;->b:Lcom/google/android/gms/internal/ads/bab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azm;->c:Lcom/google/android/gms/internal/ads/ayy;

    sget-object v3, Lcom/google/android/gms/internal/ads/jm;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/ads/azn;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/azn;-><init>(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/bab;Lcom/google/android/gms/internal/ads/ayy;)V

    sget v0, Lcom/google/android/gms/internal/ads/azv;->b:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
