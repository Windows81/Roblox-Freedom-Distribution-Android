.class final Lcom/google/android/gms/internal/measurement/fd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/ga;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/fc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fc;Lcom/google/android/gms/internal/measurement/ga;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fd;->b:Lcom/google/android/gms/internal/measurement/fc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/fd;->a:Lcom/google/android/gms/internal/measurement/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fd;->b:Lcom/google/android/gms/internal/measurement/fc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fd;->a:Lcom/google/android/gms/internal/measurement/ga;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/fc;->a(Lcom/google/android/gms/internal/measurement/ga;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fd;->b:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->a()V

    return-void
.end method
