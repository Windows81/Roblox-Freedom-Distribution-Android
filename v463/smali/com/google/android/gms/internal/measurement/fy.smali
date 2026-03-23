.class abstract Lcom/google/android/gms/internal/measurement/fy;
.super Lcom/google/android/gms/internal/measurement/fx;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/fx;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/fy;->q:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/fc;->a(Lcom/google/android/gms/internal/measurement/fy;)V

    return-void
.end method


# virtual methods
.method final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fy;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final F()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fy;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fy;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fy;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fy;->q:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fc;->A()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fy;->a:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fy;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/fy;->e_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fy;->q:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fc;->A()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fy;->a:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected e_()V
    .locals 0

    return-void
.end method

.method protected abstract t()Z
.end method
