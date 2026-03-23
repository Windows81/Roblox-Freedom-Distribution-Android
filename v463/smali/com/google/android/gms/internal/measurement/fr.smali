.class final Lcom/google/android/gms/internal/measurement/fr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/zzeu;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/measurement/fe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fe;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fr;->c:Lcom/google/android/gms/internal/measurement/fe;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/fr;->a:Lcom/google/android/gms/internal/measurement/zzeu;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/fr;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:Lcom/google/android/gms/internal/measurement/fe;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fe;->a(Lcom/google/android/gms/internal/measurement/fe;)Lcom/google/android/gms/internal/measurement/ii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:Lcom/google/android/gms/internal/measurement/fe;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/fe;->a(Lcom/google/android/gms/internal/measurement/fe;)Lcom/google/android/gms/internal/measurement/ii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->a:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ii;->b(Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
