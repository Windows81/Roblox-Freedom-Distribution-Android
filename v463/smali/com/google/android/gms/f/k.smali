.class final Lcom/google/android/gms/f/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/f/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/f/w<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/f/a<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/f/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/f/z<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/f/a;Lcom/google/android/gms/f/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/f/a<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/google/android/gms/f/z<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/f/k;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/f/k;->b:Lcom/google/android/gms/f/a;

    iput-object p3, p0, Lcom/google/android/gms/f/k;->c:Lcom/google/android/gms/f/z;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/f/k;)Lcom/google/android/gms/f/z;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/f/k;->c:Lcom/google/android/gms/f/z;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/f/k;)Lcom/google/android/gms/f/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/f/k;->b:Lcom/google/android/gms/f/a;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/f/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/f/g<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/f/k;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/f/l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/f/l;-><init>(Lcom/google/android/gms/f/k;Lcom/google/android/gms/f/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
