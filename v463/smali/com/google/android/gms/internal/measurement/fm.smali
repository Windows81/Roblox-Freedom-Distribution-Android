.class final Lcom/google/android/gms/internal/measurement/fm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/measurement/zzed;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/zzdz;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/fe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fe;Lcom/google/android/gms/internal/measurement/zzdz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fm;->d:Lcom/google/android/gms/internal/measurement/fe;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/fm;->a:Lcom/google/android/gms/internal/measurement/zzdz;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/fm;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/fm;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fm;->d:Lcom/google/android/gms/internal/measurement/fe;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fe;->a(Lcom/google/android/gms/internal/measurement/fe;)Lcom/google/android/gms/internal/measurement/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fm;->d:Lcom/google/android/gms/internal/measurement/fe;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fe;->a(Lcom/google/android/gms/internal/measurement/fe;)Lcom/google/android/gms/internal/measurement/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->D()Lcom/google/android/gms/internal/measurement/db;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fm;->a:Lcom/google/android/gms/internal/measurement/zzdz;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzdz;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fm;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
