.class public Lcom/google/android/gms/d/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/d/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/d/u",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/d/u;

    invoke-direct {v0}, Lcom/google/android/gms/d/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/g;->a:Lcom/google/android/gms/d/u;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/d/f",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:Lcom/google/android/gms/d/u;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:Lcom/google/android/gms/d/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/u;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:Lcom/google/android/gms/d/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/u;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:Lcom/google/android/gms/d/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/u;->b(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:Lcom/google/android/gms/d/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/u;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
