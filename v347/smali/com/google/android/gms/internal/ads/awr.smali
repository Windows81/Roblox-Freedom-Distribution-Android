.class final synthetic Lcom/google/android/gms/internal/ads/awr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/awq;

.field private final b:Lcom/google/android/gms/internal/ads/awj;

.field private final c:Lcom/google/android/gms/internal/ads/no;

.field private final d:Lcom/google/android/gms/internal/ads/zzsg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/awq;Lcom/google/android/gms/internal/ads/awj;Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/zzsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awr;->a:Lcom/google/android/gms/internal/ads/awq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/awr;->b:Lcom/google/android/gms/internal/ads/awj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/awr;->c:Lcom/google/android/gms/internal/ads/no;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/awr;->d:Lcom/google/android/gms/internal/ads/zzsg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awr;->a:Lcom/google/android/gms/internal/ads/awq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awr;->b:Lcom/google/android/gms/internal/ads/awj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/awr;->c:Lcom/google/android/gms/internal/ads/no;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/awr;->d:Lcom/google/android/gms/internal/ads/zzsg;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/awj;->A()Lcom/google/android/gms/internal/ads/awm;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/awm;->a(Lcom/google/android/gms/internal/ads/zzsg;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/no;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Unable to obtain a cache service instance."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/no;->a(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awo;->a(Lcom/google/android/gms/internal/ads/awo;)V

    goto :goto_0
.end method
