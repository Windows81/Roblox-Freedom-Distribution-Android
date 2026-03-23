.class final Lcom/google/android/gms/internal/ads/bay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nr;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/no;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/azx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baw;Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/azx;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bay;->a:Lcom/google/android/gms/internal/ads/no;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bay;->b:Lcom/google/android/gms/internal/ads/azx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bay;->a:Lcom/google/android/gms/internal/ads/no;

    new-instance v1, Lcom/google/android/gms/internal/ads/bak;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bak;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/no;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bay;->b:Lcom/google/android/gms/internal/ads/azx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azx;->c()V

    return-void
.end method
