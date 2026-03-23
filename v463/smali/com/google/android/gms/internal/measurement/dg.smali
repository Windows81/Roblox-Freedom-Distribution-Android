.class final Lcom/google/android/gms/internal/measurement/dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/fz;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/df;Lcom/google/android/gms/internal/measurement/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/dg;->b:Lcom/google/android/gms/internal/measurement/df;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/dg;->a:Lcom/google/android/gms/internal/measurement/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dg;->a:Lcom/google/android/gms/internal/measurement/fz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fz;->p()Lcom/google/android/gms/internal/measurement/ex;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ex;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dg;->a:Lcom/google/android/gms/internal/measurement/fz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/fz;->p()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dg;->b:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/dg;->b:Lcom/google/android/gms/internal/measurement/df;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/df;->a(Lcom/google/android/gms/internal/measurement/df;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dg;->b:Lcom/google/android/gms/internal/measurement/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/df;->a()V

    :cond_1
    return-void
.end method
