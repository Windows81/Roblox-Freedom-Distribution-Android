.class final Lcom/google/android/gms/internal/measurement/hw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/ii;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ht;Lcom/google/android/gms/internal/measurement/ii;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/hw;->a:Lcom/google/android/gms/internal/measurement/ii;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/hw;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hw;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hw;->a:Lcom/google/android/gms/internal/measurement/ii;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hw;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ii;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hw;->a:Lcom/google/android/gms/internal/measurement/ii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->G()V

    return-void
.end method
