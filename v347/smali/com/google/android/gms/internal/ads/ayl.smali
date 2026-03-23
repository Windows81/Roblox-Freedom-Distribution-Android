.class final synthetic Lcom/google/android/gms/internal/ads/ayl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/si;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ayj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ayj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayl;->a:Lcom/google/android/gms/internal/ads/ayj;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/sd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayl;->a:Lcom/google/android/gms/internal/ads/ayj;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/sd;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayw;->a(Landroid/net/Uri;)Z

    return-void
.end method
