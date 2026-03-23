.class final synthetic Lcom/google/android/gms/internal/ads/azn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azk;

.field private final b:Lcom/google/android/gms/internal/ads/bab;

.field private final c:Lcom/google/android/gms/internal/ads/ayy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/bab;Lcom/google/android/gms/internal/ads/ayy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azn;->a:Lcom/google/android/gms/internal/ads/azk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azn;->b:Lcom/google/android/gms/internal/ads/bab;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azn;->c:Lcom/google/android/gms/internal/ads/ayy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azn;->a:Lcom/google/android/gms/internal/ads/azk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azn;->b:Lcom/google/android/gms/internal/ads/bab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azn;->c:Lcom/google/android/gms/internal/ads/ayy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/bab;Lcom/google/android/gms/internal/ads/ayy;)V

    return-void
.end method
