.class final Lcom/google/android/gms/d/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/d/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/k;->a:Lcom/google/android/gms/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/d/k;->a:Lcom/google/android/gms/d/j;

    invoke-static {v0}, Lcom/google/android/gms/d/j;->a(Lcom/google/android/gms/d/j;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/k;->a:Lcom/google/android/gms/d/j;

    invoke-static {v0}, Lcom/google/android/gms/d/j;->b(Lcom/google/android/gms/d/j;)Lcom/google/android/gms/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/k;->a:Lcom/google/android/gms/d/j;

    invoke-static {v0}, Lcom/google/android/gms/d/j;->b(Lcom/google/android/gms/d/j;)Lcom/google/android/gms/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/d/a;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
