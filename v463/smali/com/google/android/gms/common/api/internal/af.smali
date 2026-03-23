.class final Lcom/google/android/gms/common/api/internal/af;
.super Lcom/google/android/gms/common/api/internal/aw;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/internal/d$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ad;Lcom/google/android/gms/common/api/internal/au;Lcom/google/android/gms/common/internal/d$d;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/internal/d$d;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/aw;-><init>(Lcom/google/android/gms/common/api/internal/au;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/internal/d$d;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/d$d;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
