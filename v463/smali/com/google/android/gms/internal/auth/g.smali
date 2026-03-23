.class final Lcom/google/android/gms/internal/auth/g;
.super Lcom/google/android/gms/internal/auth/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/auth/i<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/c;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/g;->b:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/i;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/l;
    .locals 0

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/google/android/gms/internal/auth/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/auth/h;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth/h;-><init>(Lcom/google/android/gms/common/api/internal/c$b;)V

    new-instance v0, Lcom/google/android/gms/internal/auth/zzay;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/g;->b:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzay;-><init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/auth/o;->a(Lcom/google/android/gms/internal/auth/m;Lcom/google/android/gms/internal/auth/zzay;)V

    return-void
.end method
