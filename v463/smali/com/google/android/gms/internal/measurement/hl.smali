.class final Lcom/google/android/gms/internal/measurement/hl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/zzjx;

.field private final synthetic c:Lcom/google/android/gms/internal/measurement/zzdz;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/gz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/gz;ZLcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzdz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/hl;->d:Lcom/google/android/gms/internal/measurement/gz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/hl;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/hl;->b:Lcom/google/android/gms/internal/measurement/zzjx;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/hl;->c:Lcom/google/android/gms/internal/measurement/zzdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hl;->d:Lcom/google/android/gms/internal/measurement/gz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gz;->d(Lcom/google/android/gms/internal/measurement/gz;)Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hl;->d:Lcom/google/android/gms/internal/measurement/gz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->v()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hl;->d:Lcom/google/android/gms/internal/measurement/gz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/hl;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/hl;->b:Lcom/google/android/gms/internal/measurement/zzjx;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/hl;->c:Lcom/google/android/gms/internal/measurement/zzdz;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/gz;->a(Lcom/google/android/gms/internal/measurement/dp;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hl;->d:Lcom/google/android/gms/internal/measurement/gz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gz;->e(Lcom/google/android/gms/internal/measurement/gz;)V

    return-void
.end method
