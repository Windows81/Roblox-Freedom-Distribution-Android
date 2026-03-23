.class final Lcom/google/android/gms/internal/ads/aom;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/avg;

.field private final b:Lcom/google/android/gms/internal/ads/bbg;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/amq;Lcom/google/android/gms/internal/ads/avg;Lcom/google/android/gms/internal/ads/bbg;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aom;->a:Lcom/google/android/gms/internal/ads/avg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/bbg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aom;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->a:Lcom/google/android/gms/internal/ads/avg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/avg;->g()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/bbg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bbg;->c:Lcom/google/android/gms/internal/ads/df;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->a:Lcom/google/android/gms/internal/ads/avg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/bbg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bbg;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/avg;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/bbg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bbg;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->a:Lcom/google/android/gms/internal/ads/avg;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/avg;->b(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->a:Lcom/google/android/gms/internal/ads/avg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aom;->b:Lcom/google/android/gms/internal/ads/bbg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bbg;->c:Lcom/google/android/gms/internal/ads/df;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/avg;->a(Lcom/google/android/gms/internal/ads/df;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aom;->a:Lcom/google/android/gms/internal/ads/avg;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/avg;->c(Ljava/lang/String;)V

    goto :goto_2
.end method
