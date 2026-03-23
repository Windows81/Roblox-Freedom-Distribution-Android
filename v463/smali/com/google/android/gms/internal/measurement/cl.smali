.class final Lcom/google/android/gms/internal/measurement/cl;
.super Lcom/google/android/gms/internal/measurement/ab;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/bd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ab;",
        "Lcom/google/android/gms/internal/measurement/bd<",
        "Lcom/google/android/gms/internal/measurement/cm;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/cm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ab;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/cm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/cm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/measurement/bb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    iput p2, p1, Lcom/google/android/gms/internal/measurement/cm;->c:I

    return-void

    :cond_0
    const-string p2, "int configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/cm;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_autoActivityTracking"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    iput p2, p1, Lcom/google/android/gms/internal/measurement/cm;->d:I

    return-void

    :cond_0
    const-string v0, "ga_anonymizeIp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    iput p2, p1, Lcom/google/android/gms/internal/measurement/cm;->e:I

    return-void

    :cond_1
    const-string v0, "ga_reportUncaughtExceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    iput p2, p1, Lcom/google/android/gms/internal/measurement/cm;->f:I

    return-void

    :cond_2
    const-string p2, "bool configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/cm;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/cl;->a:Lcom/google/android/gms/internal/measurement/cm;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/internal/measurement/cm;->b:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/measurement/ab;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p2, "string configuration name not recognized"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/ab;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
