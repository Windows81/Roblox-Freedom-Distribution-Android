.class abstract Lcom/google/android/gms/internal/b/m;
.super Lcom/google/android/gms/common/api/internal/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/o<",
        "Lcom/google/android/gms/internal/b/i;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/f/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/b/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b/m;->a:Lcom/google/android/gms/f/h;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/p;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/f/h;)V

    return-void
.end method

.method protected synthetic a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/f/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/b/i;

    iput-object p2, p0, Lcom/google/android/gms/internal/b/m;->a:Lcom/google/android/gms/f/h;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b/i;->A()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/b/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/b/m;->a(Lcom/google/android/gms/internal/b/e;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/b/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
