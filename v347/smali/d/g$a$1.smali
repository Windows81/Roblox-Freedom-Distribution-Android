.class Ld/g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g$a;->a(Ld/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ld/d;

.field final synthetic b:Ld/g$a;


# direct methods
.method constructor <init>(Ld/g$a;Ld/d;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Ld/g$a$1;->b:Ld/g$a;

    iput-object p2, p0, Ld/g$a$1;->a:Ld/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<TT;>;",
            "Ld/l",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Ld/g$a$1;->b:Ld/g$a;

    iget-object v0, v0, Ld/g$a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ld/g$a$1$1;

    invoke-direct {v1, p0, p2}, Ld/g$a$1$1;-><init>(Ld/g$a$1;Ld/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public a(Ld/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ld/g$a$1;->b:Ld/g$a;

    iget-object v0, v0, Ld/g$a;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ld/g$a$1$2;

    invoke-direct {v1, p0, p2}, Ld/g$a$1$2;-><init>(Ld/g$a$1;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
