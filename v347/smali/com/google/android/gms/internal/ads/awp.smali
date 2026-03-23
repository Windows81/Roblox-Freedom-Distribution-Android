.class final Lcom/google/android/gms/internal/ads/awp;
.super Lcom/google/android/gms/internal/ads/no;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/no",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/awo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/awo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awp;->a:Lcom/google/android/gms/internal/ads/awo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/no;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awp;->a:Lcom/google/android/gms/internal/ads/awo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awo;->a(Lcom/google/android/gms/internal/ads/awo;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/no;->cancel(Z)Z

    move-result v0

    return v0
.end method
