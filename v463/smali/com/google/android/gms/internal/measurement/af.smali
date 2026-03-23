.class final Lcom/google/android/gms/internal/measurement/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/af;->a:Lcom/google/android/gms/internal/measurement/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/af;->a:Lcom/google/android/gms/internal/measurement/ae;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ae;->f()Lcom/google/android/gms/internal/measurement/bw;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Job execution failed"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
