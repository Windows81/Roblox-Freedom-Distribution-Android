.class final Lcom/google/android/gms/internal/measurement/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/bk;


# instance fields
.field private final synthetic a:Ljava/lang/Runnable;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/ce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ce;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ch;->b:Lcom/google/android/gms/internal/measurement/ce;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ch;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ch;->b:Lcom/google/android/gms/internal/measurement/ce;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ce;->a(Lcom/google/android/gms/internal/measurement/ce;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ch;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
