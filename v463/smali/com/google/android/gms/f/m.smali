.class final Lcom/google/android/gms/f/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/f/b;
.implements Lcom/google/android/gms/f/d;
.implements Lcom/google/android/gms/f/e;
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
        "Lcom/google/android/gms/f/b;",
        "Lcom/google/android/gms/f/d;",
        "Lcom/google/android/gms/f/e<",
        "TTContinuationResult;>;",
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
            "TTResult;",
            "Lcom/google/android/gms/f/g<",
            "TTContinuationResult;>;>;"
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
            "TTResult;",
            "Lcom/google/android/gms/f/g<",
            "TTContinuationResult;>;>;",
            "Lcom/google/android/gms/f/z<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/f/m;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/f/m;->b:Lcom/google/android/gms/f/a;

    iput-object p3, p0, Lcom/google/android/gms/f/m;->c:Lcom/google/android/gms/f/z;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/f/m;)Lcom/google/android/gms/f/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/f/m;->b:Lcom/google/android/gms/f/a;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/f/m;)Lcom/google/android/gms/f/z;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/f/m;->c:Lcom/google/android/gms/f/z;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/f/m;->c:Lcom/google/android/gms/f/z;

    invoke-virtual {v0}, Lcom/google/android/gms/f/z;->f()Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/f/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/f/g<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/f/m;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/f/n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/f/n;-><init>(Lcom/google/android/gms/f/m;Lcom/google/android/gms/f/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/f/m;->c:Lcom/google/android/gms/f/z;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/f/z;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/f/m;->c:Lcom/google/android/gms/f/z;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/f/z;->a(Ljava/lang/Object;)V

    return-void
.end method
