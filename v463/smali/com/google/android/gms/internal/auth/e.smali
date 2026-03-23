.class final Lcom/google/android/gms/internal/auth/e;
.super Lcom/google/android/gms/internal/auth/a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/auth/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/e;->a:Lcom/google/android/gms/internal/auth/d;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/e;->a:Lcom/google/android/gms/internal/auth/d;

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/auth/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/d;->b(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/e;->a:Lcom/google/android/gms/internal/auth/d;

    new-instance v1, Lcom/google/android/gms/internal/auth/b;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/auth/b;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/d;->b(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method
