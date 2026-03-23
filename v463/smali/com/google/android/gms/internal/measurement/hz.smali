.class final Lcom/google/android/gms/internal/measurement/hz;
.super Lcom/google/android/gms/internal/measurement/df;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/hy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/hy;Lcom/google/android/gms/internal/measurement/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/hz;->a:Lcom/google/android/gms/internal/measurement/hy;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/df;-><init>(Lcom/google/android/gms/internal/measurement/fz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hz;->a:Lcom/google/android/gms/internal/measurement/hy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/dx;->C()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session started, time"

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ei;->m:Lcom/google/android/gms/internal/measurement/ek;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/ek;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->e()Lcom/google/android/gms/internal/measurement/gb;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "auto"

    const-string v4, "_s"

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/gb;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ei;->n:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->j()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    return-void
.end method
