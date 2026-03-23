.class final Lcom/google/android/gms/d/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/d/f;

.field private final synthetic b:Lcom/google/android/gms/d/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/n;Lcom/google/android/gms/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/o;->b:Lcom/google/android/gms/d/n;

    iput-object p2, p0, Lcom/google/android/gms/d/o;->a:Lcom/google/android/gms/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/d/o;->b:Lcom/google/android/gms/d/n;

    invoke-static {v0}, Lcom/google/android/gms/d/n;->a(Lcom/google/android/gms/d/n;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/o;->b:Lcom/google/android/gms/d/n;

    invoke-static {v0}, Lcom/google/android/gms/d/n;->b(Lcom/google/android/gms/d/n;)Lcom/google/android/gms/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/o;->b:Lcom/google/android/gms/d/n;

    invoke-static {v0}, Lcom/google/android/gms/d/n;->b(Lcom/google/android/gms/d/n;)Lcom/google/android/gms/d/c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/d/o;->a:Lcom/google/android/gms/d/f;

    invoke-virtual {v2}, Lcom/google/android/gms/d/f;->e()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/d/c;->a(Ljava/lang/Exception;)V

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
