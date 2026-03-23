.class final Lcom/google/android/gms/internal/b/k;
.super Lcom/google/android/gms/internal/b/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/b/j;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/b/m;-><init>(Lcom/google/android/gms/internal/b/k;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/b/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/b/l;-><init>(Lcom/google/android/gms/internal/b/k;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/b/e;->a(Lcom/google/android/gms/internal/b/g;)V

    return-void
.end method
