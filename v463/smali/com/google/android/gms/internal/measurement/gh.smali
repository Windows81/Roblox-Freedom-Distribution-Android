.class final Lcom/google/android/gms/internal/measurement/gh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/gb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/gb;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gh;->b:Lcom/google/android/gms/internal/measurement/gb;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/gh;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gh;->b:Lcom/google/android/gms/internal/measurement/gb;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/gh;->a:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fy;->F()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/dx;->B()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v3

    const-string v4, "Resetting analytics data (FE)"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->o()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/hy;->v()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->s()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->f()Lcom/google/android/gms/internal/measurement/ds;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ds;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/cy;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ei;->h:Lcom/google/android/gms/internal/measurement/el;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/el;->a(J)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/gb;->q:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/fc;->x()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->s()Lcom/google/android/gms/internal/measurement/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/cy;->u()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->r()Lcom/google/android/gms/internal/measurement/ei;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ei;->d(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->h()Lcom/google/android/gms/internal/measurement/gz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gz;->x()V

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/gb;->b:Z

    return-void
.end method
