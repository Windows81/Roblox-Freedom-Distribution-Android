.class public final Lcom/google/android/gms/internal/measurement/bi;
.super Lcom/google/android/gms/internal/measurement/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/kl;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/s;->b()Lcom/google/android/gms/internal/measurement/kl;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/bi;->b()Lcom/google/android/gms/internal/measurement/kl;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/measurement/kl;->b:I

    iget v0, v0, Lcom/google/android/gms/internal/measurement/kl;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
