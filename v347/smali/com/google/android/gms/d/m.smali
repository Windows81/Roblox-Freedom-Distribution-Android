.class final Lcom/google/android/gms/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/d/f;

.field private final synthetic b:Lcom/google/android/gms/d/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/l;Lcom/google/android/gms/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/l;

    iput-object p2, p0, Lcom/google/android/gms/d/m;->a:Lcom/google/android/gms/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/l;

    invoke-static {v0}, Lcom/google/android/gms/d/l;->a(Lcom/google/android/gms/d/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/l;

    invoke-static {v0}, Lcom/google/android/gms/d/l;->b(Lcom/google/android/gms/d/l;)Lcom/google/android/gms/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/m;->b:Lcom/google/android/gms/d/l;

    invoke-static {v0}, Lcom/google/android/gms/d/l;->b(Lcom/google/android/gms/d/l;)Lcom/google/android/gms/d/b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/d/m;->a:Lcom/google/android/gms/d/f;

    invoke-interface {v0, v2}, Lcom/google/android/gms/d/b;->a(Lcom/google/android/gms/d/f;)V

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
