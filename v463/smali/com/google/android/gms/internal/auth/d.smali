.class final Lcom/google/android/gms/internal/auth/d;
.super Lcom/google/android/gms/internal/auth/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/auth/i<",
        "Lcom/google/android/gms/auth/api/credentials/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/c;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/d;->b:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/i;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/l;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/auth/b;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/google/android/gms/internal/auth/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/auth/e;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth/e;-><init>(Lcom/google/android/gms/internal/auth/d;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/d;->b:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/auth/o;->a(Lcom/google/android/gms/internal/auth/m;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method
