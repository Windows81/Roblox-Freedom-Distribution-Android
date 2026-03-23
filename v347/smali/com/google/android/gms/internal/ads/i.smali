.class final Lcom/google/android/gms/internal/ads/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i;->a:Lcom/google/android/gms/internal/ads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i;->a:Lcom/google/android/gms/internal/ads/g;

    const-string v1, "User canceled the download."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/n;->a(Ljava/lang/String;)V

    return-void
.end method
