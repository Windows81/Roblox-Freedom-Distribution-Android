.class abstract Lcom/google/android/gms/internal/measurement/ih;
.super Lcom/google/android/gms/internal/measurement/ig;


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ii;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ig;-><init>(Lcom/google/android/gms/internal/measurement/ii;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ih;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ii;->a(Lcom/google/android/gms/internal/measurement/ih;)V

    return-void
.end method


# virtual methods
.method final M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ih;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final N()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ih;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final O()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ih;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ih;->t()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ih;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->I()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ih;->b:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract t()Z
.end method
