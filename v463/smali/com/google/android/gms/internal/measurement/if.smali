.class final Lcom/google/android/gms/internal/measurement/if;
.super Lcom/google/android/gms/internal/measurement/df;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/ii;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/ie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ie;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/if;->b:Lcom/google/android/gms/internal/measurement/ie;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/if;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/df;-><init>(Lcom/google/android/gms/internal/measurement/fz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/if;->b:Lcom/google/android/gms/internal/measurement/ie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ie;->u()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/if;->b:Lcom/google/android/gms/internal/measurement/ie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/if;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->G()V

    return-void
.end method
