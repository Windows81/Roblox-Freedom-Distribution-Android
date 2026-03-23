.class public abstract Lcom/google/android/gms/internal/ads/ajd;
.super Lcom/google/android/gms/internal/ads/aiz;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ajc;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ajc;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.ads.clearcut.IClearcut"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ajc;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/ajc;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/aje;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aje;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
