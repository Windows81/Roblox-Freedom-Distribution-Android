.class Ld/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c",
        "<",
        "Ld/b",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Ld/g;


# direct methods
.method constructor <init>(Ld/g;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Ld/g$1;->b:Ld/g;

    iput-object p2, p0, Ld/g$1;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;)Ld/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b",
            "<TR;>;)",
            "Ld/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ld/g$a;

    iget-object v1, p0, Ld/g$1;->b:Ld/g;

    iget-object v1, v1, Ld/g;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Ld/g$a;-><init>(Ljava/util/concurrent/Executor;Ld/b;)V

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ld/g$1;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public synthetic b(Ld/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ld/g$1;->a(Ld/b;)Ld/b;

    move-result-object v0

    return-object v0
.end method
