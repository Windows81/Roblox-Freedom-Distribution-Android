.class final synthetic Lcom/google/android/gms/internal/ads/my;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/no;

.field private final b:Lcom/google/android/gms/internal/ads/nd;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/google/android/gms/internal/ads/mn;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/nd;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/mn;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/my;->a:Lcom/google/android/gms/internal/ads/no;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/my;->b:Lcom/google/android/gms/internal/ads/nd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/my;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/my;->d:Lcom/google/android/gms/internal/ads/mn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/my;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/my;->a:Lcom/google/android/gms/internal/ads/no;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/my;->b:Lcom/google/android/gms/internal/ads/nd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/my;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/my;->d:Lcom/google/android/gms/internal/ads/mn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/my;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ms;->a(Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/nd;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/mn;Ljava/util/concurrent/Executor;)V

    return-void
.end method
