.class public final Lcom/google/android/gms/internal/ads/qw;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/qz;",
        ":",
        "Lcom/google/android/gms/internal/ads/rh;",
        ":",
        "Lcom/google/android/gms/internal/ads/rk;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qy;

.field private final b:Lcom/google/android/gms/internal/ads/qz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/qz;Lcom/google/android/gms/internal/ads/qy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/qy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qw;->a:Lcom/google/android/gms/internal/ads/qy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qw;->b:Lcom/google/android/gms/internal/ads/qz;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/qd;)Lcom/google/android/gms/internal/ads/qw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qd;",
            ")",
            "Lcom/google/android/gms/internal/ads/qw",
            "<",
            "Lcom/google/android/gms/internal/ads/qd;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/qw;

    new-instance v1, Lcom/google/android/gms/internal/ads/qx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/qx;-><init>(Lcom/google/android/gms/internal/ads/qd;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/qw;-><init>(Lcom/google/android/gms/internal/ads/qz;Lcom/google/android/gms/internal/ads/qy;)V

    return-object v0
.end method
