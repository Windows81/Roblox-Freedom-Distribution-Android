.class final Lcom/google/android/gms/internal/measurement/gr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/gb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/gb;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gr;->b:Lcom/google/android/gms/internal/measurement/gb;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/gr;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gr;->b:Lcom/google/android/gms/internal/measurement/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ei;->k:Lcom/google/android/gms/internal/measurement/el;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/gr;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gr;->b:Lcom/google/android/gms/internal/measurement/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->B()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/gr;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Minimum session duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
