.class final Lcom/google/android/gms/internal/measurement/hf;
.super Lcom/google/android/gms/internal/measurement/df;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/gz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/gz;Lcom/google/android/gms/internal/measurement/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/hf;->a:Lcom/google/android/gms/internal/measurement/gz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/df;-><init>(Lcom/google/android/gms/internal/measurement/fz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hf;->a:Lcom/google/android/gms/internal/measurement/gz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->y()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    return-void
.end method
