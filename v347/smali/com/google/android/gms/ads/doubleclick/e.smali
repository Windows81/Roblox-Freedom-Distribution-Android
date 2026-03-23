.class public final Lcom/google/android/gms/ads/doubleclick/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/aqo;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/aqo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/e;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/e;->a:Lcom/google/android/gms/internal/ads/aqo;

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/e;->a:Lcom/google/android/gms/internal/ads/aqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/e;->a:Lcom/google/android/gms/internal/ads/aqo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aqo;->a(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/e;->a:Lcom/google/android/gms/internal/ads/aqo;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/d;->a()Lcom/google/android/gms/internal/ads/aqj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aqo;->a(Lcom/google/android/gms/internal/ads/aqj;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/e;->a:Lcom/google/android/gms/internal/ads/aqo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aqo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/e;->a:Lcom/google/android/gms/internal/ads/aqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqo;->b()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/e;->a:Lcom/google/android/gms/internal/ads/aqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqo;->d()V

    return-void
.end method
