.class public final Lcom/google/android/gms/internal/measurement/ac;
.super Lcom/google/android/gms/internal/measurement/p;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/cd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/r;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/r;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/cd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/cd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/cd;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/s;->a()Lcom/google/android/gms/internal/measurement/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/cd;->a(Lcom/google/android/gms/internal/measurement/cd;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o;->q()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cb;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/cd;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/cb;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/cd;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/cd;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/p;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ac;->a:Lcom/google/android/gms/internal/measurement/cd;

    return-object v0
.end method
