.class final Lcom/google/android/gms/internal/measurement/gy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/gv;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/gw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/gw;Lcom/google/android/gms/internal/measurement/gv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gy;->b:Lcom/google/android/gms/internal/measurement/gw;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/gy;->a:Lcom/google/android/gms/internal/measurement/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gy;->b:Lcom/google/android/gms/internal/measurement/gw;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gy;->a:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/gw;->a(Lcom/google/android/gms/internal/measurement/gw;Lcom/google/android/gms/internal/measurement/gv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gy;->b:Lcom/google/android/gms/internal/measurement/gw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/gw;->a:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gy;->b:Lcom/google/android/gms/internal/measurement/gw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fx;->h()Lcom/google/android/gms/internal/measurement/gz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gz;->a(Lcom/google/android/gms/internal/measurement/gv;)V

    return-void
.end method
