.class public final Lcom/google/android/gms/internal/measurement/ap;
.super Lcom/google/android/gms/internal/measurement/ac;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/jq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/jq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/jq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ap;->a:Lcom/google/android/gms/internal/measurement/jq;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->m()Lcom/google/android/gms/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/s;->a()Lcom/google/android/gms/internal/measurement/jq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ap;->a:Lcom/google/android/gms/internal/measurement/jq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/jq;->a(Lcom/google/android/gms/internal/measurement/jq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->q()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/co;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ap;->a:Lcom/google/android/gms/internal/measurement/jq;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/jq;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/co;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ap;->a:Lcom/google/android/gms/internal/measurement/jq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/jq;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/jq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ap;->a:Lcom/google/android/gms/internal/measurement/jq;

    return-object v0
.end method
