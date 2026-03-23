.class Lcom/google/android/gms/internal/measurement/ig;
.super Lcom/google/android/gms/internal/measurement/fx;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/cw;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/measurement/ii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ii;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ii;->J()Lcom/google/android/gms/internal/measurement/fc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/fx;-><init>(Lcom/google/android/gms/internal/measurement/fc;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ig;->a:Lcom/google/android/gms/internal/measurement/ii;

    return-void
.end method


# virtual methods
.method public c_()Lcom/google/android/gms/internal/measurement/db;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ig;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->D()Lcom/google/android/gms/internal/measurement/db;

    move-result-object v0

    return-object v0
.end method

.method public d_()Lcom/google/android/gms/internal/measurement/cv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ig;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->E()Lcom/google/android/gms/internal/measurement/cv;

    move-result-object v0

    return-object v0
.end method
