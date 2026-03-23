.class final Lcom/google/android/gms/internal/measurement/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ax;


# instance fields
.field private final synthetic a:Ljava/lang/Runnable;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/br;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/br;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bu;->b:Lcom/google/android/gms/internal/measurement/br;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/bu;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bu;->b:Lcom/google/android/gms/internal/measurement/br;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/br;->a(Lcom/google/android/gms/internal/measurement/br;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/bu;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
