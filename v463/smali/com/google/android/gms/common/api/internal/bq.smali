.class final Lcom/google/android/gms/common/api/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bq;->a:Lcom/google/android/gms/common/api/internal/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bq;->a:Lcom/google/android/gms/common/api/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bp;->a(Lcom/google/android/gms/common/api/internal/bp;)Lcom/google/android/gms/common/api/internal/bt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/bt;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
