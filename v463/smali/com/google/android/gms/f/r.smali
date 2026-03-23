.class final Lcom/google/android/gms/f/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/f/g;

.field private final synthetic b:Lcom/google/android/gms/f/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/f/q;Lcom/google/android/gms/f/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/f/r;->b:Lcom/google/android/gms/f/q;

    iput-object p2, p0, Lcom/google/android/gms/f/r;->a:Lcom/google/android/gms/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/f/r;->b:Lcom/google/android/gms/f/q;

    invoke-static {v0}, Lcom/google/android/gms/f/q;->a(Lcom/google/android/gms/f/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/f/r;->b:Lcom/google/android/gms/f/q;

    invoke-static {v1}, Lcom/google/android/gms/f/q;->b(Lcom/google/android/gms/f/q;)Lcom/google/android/gms/f/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/f/r;->b:Lcom/google/android/gms/f/q;

    invoke-static {v1}, Lcom/google/android/gms/f/q;->b(Lcom/google/android/gms/f/q;)Lcom/google/android/gms/f/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/f/r;->a:Lcom/google/android/gms/f/g;

    invoke-interface {v1, v2}, Lcom/google/android/gms/f/c;->a(Lcom/google/android/gms/f/g;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
