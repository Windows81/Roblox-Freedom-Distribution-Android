.class public final Lcom/google/android/gms/internal/ads/awu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bbu;

.field private final c:Lcom/google/android/gms/internal/ads/zzang;

.field private final d:Lcom/google/android/gms/ads/internal/bt;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/bt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awu;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/awu;->b:Lcom/google/android/gms/internal/ads/bbu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/awu;->c:Lcom/google/android/gms/internal/ads/zzang;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/awu;->d:Lcom/google/android/gms/ads/internal/bt;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/m;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awu;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzjn;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/awu;->b:Lcom/google/android/gms/internal/ads/bbu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/awu;->c:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/awu;->d:Lcom/google/android/gms/ads/internal/bt;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/bt;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/m;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzjn;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/awu;->b:Lcom/google/android/gms/internal/ads/bbu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/awu;->c:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/awu;->d:Lcom/google/android/gms/ads/internal/bt;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/bt;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/awu;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/awu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/awu;->b:Lcom/google/android/gms/internal/ads/bbu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/awu;->c:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/awu;->d:Lcom/google/android/gms/ads/internal/bt;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/awu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/bt;)V

    return-object v0
.end method
