.class public abstract Lcom/google/android/gms/internal/ads/om;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ph;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/ov;

.field protected final b:Lcom/google/android/gms/internal/ads/pf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ov;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ov;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/om;->a:Lcom/google/android/gms/internal/ads/ov;

    new-instance v0, Lcom/google/android/gms/internal/ads/pf;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/pf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ph;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/om;->b:Lcom/google/android/gms/internal/ads/pf;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(FF)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/ads/ol;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method
