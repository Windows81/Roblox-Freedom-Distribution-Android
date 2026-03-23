.class final Lcom/google/android/gms/internal/measurement/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/bd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/bd<",
        "Lcom/google/android/gms/internal/measurement/bq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/ae;

.field private final b:Lcom/google/android/gms/internal/measurement/bq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bp;->a:Lcom/google/android/gms/internal/measurement/ae;

    new-instance p1, Lcom/google/android/gms/internal/measurement/bq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/bq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Lcom/google/android/gms/internal/measurement/bq;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/measurement/bb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Lcom/google/android/gms/internal/measurement/bq;

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Lcom/google/android/gms/internal/measurement/bq;

    iput p2, p1, Lcom/google/android/gms/internal/measurement/bq;->d:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/bp;->a:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ae;->e()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Lcom/google/android/gms/internal/measurement/bq;

    iput p2, p1, Lcom/google/android/gms/internal/measurement/bq;->e:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/bp;->a:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ae;->e()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Lcom/google/android/gms/internal/measurement/bq;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/bq;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Lcom/google/android/gms/internal/measurement/bq;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/bq;->b:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/bp;->b:Lcom/google/android/gms/internal/measurement/bq;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/bq;->c:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/bp;->a:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ae;->e()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
