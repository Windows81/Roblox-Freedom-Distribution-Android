.class final Lcom/google/android/gms/d/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/d/u;

.field private final synthetic b:Ljava/util/concurrent/Callable;


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/v;->a:Lcom/google/android/gms/d/u;

    iget-object v1, p0, Lcom/google/android/gms/d/v;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/u;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/d/v;->a:Lcom/google/android/gms/d/u;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/d/u;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
