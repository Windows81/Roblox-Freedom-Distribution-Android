.class final Lcom/google/android/gms/common/internal/a/i;
.super Lcom/google/android/gms/common/internal/a/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/a/d;Lcom/google/android/gms/common/api/f;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a/k;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/common/internal/a/e;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->A()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/a/g;

    new-instance v0, Lcom/google/android/gms/common/internal/a/d$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/a/d$a;-><init>(Lcom/google/android/gms/common/api/internal/c$b;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/a/g;->a(Lcom/google/android/gms/common/internal/a/f;)V

    return-void
.end method
