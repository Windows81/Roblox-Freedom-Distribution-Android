.class final Lcom/google/android/gms/f/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/f/g;

.field private final synthetic b:Lcom/google/android/gms/f/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/f/m;Lcom/google/android/gms/f/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    iput-object p2, p0, Lcom/google/android/gms/f/n;->a:Lcom/google/android/gms/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    invoke-static {v0}, Lcom/google/android/gms/f/m;->a(Lcom/google/android/gms/f/m;)Lcom/google/android/gms/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/f/n;->a:Lcom/google/android/gms/f/g;

    invoke-interface {v0, v1}, Lcom/google/android/gms/f/a;->a(Lcom/google/android/gms/f/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/f/g;
    :try_end_0
    .catch Lcom/google/android/gms/f/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/f/m;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/f/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/f/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/f/e;)Lcom/google/android/gms/f/g;

    sget-object v1, Lcom/google/android/gms/f/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/f/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/f/d;)Lcom/google/android/gms/f/g;

    sget-object v1, Lcom/google/android/gms/f/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/f/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/f/b;)Lcom/google/android/gms/f/g;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    invoke-static {v1}, Lcom/google/android/gms/f/m;->b(Lcom/google/android/gms/f/m;)Lcom/google/android/gms/f/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/f/z;->a(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/f/f;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    invoke-static {v1}, Lcom/google/android/gms/f/m;->b(Lcom/google/android/gms/f/m;)Lcom/google/android/gms/f/z;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/f/f;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/f/z;->a(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/f/n;->b:Lcom/google/android/gms/f/m;

    invoke-static {v1}, Lcom/google/android/gms/f/m;->b(Lcom/google/android/gms/f/m;)Lcom/google/android/gms/f/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/f/z;->a(Ljava/lang/Exception;)V

    return-void
.end method
