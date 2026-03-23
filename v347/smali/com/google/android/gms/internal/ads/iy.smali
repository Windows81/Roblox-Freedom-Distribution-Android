.class public abstract Lcom/google/android/gms/internal/ads/iy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/kf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/kf",
        "<",
        "Lcom/google/android/gms/internal/ads/nd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/iz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/iz;-><init>(Lcom/google/android/gms/internal/ads/iy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/iy;->c:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/iz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/iz;-><init>(Lcom/google/android/gms/internal/ads/iy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->a:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/iy;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/iy;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iy;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/iy;->b_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract b_()V
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/iy;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jk;->b(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jk;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/nd;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/iy;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jk;->b(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iy;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jk;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    goto :goto_0
.end method
