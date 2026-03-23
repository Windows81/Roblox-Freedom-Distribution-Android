.class abstract Lcom/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/c/a/t;

.field final b:Lcom/c/a/w;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I

.field final g:I

.field final h:Landroid/graphics/drawable/Drawable;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/Object;

.field k:Z

.field l:Z


# direct methods
.method constructor <init>(Lcom/c/a/t;Ljava/lang/Object;Lcom/c/a/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/t;",
            "TT;",
            "Lcom/c/a/w;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/c/a/a;->a:Lcom/c/a/t;

    .line 52
    iput-object p3, p0, Lcom/c/a/a;->b:Lcom/c/a/w;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p3, Lcom/c/a/a$a;

    iget-object p1, p1, Lcom/c/a/t;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p0, p2, p1}, Lcom/c/a/a$a;-><init>(Lcom/c/a/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lcom/c/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 55
    iput p4, p0, Lcom/c/a/a;->e:I

    .line 56
    iput p5, p0, Lcom/c/a/a;->f:I

    .line 57
    iput-boolean p10, p0, Lcom/c/a/a;->d:Z

    .line 58
    iput p6, p0, Lcom/c/a/a;->g:I

    .line 59
    iput-object p7, p0, Lcom/c/a/a;->h:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object p8, p0, Lcom/c/a/a;->i:Ljava/lang/String;

    if-eqz p9, :cond_1

    goto :goto_1

    :cond_1
    move-object p9, p0

    .line 61
    :goto_1
    iput-object p9, p0, Lcom/c/a/a;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/c/a/a;->l:Z

    return-void
.end method

.method c()Lcom/c/a/w;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/c/a/a;->b:Lcom/c/a/w;

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/c/a/a;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/c/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/c/a/a;->l:Z

    return v0
.end method

.method g()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/c/a/a;->k:Z

    return v0
.end method

.method h()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/c/a/a;->e:I

    return v0
.end method

.method i()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/c/a/a;->f:I

    return v0
.end method

.method j()Lcom/c/a/t;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/c/a/a;->a:Lcom/c/a/t;

    return-object v0
.end method

.method k()Lcom/c/a/t$e;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/c/a/a;->b:Lcom/c/a/w;

    iget-object v0, v0, Lcom/c/a/w;->r:Lcom/c/a/t$e;

    return-object v0
.end method

.method l()Ljava/lang/Object;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/c/a/a;->j:Ljava/lang/Object;

    return-object v0
.end method
