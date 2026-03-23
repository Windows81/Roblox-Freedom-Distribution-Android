.class final Lcom/google/android/gms/internal/measurement/et;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/fc;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/dx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/es;Lcom/google/android/gms/internal/measurement/fc;Lcom/google/android/gms/internal/measurement/dx;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/et;->a:Lcom/google/android/gms/internal/measurement/fc;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/et;->b:Lcom/google/android/gms/internal/measurement/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/et;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fc;->f()Lcom/google/android/gms/internal/measurement/eo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/et;->b:Lcom/google/android/gms/internal/measurement/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is null"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/et;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fc;->f()Lcom/google/android/gms/internal/measurement/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/eo;->a()V

    return-void
.end method
