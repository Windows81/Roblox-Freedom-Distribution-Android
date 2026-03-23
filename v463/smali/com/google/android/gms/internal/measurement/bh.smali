.class final Lcom/google/android/gms/internal/measurement/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/bg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bg;->a(Lcom/google/android/gms/internal/measurement/bg;)Lcom/google/android/gms/internal/measurement/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ae;->g()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bg;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bg;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/bg;->a(Lcom/google/android/gms/internal/measurement/bg;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bg;->a()V

    :cond_1
    return-void
.end method
